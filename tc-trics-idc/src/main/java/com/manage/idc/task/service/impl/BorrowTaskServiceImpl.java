package com.manage.idc.task.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.manage.idc.common.entiy.IdcConstant;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.common.enums.TaskState;
import com.manage.idc.common.enums.TaskType;
import com.manage.idc.common.exception.IdcException;
import com.manage.idc.common.utils.DataSetUtile;
import com.manage.idc.common.utils.IdGen;
import com.manage.idc.common.utils.SessionUtil;
import com.manage.idc.device.domain.Res;
import com.manage.idc.device.mapper.ResMapper;
import com.manage.idc.log.domain.BorrowTaskLog;
import com.manage.idc.log.mapper.BorrowTaskLogMapper;
import com.manage.idc.system.domain.Label;
import com.manage.idc.system.mapper.LabelMapper;
import com.manage.idc.task.domain.BorrowTask;
import com.manage.idc.task.domain.BorrowTaskDesc;
import com.manage.idc.task.mapper.BorrowTaskDescMapper;
import com.manage.idc.task.mapper.BorrowTaskMapper;
import com.manage.idc.task.service.BorrowTaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

/**
 * @Description
 * @Author lyq_j
 * @DATE 2019/10/24 10:39
 **/
@Service
public class BorrowTaskServiceImpl extends BaseTaskServiceImpl implements BorrowTaskService {
    @Autowired
    private BorrowTaskMapper borrowTaskMapper;
    @Autowired
    private ResMapper resMapper;
    @Autowired
    private BorrowTaskDescMapper borrowTaskDescMapper;
    @Autowired
    private LabelMapper labelMapper;
    @Autowired
    private BorrowTaskLogMapper borrowTaskLogMapper;
    @Override
    @Transactional
    public void add(BorrowTask borrowTask) {
        long allocationTaskId = IdGen.getUUId();
        borrowTask.setId(allocationTaskId);
        borrowTask.setCreateTime(new Date());
        borrowTask.setEndTime(new Date());
        borrowTask.setTaskType(TaskType.RES_BORROW.getType());
        borrowTask.setIsDel(IdcConstant.SYSTEM_ISDEL.NOT_DEL);
        borrowTask.setState(TaskState.CONDUCT_TASK.getState());
        borrowTaskMapper.insertSelective(borrowTask);

        String resId = borrowTask.getResIds();
        List<String> resIds = Arrays.asList(resId.split(","));
        for (String resid : resIds) {
            Res res = resMapper.selectByPrimaryKey(Long.parseLong(resid));
            //添加设备借用详情记录
            //根据Tid查询标签
            Label label = labelMapper.selectByTid(res.getTid());
            if(label==null){
                throw  new IdcException("设备："+res.getName()+"  没有绑定标签！");
            }
            BorrowTaskDesc borrowTaskDesc = new BorrowTaskDesc();
            borrowTaskDesc.setCreateTime(new Date());
            borrowTaskDesc.setId(IdGen.getUUId());
            borrowTaskDesc.setLabelId(label.getId());
            borrowTaskDesc.setResId(res.getId());
            borrowTaskDesc.setRoomId(res.getRoomId());
            borrowTaskDesc.setState(TaskState.CONDUCT_TASK.getState());
            borrowTaskDesc.setTaskId(allocationTaskId);
            borrowTaskDesc.setIsDel(IdcConstant.SYSTEM_ISDEL.NOT_DEL);
            borrowTaskDescMapper.insertSelective(borrowTaskDesc);
            //  更新设备状态为借用任务中
            super.updateResStatus(Long.parseLong(resid),"5");
        }
    }
    @Override
    @Transactional
    public void delete(BorrowTask borrowTask) {
        borrowTask.setIsDel(IdcConstant.SYSTEM_ISDEL.DEL);
        borrowTaskMapper.updateByPrimaryKeySelective(borrowTask); //更新调拨任务
        BorrowTaskDesc borrowTaskDesc = new BorrowTaskDesc();
        borrowTaskDesc.setTaskId(borrowTask.getId());
        borrowTaskDesc.setIsDel(IdcConstant.SYSTEM_ISDEL.DEL);
        borrowTaskDescMapper.updateByTaskId(borrowTaskDesc);

        //撤销设备状态
        List<Long> byTaskIdResIdList = borrowTaskDescMapper.getByTaskIdResIdList(borrowTaskDesc.getTaskId());
        byTaskIdResIdList.stream().forEach(resId->super.updateResStatus(resId,"1"));
    }

