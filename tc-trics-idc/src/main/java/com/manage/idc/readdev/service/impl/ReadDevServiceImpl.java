package com.manage.idc.readdev.service.impl;

import com.manage.idc.common.entiy.IdcConstant;
import com.manage.idc.common.entiy.ResultResponse;
import com.manage.idc.common.enums.TaskState;
import com.manage.idc.common.service.RedisService;
import com.manage.idc.common.utils.DataSetUtile;
import com.manage.idc.common.utils.IdGen;
import com.manage.idc.device.domain.Res;
import com.manage.idc.device.mapper.ResMapper;
import com.manage.idc.log.domain.AlarmsTaskLog;
import com.manage.idc.log.mapper.AlarmsLogMapper;
import com.manage.idc.readdev.domain.SysDevUser;
import com.manage.idc.readdev.mapper.SysDevUserMapper;
import com.manage.idc.readdev.service.ReadDevService;
import com.manage.idc.system.domain.*;
import com.manage.idc.system.mapper.*;
import com.manage.idc.task.domain.AllocationTaskDesc;
import com.manage.idc.task.domain.BorrowTaskDesc;
import com.manage.idc.task.domain.RepairTaskDesc;
import com.manage.idc.task.domain.ScrapTaskDesc;
import com.manage.idc.task.mapper.AllocationTaskDescMapper;
import com.manage.idc.task.mapper.BorrowTaskDescMapper;
import com.manage.idc.task.mapper.RepairTaskDescMapper;
import com.manage.idc.task.mapper.ScrapTaskDescMapper;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.xml.crypto.Data;
import java.lang.reflect.Array;
import java.util.*;

@Service
@Transactional
public class ReadDevServiceImpl implements ReadDevService {

    private static Object lock = new Object();

    @Autowired
    private SysDevUserMapper sysDevUserMapper;

    @Autowired
    private SysOrgMapper sysOrgMapper;

    @Autowired
    private RoomMapper roomMapper;

    @Autowired
    private SysUserMapper sysUserMapper;


    @Autowired
    private BorrowTaskDescMapper borrowTaskDescMapper;

    @Autowired
    private AllocationTaskDescMapper allocationTaskDescMapper;

    @Autowired
    private ResMapper resMapper;

    @Autowired
    private AlarmsLogRoleMapper alarmsLogRoleMapper;


    @Autowired
    private RepairTaskDescMapper repairTaskDescMapper;


    @Autowired
    private AlarmsLogMapper alarmsLogMapper;


    @Autowired
    private ScrapTaskDescMapper scrapTaskDescMapper;


    @Autowired
    private RedisService redisService;


    @Autowired
    private SysParamMapper sysParamMapper;

    @Override
    public ResultResponse login(SysDevUser user) {
        SysDevUser devUser = sysDevUserMapper.selectOne(user);

        if(null == devUser){
            return DataSetUtile.setErrorResultMessage("用户名或密码输入错误!");
        }else{
            devUser.setLoginStatus(IdcConstant.DEV_USER_LOGIN.LOGIN);
            sysDevUserMapper.updateByPrimaryKey(devUser);
            SysParam sysParam = new SysParam();
            sysParam.setType("readDevProp");
            sysParam.setSysKey("sendTime");
            sysParam.setIsDel(IdcConstant.SYSTEM_ISDEL.NOT_DEL);
            sysParam = sysParamMapper.selectOne(sysParam);

            if(null != sysParam){
                devUser.setSendTime(Long.parseLong(sysParam.getSysValue())*1000);
            }else{
                devUser.setSendTime(Long.valueOf (10*1000));
            }
            devUser.setLoginStatus(IdcConstant.DEV_USER_LOGIN.LOGIN);
            return DataSetUtile.setSuccessResult(devUser);
        }

    }


    @Override
    public void logout(SysDevUser user) {
        user.setLoginStatus(IdcConstant.DEV_USER_LOGIN.NOT_LOGIN);
        user.setUpdatedTime(new Date());
        sysDevUserMapper.updateByPrimaryKey(user);
    }


