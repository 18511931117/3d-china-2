package com.manage.idc.common.aspect;

import com.manage.idc.common.annotation.Operation;
import com.manage.idc.common.exception.IdcException;
import com.manage.idc.common.utils.HttpContextUtil;
import com.manage.idc.common.utils.IDCUtils;
import com.manage.idc.log.service.OperationLogService;
import org.apache.commons.lang3.StringUtils;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;

/**
 * @Description 操作日志记录
 * @Author lyq_j
 * @DATE 2019/10/21 20:39
 **/
@Aspect
@Component
public class ControllerEndpointAspect extends AspectSupport{

    @Autowired
    private OperationLogService operationLogService;

    @Pointcut("@annotation(com.manage.idc.common.annotation.Operation)")
    public void pointcut() {
    }

    @Around("pointcut()")
    public Object around(ProceedingJoinPoint point) throws Throwable {
        Object result;
        Method targetMethod = resolveMethod(point);
        Operation annotation = targetMethod.getAnnotation(Operation.class);
        String operation = annotation.operation();
        long start = System.currentTimeMillis();

            result = point.proceed();
            if (StringUtils.isNotBlank(operation)) {
                HttpServletRequest request = HttpContextUtil.getHttpServletRequest();
                operationLogService.saveLog(point, targetMethod, request, operation, start);
            }
            return result;
    }
}