    @Override
    @Transactional
    public void updateState(BorrowTask borrowTask) {
        //更新借用任务状态
        borrowTask.setState(TaskState.SUCCESS_TASK.getState());
        borrowTaskMapper.updateByPrimaryKeySelective(borrowTask);
        //更新借用任务详情任务状态
        BorrowTaskDesc borrowTaskDesc = new BorrowTaskDesc();
        borrowTaskDesc.setTaskId(borrowTask.getId());
        borrowTaskDesc.setState(TaskState.SUCCESS_TASK.getState());
        borrowTaskDescMapper.updateByTaskId(borrowTaskDesc);

        if(borrowTask.getState()==TaskState.SUCCESS_TASK.getState()){
            BorrowTask allocationTasks = borrowTaskMapper.selectByPrimaryKey(borrowTask.getId());
            BorrowTaskLog borrowTaskLog = new BorrowTaskLog();
            borrowTaskLog.setId(IdGen.getUUId());
            borrowTaskLog.setEndOrgId(allocationTasks.getEndOrgId());
            borrowTaskLog.setEndTime(new Date());
            borrowTaskLog.setPersonName(allocationTasks.getStartName());
            borrowTaskLog.setStartOrgId(allocationTasks.getStartOrgId());
            borrowTaskLog.setStartTime(allocationTasks.getCreateTime());
            borrowTaskLog.setTaskId(allocationTasks.getId());
            borrowTaskLog.setTaskType(allocationTasks.getTaskType());
            borrowTaskLog.setState(allocationTasks.getState());
            borrowTaskLog.setTaskName(allocationTasks.getTaskName());
            borrowTaskLog.setRemark(allocationTasks.getRemark());
            borrowTaskLogMapper.insertSelective(borrowTaskLog);

            List<Long> byTaskIdResIdList = borrowTaskDescMapper.getByTaskIdResIdList(borrowTaskDesc.getTaskId()); //查询任务中的所有设备
            //更新设备为正常
            byTaskIdResIdList.stream().forEach(resid->updateResStatus(resid,"1"));
        }
    }



    @Override
    public PageInfo<BorrowTaskDesc> desc(BorrowTask borrowTask,PageRequest pageRequest) {
        borrowTask.setIsDel(IdcConstant.SYSTEM_ISDEL.NOT_DEL);  //前段传入 过滤条件 默认是全部
        if(null != pageRequest){
            PageHelper.startPage(pageRequest.getPage(),pageRequest.getLimit());
        }
        Long id = borrowTask.getId();
        List<BorrowTaskDesc> borrowTaskDescs = borrowTaskDescMapper.selectByCheckTaskId(id);
        return new PageInfo<>(borrowTaskDescs);
    }

    @Override
    public List<BorrowTaskDesc> export(BorrowTask borrowTask) {
        ArrayList<Long> ids = new ArrayList<>();
        Arrays.stream(borrowTask.getIds().split(",")).forEach(id->
                ids.add(Long.parseLong(id)));
        return  borrowTaskDescMapper.selectByExport(ids);
    }

    @Override
    public PageInfo<BorrowTask> getPage(BorrowTask borrowTask, PageRequest pageRequest) {
        borrowTask.setIsDel(IdcConstant.SYSTEM_ISDEL.NOT_DEL);  //前段传入 过滤条件 默认是全部
        if(null != pageRequest){
            PageHelper.startPage(pageRequest.getPage(),pageRequest.getLimit());
        }
        borrowTask.setOrgId(SessionUtil.getUser().getOrgId());
        List<BorrowTask> list = borrowTaskMapper.selectByCondition(DataSetUtile.setQueryMap(borrowTask,pageRequest,SessionUtil.getUser()));
        return new PageInfo<BorrowTask>(list);
    }

    @Override
    public PageInfo<BorrowTask> getBorrowTaskPage(BorrowTask borrowTask, PageRequest pageRequest) {
        //allocationTask.setIsDel(IdcConstant.SYSTEM_ISDEL.NOT_DEL);  前段传入 过滤条件 默认是全部
        borrowTask.setIsDel(IdcConstant.SYSTEM_ISDEL.NOT_DEL);
        if(null != pageRequest){
            PageHelper.startPage(pageRequest.getPage(),pageRequest.getLimit());
        }
        List<BorrowTask> list = borrowTaskMapper.getBorrowTaskPage(DataSetUtile.setQueryMap(borrowTask,pageRequest,null));
        return new PageInfo<BorrowTask>(list);
    }

    @Override
    public List<BorrowTaskDesc> getBorrowTaskDesc(BorrowTaskDesc borrowTaskDesc) {

        return borrowTaskDescMapper.getBorrowTaskDesc(borrowTaskDesc);
    }

    @Override
    public BorrowTask getByTask(BorrowTask borrowTask) {
        return borrowTaskMapper.getByTask(borrowTask);
    }
}
