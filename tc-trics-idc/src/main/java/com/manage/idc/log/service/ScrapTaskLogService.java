package com.manage.idc.log.service;

import com.github.pagehelper.PageInfo;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.log.domain.ScrapTaskLog;
import com.manage.idc.task.domain.ScrapTaskDesc;

import java.util.List;

public interface ScrapTaskLogService {
    PageInfo<ScrapTaskLog> getPage(ScrapTaskLog scrapTaskLog, PageRequest pageRequest);

    List<ScrapTaskDesc> export(ScrapTaskLog scrapTaskLog);
}
