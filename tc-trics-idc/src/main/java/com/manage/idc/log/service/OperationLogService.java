package com.manage.idc.log.service;

import com.github.pagehelper.PageInfo;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.log.domain.SystemLog;
import org.aspectj.lang.ProceedingJoinPoint;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;
import java.util.List;

/**
 * @Description
 * @Author lyq_j
 * @DATE 2019/10/21 20:32
 **/
public interface OperationLogService  {
    void saveLog(ProceedingJoinPoint point, Method targetMethod, HttpServletRequest request, String operation, long start);

    PageInfo<SystemLog> getPage(SystemLog systemLog, PageRequest pageRequest);

    List<SystemLog>  export(SystemLog systemLog);
}