    @Override
    public String checkMassage(String tid, String roomId) {
        int actionCount = 0;
        int state = 2;
        String result = "0";

        //获取对应设备
        Res res = new Res();
        res.setTid(tid);
        res.setIsDel(IdcConstant.SYSTEM_ISDEL.NOT_DEL);
        res = resMapper.selectOne(res);


        String resName = "";
        String resOrgName = "";
        String resRoomName = "";
        if(res != null){
            resName = res.getName();
            //设备源机房
            Room room = new Room();
            room.setId(res.getRoomId());
            resRoomName = roomMapper.selectOne(room).getName();

            //设备源机构
            SysOrg sysOrg = new SysOrg();
            sysOrg.setId(res.getOrgId());
            resOrgName = sysOrgMapper.selectOne(sysOrg).getName();
        }else{
            return result;
        }



        Long id = res.getId();
        Integer count = null;


        //synchronized (lock){
            String key = id+"_"+roomId;

            String roomCount = redisService.get(key);

            //当前机房扫描该设备次数
            if(roomCount != null){
                count = Integer.parseInt(roomCount) + 1;
            }else{
                count = 1;
            }

            redisService.set(key,count+"");
        //}

        //扫描机房
        Room room1 = new Room();
        room1.setId(Long.parseLong(roomId));
        room1.setIsDel(IdcConstant.SYSTEM_ISDEL.NOT_DEL);
        room1 = roomMapper.selectOne(room1);


        //扫描机构
        SysOrg org = new SysOrg();
        org.setId(room1.getOrgId());
        org.setIsDel(IdcConstant.SYSTEM_ISDEL.NOT_DEL);
        org = sysOrgMapper.selectOne(org);


        //去向机房
        Long goRoomId = null;
        //去向机构
        Long goOrgId = null;


        String task = "";


        //借调
        BorrowTaskDesc desc = new BorrowTaskDesc();
        desc.setResId(res.getId());
        desc.setState(TaskState.CONDUCT_TASK.getState());
        desc.setIsDel(IdcConstant.SYSTEM_ISDEL.NOT_DEL);
        desc = borrowTaskDescMapper.selectOne(desc);

        if(desc != null){
            goRoomId = desc.getEndRoom();
            goOrgId = desc.getEndOrgId();
            task = "["+desc.getTaskName()+"]借用任务进行中";
        }

        //调拨
        AllocationTaskDesc allocationTaskDesc = new AllocationTaskDesc();
        allocationTaskDesc.setResId(res.getId());
        allocationTaskDesc.setState(TaskState.CONDUCT_TASK.getState());
        allocationTaskDesc.setIsDel(IdcConstant.SYSTEM_ISDEL.NOT_DEL);
        allocationTaskDesc = allocationTaskDescMapper.selectOne(allocationTaskDesc);

        if(allocationTaskDesc != null){
            goRoomId = allocationTaskDesc.getEndRoom();
            goOrgId = allocationTaskDesc.getEndOrgId();
            task = "["+allocationTaskDesc.getTaskName()+"]调拨任务进行中";
        }

        //维修
        RepairTaskDesc repairTaskDesc = new RepairTaskDesc();
        repairTaskDesc.setResId(res.getId());
        repairTaskDesc.setIsDel(IdcConstant.SYSTEM_ISDEL.NOT_DEL);
        repairTaskDesc.setState(TaskState.CONDUCT_TASK.getState());
        repairTaskDesc = repairTaskDescMapper.selectOne(repairTaskDesc);

        if(repairTaskDesc != null){
            task = "["+repairTaskDesc.getTaskName()+"]维修任务进行中";
        }


        //报废
        ScrapTaskDesc scrapTaskDesc = new ScrapTaskDesc();
        scrapTaskDesc.setResId(res.getId());
        scrapTaskDesc.setState(TaskState.CONDUCT_TASK.getState());
        scrapTaskDesc.setIsDel(IdcConstant.SYSTEM_ISDEL.NOT_DEL);
        scrapTaskDesc = scrapTaskDescMapper.selectOne(scrapTaskDesc);

        if(scrapTaskDesc != null){
            task = "["+scrapTaskDesc.getTaskName()+"]报废任务进行中";
        }

        String action = "";

        Long resRoomId = res.getRoomId();

        //扫描到的机房基数为带出，偶数为带入，其他则相反
        if(roomId.equals(resRoomId.toString())){
            if(count%2 == 0){
                action = "带入";
                actionCount = 1;
            }else{
                action = "带出";
                actionCount = 0;
            }
        }else{
            if(count%2 == 0){
                action = "带出";
                actionCount = 0;
            }else{
                action = "带入";
                actionCount = 1;
            }
        }


        String statc = "";


        Long roomId3rd = null;
        Long orgId3rd = null;

        //拥有报废或维修日志为都为正常带出带入
        if(repairTaskDesc != null || scrapTaskDesc != null){
            statc = "[正常]";
            //状态
            state = IdcConstant.ALARMS_STATE.NORMAL;
        }else{
            if(goRoomId != null && (roomId.equals(goRoomId.toString()) || roomId.equals(res.getRoomId().toString()))){
                statc = "[正常]";
                //状态
                state = IdcConstant.ALARMS_STATE.NORMAL;
            }else{
                //第三方机房
                roomId3rd = Long.parseLong(roomId);
                statc = "[异常]";
                result = "1";
                //状态
                state = IdcConstant.ALARMS_STATE.NOT_RELIEVE;
            }
        }

        StringBuffer warningInfo = new StringBuffer(statc);

        /*String goRoomName = "";

        String goOrgName = "";*/


        /*if(roomId3rd != null){
            //第三方机房
            Room room = new Room();
            room.setId(roomId3rd);
            goRoomName = roomMapper.selectOne(room).getName();

            //第三方机构
            SysOrg sysOrg = new SysOrg();
            sysOrg.setId(res.getOrgId());
            goOrgName = sysOrgMapper.selectOne(sysOrg).getName();

        }else if(goRoomId != null){
            Room room = new Room();
            room.setId(goRoomId);
            goRoomName = roomMapper.selectOne(room).getName();


            SysOrg sysOrg = new SysOrg();
            sysOrg.setId(res.getOrgId());
            goOrgName = sysOrgMapper.selectOne(sysOrg).getName();
        }*/

       /* if(StringUtils.isNotEmpty(goRoomName)){
            warningInfo .append("["+org.getName()+"]机构下["+room1.getName()+"]机房，") ;
        }else{
            warningInfo .append("["+resOrgName+"]机构下["+resOrgName+"]机房，");
        }*/


        warningInfo .append("["+room1.getName()+"]机房检测到，["+resOrgName+"]机构下["+resRoomName+"]机房中的"+resName+"设备被"+action);


        if(StringUtils.isNotEmpty(task)){
            warningInfo.append(":"+task);
        }else{
            warningInfo.append("。");
        }


       /* List<Long> userList = new ArrayList<>();
        List<Long> handleUserList = new ArrayList<>();*/


       /* List<Long> resRole = alarmsLogRoleMapper.selectRoleIdByOrgId(res.getOrgId());
        Map<String, Object> resRoleMap  = new HashMap<>();
        resRoleMap.put("roleIds",resRole);
        resRoleMap.put("orgId",res.getOrgId());
        handleUserList.addAll(sysUserMapper.selectUserIdByRole(resRoleMap));*/


        /*if(goOrgId != null){
            List<Long> goRole = alarmsLogRoleMapper.selectRoleIdByOrgId(goOrgId);
            Map<String, Object> goRoleMap  = new HashMap<>();
            goRoleMap.put("roleIds",resRole);
            goRoleMap.put("orgId",goOrgId);
            userList.addAll(sysUserMapper.selectUserIdByRole(goRoleMap));
        }*/


        /*if(roomId3rd != null){
            //第三方机房
            Room room = new Room();
            room.setId(roomId3rd);
            room= roomMapper.selectOne(room);


            List<Long> role3rd = alarmsLogRoleMapper.selectRoleIdByOrgId(room.getOrgId());
            Map<String, Object> role3rdMap  = new HashMap<>();
            role3rdMap.put("roleIds",role3rd);
            role3rdMap.put("orgId",room.getOrgId());
            userList.addAll(sysUserMapper.selectUserIdByRole(role3rdMap));
        }*/




        /*for (Long userId:
                userList) {
            AlarmsLogUser alarmsLogUser = new AlarmsLogUser();
            alarmsLogUser.setId(IdGen.getUUId());
            alarmsLogUser.setUserId(userId);
            alarmsLogUser.setFeedBackFlag(IdcConstant.ALARMS_LOG_FEEBBACK_FLAG.NOT);
        }

        for (Long userId:
                handleUserList) {
            AlarmsLogUser alarmsLogUser = new AlarmsLogUser();
            alarmsLogUser.setId(IdGen.getUUId());
            alarmsLogUser.setUserId(userId);
            alarmsLogUser.setFeedBackFlag(IdcConstant.ALARMS_LOG_FEEBBACK_FLAG.IS);
        }*/


        AlarmsTaskLog alarmsTaskLog = new AlarmsTaskLog();
        alarmsTaskLog.setId(IdGen.getUUId());
        alarmsTaskLog.setResId(res.getId());
        alarmsTaskLog.setOrgId(room1.getOrgId());
        alarmsTaskLog.setRoomId(room1.getId());
        alarmsTaskLog.setState(state);
        alarmsTaskLog.setAction(actionCount);
        alarmsTaskLog.setRemark(warningInfo.toString());
        alarmsTaskLog.setCreateTime(new Date());

        alarmsLogMapper.insertSelective(alarmsTaskLog);




/*






        Room room = new Room();


        room.setId(Long.parseLong(roomId));



        room = roomMapper.selectOne(room);




        List<Long> ids3rd = alarmsLogRoleMapper.selectRoleIdByOrgId(room.getOrgId());
        Map<String, Object> map3rd  = new HashMap<>();
        map3rd.put("roleIds",ids3rd);
        map3rd.put("orgId",room.getOrgId());
        List<Long> user3rd = sysUserMapper.selectUserIdByRole(map3rd);

        //无借调任务或调拨任务视为报警
        if(desc != null || allocationTaskDesc != null || repairTaskDesc != null || scrapTaskDesc != null){
            if(desc != null){
                //借调开始机房
                Long borrowTaskStartRoom = desc.getStartRoom();
                //借调目的机房
                Long borrowTaskEndRoom = desc.getEndRoom();
                //借调开始机构
                Long borrowTaskStartOrgId = desc.getStartOrgId();
                //借调目的机构
                Long borrowTaskEndOrgId = desc.getEndOrgId();

                List<Long> startIds = alarmsLogRoleMapper.selectRoleIdByOrgId(borrowTaskStartOrgId);
                Map<String, Object> startMap = new HashMap<>();
                startMap.put("roleIds",startIds);
                startMap.put("orgId",borrowTaskStartOrgId);
                List<Long> startUser = sysUserMapper.selectUserIdByRole(startMap);


                List<Long> endIds = alarmsLogRoleMapper.selectRoleIdByOrgId(borrowTaskEndOrgId);
                Map<String, Object> endMap  = new HashMap<>();
                endMap.put("roleIds",endIds);
                endMap.put("orgId",borrowTaskStartOrgId);
                List<Long> endUser = sysUserMapper.selectUserIdByRole(startMap);



                if(roomId.equals(borrowTaskStartRoom) || roomId.equals(borrowTaskEndRoom)){
                    state = IdcConstant.ALARMS_STATE.NORMAL;
                    */
/*if(roomId.equals(borrowTaskStartRoom) ){
                        warningInfo = "借调任务:"+desc.getTaskName()+"下"+desc.getResName()+"设备被带出";
                        //原机构
                        List<Long> roleIds = alarmsLogRoleMapper.selectRoleIdByOrgId(res.getOrgId());
                        Map<String, Object> map = new HashMap<>();
                        map.put("roleIds",roleIds);
                        map.put("orgId",res.getOrgId());
                        handleUserList.addAll(sysUserMapper.selectUserIdByRole(map));
                    }
                    if(roomId.equals(borrowTaskEndRoom) ){
                        Room room = new Room();
                        room.setId(borrowTaskEndOrgId);
                        room = roomMapper.selectOne(room);
                        warningInfo = "借调任务:"+desc.getTaskName()+"下"+desc.getResName()+"设备被带入"+room.getName()+"机房";
                        //带入机构
                        List<Long> roleIds = alarmsLogRoleMapper.selectRoleIdByOrgId(borrowTaskEndOrgId);
                        Map<String, Object> map = new HashMap<>();
                        map.put("roleIds",roleIds);
                        map.put("orgId",borrowTaskEndOrgId);
                        handleUserList.addAll(sysUserMapper.selectUserIdByRole(map));
                    }*//*

                    warningInfo = "调拨任务中："+room.getName()+"检测到"+res.getName()+"信息[正常]]";
                    handleUserList.addAll(startUser);
                    handleUserList.addAll(endUser);
                }else{  //告警
                    result = "1";
                    state = IdcConstant.ALARMS_STATE.NOT_RELIEVE;
                    warningInfo = "调拨任务中："+room.getName()+"检测到"+res.getName()+"信息[异常]]";
                    userList.addAll(startUser);
                    userList.addAll(endUser);
                    handleUserList.addAll(user3rd);


                   */
/* List<Long> roleIds = alarmsLogRoleMapper.selectRoleIdByOrgId(res.getOrgId());
                    Map<String, Object> map = new HashMap<>();
                    map.put("roleIds",roleIds);
                    map.put("orgId",res.getOrgId());
                    handleUserList.addAll(sysUserMapper.selectUserIdByRole(map));*//*



                    */
/*if(!roomId.equals(borrowTaskStartRoom)){
                        //本机房
                        List<Long> roleIds = alarmsLogRoleMapper.selectRoleIdByOrgId(res.getOrgId());
                        Map<String, Object> map = new HashMap<>();
                        map.put("roleIds",roleIds);
                        map.put("orgId",res.getOrgId());
                        userList.addAll(sysUserMapper.selectUserIdByRole(map));

                        //任务目标机房
                        roleIds = alarmsLogRoleMapper.selectRoleIdByOrgId(borrowTaskEndOrgId);
                        map = new HashMap<>();
                        map.put("roleIds",roleIds);
                        map.put("orgId",borrowTaskEndOrgId);
                        userList.addAll(sysUserMapper.selectUserIdByRole(map));

                        //被搬入的机房
                        Room room = new Room();
                        room.setId(Long.parseLong(roomId));
                        room = roomMapper.selectOne(room);
                        roleIds = alarmsLogRoleMapper.selectRoleIdByOrgId(room.getOrgId());
                        map = new HashMap<>();
                        map.put("roleIds",roleIds);
                        map.put("orgId",room.getOrgId());
                        handleUserList.addAll(sysUserMapper.selectUserIdByRole(map));

                        warningInfo = "借调任务:"+desc.getTaskName()+"下"+desc.getResName()+"设备被带入"+room.getName()+"机房";

                    }else{
                        warningInfo = "设备非法带出";

                        Room room = new Room();
                        room.setId(res.getRoomId());
                        room = roomMapper.selectOne(room);

                        //本机房
                        List<Long> roleIds = alarmsLogRoleMapper.selectRoleIdByOrgId(res.getOrgId());
                        Map<String, Object> map = new HashMap<>();
                        map.put("roleIds",roleIds);
                        map.put("orgId",res.getOrgId());
                        handleUserList.addAll(sysUserMapper.selectUserIdByRole(map));

                        warningInfo = "借调任务:"+desc.getTaskName()+"下"+desc.getResName()+"设备被带出"+room.getName()+"机房";
                    }*//*

                }
            }
            if(allocationTaskDesc != null){
                //调拨目的地机构
                Long allocationTaskStartRoom = allocationTaskDesc.getStartRoom();
                Long allocationTaskEndRoom = allocationTaskDesc.getEndRoom();

                Long allocationTaskStartOrgId = allocationTaskDesc.getStartOrgId();
                Long allocationTaskEndOrgId = allocationTaskDesc.getEndOrgId();


                List<Long> startIds = alarmsLogRoleMapper.selectRoleIdByOrgId(allocationTaskStartOrgId);
                Map<String, Object> startMap = new HashMap<>();
                startMap.put("roleIds",startIds);
                startMap.put("orgId",allocationTaskStartOrgId);
                List<Long> startUser = sysUserMapper.selectUserIdByRole(startMap);


                List<Long> endIds = alarmsLogRoleMapper.selectRoleIdByOrgId(allocationTaskEndOrgId);
                Map<String, Object> endMap  = new HashMap<>();
                endMap.put("roleIds",endIds);
                endMap.put("orgId",allocationTaskEndOrgId);
                List<Long> endUser = sysUserMapper.selectUserIdByRole(startMap);

                if(roomId.equals(allocationTaskStartRoom) || roomId.equals(allocationTaskEndRoom)){
                    state = IdcConstant.ALARMS_STATE.NORMAL;
                    warningInfo = "调拨任务中："+room.getName()+"检测到"+res.getName()+"信息[正常]]";
                    handleUserList.addAll(startUser);
                    handleUserList.addAll(endUser);
                    */
/*if(roomId.equals(allocationTaskStartRoom)){
                        //原机房
                        warningInfo = "调拨任务:"+allocationTaskDesc.getTaskName()+"下"+allocationTaskDesc.getResName()+"设备被带出"+allocationTaskDesc.getRoomName()+"机房";
                        List<Long> roleIds = alarmsLogRoleMapper.selectRoleIdByOrgId(res.getOrgId());
                        Map<String, Object> map = new HashMap<>();
                        map.put("roleIds",roleIds);
                        map.put("orgId",res.getOrgId());
                        handleUserList.addAll(sysUserMapper.selectUserIdByRole(map));
                    }
                    if(roomId.equals(allocationTaskEndRoom) ){
                        //带入机房
                        Room room = new Room();
                        room.setId(allocationTaskEndOrgId);
                        room = roomMapper.selectOne(room);

                        warningInfo = "调拨任务:"+allocationTaskDesc.getTaskName()+"下"+allocationTaskDesc.getResName()+"设备被带入"+room.getName()+"机房";
                        List<Long> roleIds = alarmsLogRoleMapper.selectRoleIdByOrgId(allocationTaskEndOrgId);
                        Map<String, Object> map = new HashMap<>();
                        map.put("roleIds",roleIds);
                        map.put("orgId",allocationTaskEndOrgId);
                        handleUserList.addAll(sysUserMapper.selectUserIdByRole(map));
                    }*//*

                }else{  //告警
                    result = "1";
                    state = IdcConstant.ALARMS_STATE.NOT_RELIEVE;
                    warningInfo = "调拨任务中："+room.getName()+"检测到"+res.getName()+"信息[异常]]";
                    userList.addAll(startUser);
                    userList.addAll(endUser);
                    handleUserList.addAll(user3rd);


                   */
/* if(!roomId.equals(allocationTaskStartRoom) ){

                        //任务目标机房
                        List<Long> roleIds = alarmsLogRoleMapper.selectRoleIdByOrgId(allocationTaskEndOrgId);
                        Map<String, Object> map = new HashMap<>();
                        map.put("roleIds",roleIds);
                        map.put("orgId",allocationTaskEndOrgId);
                        userList.addAll(sysUserMapper.selectUserIdByRole(map));
                        //原机房
                        roleIds = alarmsLogRoleMapper.selectRoleIdByOrgId(res.getOrgId());
                        map = new HashMap<>();
                        map.put("roleIds",roleIds);
                        map.put("orgId",res.getOrgId());
                        userList.addAll(sysUserMapper.selectUserIdByRole(map));

                        //被搬入的机房
                        Room room = new Room();
                        room.setId(Long.parseLong(roomId));
                        room = roomMapper.selectOne(room);

                        roleIds = alarmsLogRoleMapper.selectRoleIdByOrgId(room.getOrgId());
                        map = new HashMap<>();
                        map.put("roleIds",roleIds);
                        map.put("orgId",room.getOrgId());
                        handleUserList.addAll(sysUserMapper.selectUserIdByRole(map));

                        warningInfo = "调拨任务:"+allocationTaskDesc.getTaskName()+"下"+allocationTaskDesc.getResName()+"设备被非法带入"+room.getName()+"机房";

                    }else{
                        Room room = new Room();
                        room.setId(res.getRoomId());
                        room = roomMapper.selectOne(room);

                        List<Long> roleIds = alarmsLogRoleMapper.selectRoleIdByOrgId(res.getOrgId());
                        Map<String,Object> map = new HashMap<>();
                        map.put("roleIds",roleIds);
                        map.put("orgId",res.getOrgId());
                        handleUserList.addAll(sysUserMapper.selectUserIdByRole(map));

                        warningInfo = "调拨任务:"+allocationTaskDesc.getTaskName()+"下"+allocationTaskDesc.getResName()+"设备被非法带出"+room.getName()+"机房";
                    }*//*

                }
            }
        }else{
            result = "1";
            state = IdcConstant.ALARMS_STATE.NOT_RELIEVE;
            warningInfo = "未检测到任务："+room.getName()+"检测到"+res.getName()+"信息[异常]]";
            if(roomId.equals(res.getRoomId())){
                handleUserList.addAll(user3rd);
            }else{
                List<Long> resIds = alarmsLogRoleMapper.selectRoleIdByOrgId(res.getOrgId());
                Map<String, Object> resMap  = new HashMap<>();
                resMap.put("roleIds",resIds);
                resMap.put("orgId",res.getOrgId());
                List<Long> resUser = sysUserMapper.selectUserIdByRole(resMap);
                userList.addAll(resUser);
                handleUserList.addAll(user3rd);
            }

           */
/* if(!roomId.equals(res.getRoomId())){
                warningInfo = "设备非法带入";

                //设备机构
                Long orgId = res.getOrgId();
                //搬入机房机构
                Long orgId1 = room.getOrgId();

                //设备机构
                List<Long> roleIds = alarmsLogRoleMapper.selectRoleIdByOrgId(orgId);
                Map<String, Object> map = new HashMap<>();
                map.put("roleIds",roleIds);
                map.put("orgId",orgId);
                userList.addAll(sysUserMapper.selectUserIdByRole(map));

                //被搬入机房机构
                roleIds = alarmsLogRoleMapper.selectRoleIdByOrgId(orgId1);
                map = new HashMap<>();
                map.put("roleIds",roleIds);
                map.put("orgId",orgId1);
                handleUserList.addAll(sysUserMapper.selectUserIdByRole(map));

                warningInfo = res.getName()+"设备被非法带入"+room.getName()+"机房";


            }else{
                //设备机构
                Long orgId = res.getOrgId();
                List<Long> roleIds = alarmsLogRoleMapper.selectRoleIdByOrgId(orgId);
                Map<String,Object> map = new HashMap<>();
                map.put("roleIds",roleIds);
                map.put("orgId",orgId);
                handleUserList.addAll(sysUserMapper.selectUserIdByRole(map));

                 room = new Room();
                 room.setId(res.getRoomId());
                 room = roomMapper.selectOne(room);


                warningInfo = res.getName()+"设备被非法带出"+room.getName()+"机房";
            }*//*
        }

        AlarmsTaskLog alarmsTaskLog = new AlarmsTaskLog();
        alarmsTaskLog.setId(IdGen.getUUId());
        alarmsTaskLog.setResId(res.getId());
        alarmsTaskLog.setRoomId(res.getRoomId());
        alarmsTaskLog.setState(state);
        alarmsTaskLog.setRemark(warningInfo);

        alarmsLogMapper.insertSelective(alarmsTaskLog);
*/




        return result;
    }
}
