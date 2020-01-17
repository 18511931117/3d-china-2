package com.manage.idc.log.service;

import com.github.pagehelper.PageInfo;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.log.domain.BorrowTaskLog;
import com.manage.idc.task.domain.BorrowTaskDesc;

import java.util.List;

public interface BorrowTaskLogService {
    PageInfo<BorrowTaskLog> getPage(BorrowTaskLog borrowTaskLog, PageRequest pageRequest);

    List<BorrowTaskDesc> export(BorrowTaskLog borrowTaskLog);
}
