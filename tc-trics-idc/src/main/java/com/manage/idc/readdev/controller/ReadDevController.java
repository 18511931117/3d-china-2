package com.manage.idc.readdev.controller;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.manage.idc.common.entiy.IdcConstant;
import com.manage.idc.common.entiy.ResultResponse;
import com.manage.idc.common.service.RedisService;
import com.manage.idc.common.utils.Base64Utils;
import com.manage.idc.common.utils.DataSetUtile;
import com.manage.idc.common.utils.MD5Util;
import com.manage.idc.readdev.domain.SysDevUser;
import com.manage.idc.readdev.service.ReadDevService;
import com.manage.idc.system.domain.SysParam;
import com.manage.idc.system.service.SysParamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/app/dev")
public class ReadDevController {

    @Autowired
    private ReadDevService readDevService;

    @Autowired
    private RedisService redisService;


    @Autowired
    private SysParamService sysParamService;

    private static Object timeLock = new Object();
    /*
     * @Description: 登录
     * @Author: WangZiFan
     * @Date: 2019/11/6 17:15
     * @param user
     * @return com.manage.idc.common.entiy.ResultResponse
     */
    @PostMapping("login")
    public ResultResponse login(SysDevUser user){
        if(null != user){
            user.setPassword(MD5Util.encrypt(user.getUsername().toLowerCase(),  Base64Utils.encode(user.getPassword())));
            return readDevService.login(user);
        }else{
            return DataSetUtile.setErrorResultMessage("请输入用户名和密码!");
        }
    }
    /*
     * @Description: 登出
     * @Author: WangZiFan
     * @Date: 2019/11/6 17:54
     * @param user
     * @return com.manage.idc.common.entiy.ResultResponse
     */
    @PostMapping("logout")
    public ResultResponse logout(SysDevUser user){
        readDevService.logout(user);
        return DataSetUtile.setSuccessResult(null);
    }

    @PostMapping("checkMassage")
    public ResultResponse checkMassage(String inventoryMsg){
        Gson gson = new Gson();
        Map json = gson.fromJson(inventoryMsg, Map.class);
        String roomId = json.get("roomId").toString();
        String list = json.get("tidList").toString();
        String timeStamp = json.get("timeStamp").toString();
        List<String> idList = gson.fromJson(list, new TypeToken<List<String>>(){}.getType());



        SysParam sysParam = new SysParam();
        sysParam.setType("readDevProp");
        sysParam.setSysKey("sendTime");
        sysParam.setIsDel(IdcConstant.SYSTEM_ISDEL.NOT_DEL);
        sysParam = sysParamService.selectOne(sysParam);





        String flag = "0";
            for (String val:
                    idList) {
                Date date = new Date(Long.parseLong(timeStamp));
                String s = "";
                synchronized (timeLock){
                    String time = redisService.get(val + "_" + roomId + "Time");
                    if(time != null){
                        Date dateEnd = new Date(Long.parseLong(time));
                        Long times = date.getTime() - dateEnd.getTime();
                        if(Long.parseLong(sysParam.getSysValue())*1000 < times){
                            s = readDevService.checkMassage(val, roomId);
                            redisService.set(val + "_" + roomId + "Time",timeStamp);
                            System.out.println("消息接收");
                        }else{
                            System.out.println("消息废除");
                        }
                    }else{
                        time = timeStamp;
                        redisService.set(val + "_" + roomId + "Time",time);
                        s = readDevService.checkMassage(val, roomId);

                        System.out.println("接收请求");
                    }
                }


                if("1".equals(s)){
                    flag = "1";
                }
            }



        Map<String, Object> map = new HashMap<>();
        map.put("warning",flag);


        if(null != sysParam){
            map.put("sendTime",Long.parseLong(sysParam.getSysValue())*1000);
        }else{
            map.put("sendTime",Long.valueOf (10*1000));
        }
        return DataSetUtile.setSuccessResult(map);
    }
}
