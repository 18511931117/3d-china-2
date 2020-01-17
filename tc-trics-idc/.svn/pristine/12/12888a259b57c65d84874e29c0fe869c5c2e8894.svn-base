package com.manage.idc.log.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.common.utils.DataSetUtile;
import com.manage.idc.common.utils.SessionUtil;
import com.manage.idc.log.domain.CheckTaskLog;
import com.manage.idc.log.mapper.CheckTaskLogMapper;
import com.manage.idc.log.service.CheckTaskLogService;
import com.manage.idc.task.domain.CheckTaskDesc;
import com.manage.idc.task.mapper.CheckTaskDescMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @Description
 * @Author lyq_j
 * @DATE 2019/10/22 20:31
 **/
@Service
public class CheckTaskLogServiceImpl implements CheckTaskLogService {
    @Autowired
    private CheckTaskDescMapper checkTaskDescMapper;
    @Autowired
    private CheckTaskLogMapper checkTaskLogMapper;
    @Override
    public PageInfo<CheckTaskLog> getPage(CheckTaskLog checkTaskLog, PageRequest pageRequest) {
        if(null != pageRequest){
            PageHelper.startPage(pageRequest.getPage(),pageRequest.getLimit());
        }
        checkTaskLog.setOrgId(SessionUtil.getUser().getOrgId());
        List<CheckTaskLog> list = checkTaskLogMapper.selectByCondition(DataSetUtile.setQueryMap(checkTaskLog,pageRequest,SessionUtil.getUser()));
        return new PageInfo<CheckTaskLog>(list);
    }

    @Override
    public List<CheckTaskDesc> export(CheckTaskLog checkTaskLog) {
        Long taskId = checkTaskLog.getTaskId();
        return  checkTaskDescMapper.selectByCheckTaskId(taskId);
    }
}
