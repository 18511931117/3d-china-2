package com.manage.idc.log.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.common.utils.DataSetUtile;
import com.manage.idc.common.utils.SessionUtil;
import com.manage.idc.log.domain.ScrapTaskLog;
import com.manage.idc.log.mapper.ScrapTaskLogMapper;
import com.manage.idc.log.service.ScrapTaskLogService;
import com.manage.idc.task.domain.ScrapTaskDesc;
import com.manage.idc.task.mapper.ScrapTaskDescMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @Description
 * @Author lyq_j
 * @DATE 2019/10/22 20:32
 **/
@Service
public class ScrapTaskLogServiceImpl  implements ScrapTaskLogService {
    @Autowired
    private  ScrapTaskLogMapper scrapTaskLogMapper;

    @Autowired
    private ScrapTaskDescMapper scrapTaskDescMapper;

    @Override
    public PageInfo<ScrapTaskLog> getPage(ScrapTaskLog scrapTaskLog, PageRequest pageRequest) {
        if(null != pageRequest){
            PageHelper.startPage(pageRequest.getPage(),pageRequest.getLimit());
        }
        scrapTaskLog.setOrgId(SessionUtil.getUser().getOrgId());
        List<ScrapTaskLog> list = scrapTaskLogMapper.selectByCondition(DataSetUtile.setQueryMap(scrapTaskLog,pageRequest,SessionUtil.getUser()));
        return new PageInfo<ScrapTaskLog>(list);
    }

    @Override
    public List<ScrapTaskDesc> export(ScrapTaskLog scrapTaskLog) {
        Long taskId = scrapTaskLog.getTaskId();
        return  scrapTaskDescMapper.selectByCheckTaskId(taskId);
    }
}
