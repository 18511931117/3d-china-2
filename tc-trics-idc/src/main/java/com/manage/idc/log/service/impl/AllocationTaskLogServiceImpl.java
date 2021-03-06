package com.manage.idc.log.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.common.utils.DataSetUtile;
import com.manage.idc.common.utils.SessionUtil;
import com.manage.idc.log.domain.AllocationTaskLog;
import com.manage.idc.log.mapper.AllocationTaskLogMapper;
import com.manage.idc.log.service.AllocationTaskLogService;
import com.manage.idc.task.domain.AllocationTaskDesc;
import com.manage.idc.task.mapper.AllocationTaskDescMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Description
 * @Author lyq_j
 * @DATE 2019/10/22 20:31
 **/
@Service
public class AllocationTaskLogServiceImpl  implements AllocationTaskLogService {
    @Autowired
    private AllocationTaskDescMapper allocationTaskDescMapper;

    @Autowired
    private AllocationTaskLogMapper allocationTaskLogMapper;
    @Override
    public PageInfo<AllocationTaskLog> getPage(AllocationTaskLog allocationTaskLog, PageRequest pageRequest) {
        if(null != pageRequest){
            PageHelper.startPage(pageRequest.getPage(),pageRequest.getLimit());
        }
        allocationTaskLog.setOrgId(SessionUtil.getUser().getOrgId());
        List<AllocationTaskLog> list = allocationTaskLogMapper.selectByCondition(DataSetUtile.setQueryMap(allocationTaskLog,pageRequest,SessionUtil.getUser()));
        return new PageInfo<AllocationTaskLog>(list);
    }

    @Override
    public List<AllocationTaskDesc> export(AllocationTaskLog allocationTaskLog) {
        Long taskId = allocationTaskLog.getTaskId();
        return  allocationTaskDescMapper.selectByCheckTaskId(taskId);
    }
}
