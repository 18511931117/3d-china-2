package com.manage.idc.log.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.common.utils.DataSetUtile;
import com.manage.idc.common.utils.SessionUtil;
import com.manage.idc.log.domain.BorrowTaskLog;
import com.manage.idc.log.mapper.BorrowTaskLogMapper;
import com.manage.idc.log.service.BorrowTaskLogService;
import com.manage.idc.task.domain.BorrowTaskDesc;
import com.manage.idc.task.mapper.BorrowTaskDescMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Description
 * @Author lyq_j
 * @DATE 2019/10/22 20:31
 **/
@Service
public class BorrowTaskLogServiceImpl  implements BorrowTaskLogService {
    @Autowired
    private BorrowTaskDescMapper borrowTaskDescMapper;

    @Autowired
    private BorrowTaskLogMapper borrowTaskLogMapper;

    @Override
    public PageInfo<BorrowTaskLog> getPage(BorrowTaskLog borrowTaskLog, PageRequest pageRequest) {

        if(null != pageRequest){
            PageHelper.startPage(pageRequest.getPage(),pageRequest.getLimit());
        }
        borrowTaskLog.setOrgId(SessionUtil.getUser().getOrgId());
        List<BorrowTaskLog> list = borrowTaskLogMapper.selectByCondition(DataSetUtile.setQueryMap(borrowTaskLog,pageRequest,SessionUtil.getUser()));
        return new PageInfo<BorrowTaskLog>(list);
    }

    @Override
    public List<BorrowTaskDesc> export(BorrowTaskLog borrowTaskLog) {
        Long taskId = borrowTaskLog.getTaskId();
        return  borrowTaskDescMapper.selectByCheckTaskId(taskId);
    }
}
