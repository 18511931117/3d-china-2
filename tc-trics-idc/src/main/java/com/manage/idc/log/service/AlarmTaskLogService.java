package com.manage.idc.log.service;

import com.github.pagehelper.PageInfo;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.log.domain.AlarmsTaskLog;
import com.manage.idc.system.domain.AlarmsLogRole;

import javax.websocket.Session;
import java.util.List;

/**
 * @Description
 * @Author lyq_j
 * @DATE 2019/10/22 20:27
 **/
public interface AlarmTaskLogService {
    void add(AlarmsTaskLog alarmsLog);

    PageInfo<AlarmsTaskLog> getPage(AlarmsTaskLog alarmsLog, PageRequest pageRequest);

    List<AlarmsTaskLog> export(AlarmsTaskLog alarmsLog);

    void warningPush(String userId, Session session);

    List<Long> findUserRoleByOrg(AlarmsLogRole alarmsLog);

    void addLogRole(Long orgId, String roleIds);

    PageInfo<AlarmsTaskLog> getResInfoLog(AlarmsTaskLog alarmsTaskLog, PageRequest pageRequest);

    void handleLog(Long logId, String hanleState, String reason);

    int checkLogTask(AlarmsTaskLog alarmsLog);
}
