package com.manage.idc.task.service;

import com.github.pagehelper.PageInfo;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.task.domain.AllocationTaskDesc;
import com.manage.idc.task.domain.BorrowTask;
import com.manage.idc.task.domain.BorrowTaskDesc;

import java.util.List;

public interface BorrowTaskService {
    void add(BorrowTask borrowTask);

    void delete(BorrowTask borrowTask);

    void updateState(BorrowTask borrowTask);

    PageInfo<BorrowTaskDesc> desc(BorrowTask borrowTask, PageRequest pageRequest);

    List<BorrowTaskDesc> export(BorrowTask borrowTask);

    PageInfo<BorrowTask> getPage(BorrowTask borrowTask, PageRequest pageRequest);

    PageInfo<BorrowTask> getBorrowTaskPage(BorrowTask borrowTask, PageRequest pageRequest);

    List<BorrowTaskDesc> getBorrowTaskDesc(BorrowTaskDesc borrowTaskDesc);

    BorrowTask getByTask(BorrowTask borrowTask);
}
