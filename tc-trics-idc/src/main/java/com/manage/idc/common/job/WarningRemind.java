package com.manage.idc.common.job;

import com.manage.idc.common.config.socket.WebSocketServer;
import com.manage.idc.log.mapper.AlarmsLogMapper;
import com.manage.idc.log.service.AlarmTaskLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import javax.websocket.Session;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
@Component
@Configurable
@EnableScheduling
public class WarningRemind {

    @Autowired
    private AlarmTaskLogService alarmTaskLogService;


    @Scheduled(cron = "0/10 * * * * ?")
    public void warningPush() {
        ConcurrentHashMap<Session,String> sessionMap = WebSocketServer.sessionMap;
        if(sessionMap.size() > 0){

            for (Session session:
                 sessionMap.keySet()) {
                String userId = sessionMap.get(session);

                alarmTaskLogService.warningPush(userId,session);
            }
        }
    }
}
