package com.manage.idc.log.service;

import com.github.pagehelper.PageInfo;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.log.domain.RepairTaskLog;
import com.manage.idc.task.domain.RepairTaskDesc;

import java.util.List;

public interface RepairTaskLogService {
    PageInfo<RepairTaskLog> getPage(RepairTaskLog repairTaskLog, PageRequest pageRequest);

    List<RepairTaskDesc> export(RepairTaskLog repairTaskLog);
}
