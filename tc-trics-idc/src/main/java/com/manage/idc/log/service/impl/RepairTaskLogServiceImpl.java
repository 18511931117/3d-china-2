package com.manage.idc.log.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.common.utils.DataSetUtile;
import com.manage.idc.common.utils.SessionUtil;
import com.manage.idc.log.domain.RepairTaskLog;
import com.manage.idc.log.mapper.RepairTaskLogMapper;
import com.manage.idc.log.service.RepairTaskLogService;
import com.manage.idc.task.domain.RepairTaskDesc;
import com.manage.idc.task.mapper.RepairTaskDescMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Description
 * @Author lyq_j
 * @DATE 2019/10/22 20:31
 **/
@Service
public class RepairTaskLogServiceImpl implements RepairTaskLogService {
    @Autowired
    private RepairTaskDescMapper repairTaskDescMapper;
    @Autowired
    private RepairTaskLogMapper repairTaskLogMapper;
    @Override
    public PageInfo<RepairTaskLog> getPage(RepairTaskLog repairTaskLog, PageRequest pageRequest) {
        if(null != pageRequest){
            PageHelper.startPage(pageRequest.getPage(),pageRequest.getLimit());
        }
        repairTaskLog.setOrgId(SessionUtil.getUser().getOrgId());
        List<RepairTaskLog> list = repairTaskLogMapper.selectByCondition(DataSetUtile.setQueryMap(repairTaskLog,pageRequest,SessionUtil.getUser()));
        return new PageInfo<RepairTaskLog>(list);
    }

    @Override
    public List<RepairTaskDesc> export(RepairTaskLog repairTaskLog) {
        Long taskId = repairTaskLog.getTaskId();
        return  repairTaskDescMapper.selectByCheckTaskId(taskId);
    }
}
