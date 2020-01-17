package com.manage.idc.task.service;

import com.github.pagehelper.PageInfo;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.task.domain.AllocationTask;
import com.manage.idc.task.domain.AllocationTaskDesc;
import com.manage.idc.task.domain.CheckTaskDesc;

import java.util.List;

public interface AllocationTaskService {
    void add(AllocationTask allocationTask);

    void delete(AllocationTask allocationTask);

    void updateState(AllocationTask allocationTask);

    PageInfo<AllocationTaskDesc> desc(AllocationTask allocationTask,PageRequest pageRequest);

    List<AllocationTaskDesc> export(AllocationTask allocationTask);

    PageInfo<AllocationTask> getPage(AllocationTask allocationTask, PageRequest pageRequest);

    PageInfo<AllocationTask> getAllocationTaskPage(AllocationTask allocationTask, PageRequest pageRequest);

    List<AllocationTaskDesc> getAllocationTaskDesc(AllocationTaskDesc allocationTaskDesc);

    AllocationTask getByTask(AllocationTask allocationTask);
}
