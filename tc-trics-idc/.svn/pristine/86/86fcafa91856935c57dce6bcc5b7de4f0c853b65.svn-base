package com.manage.idc.log.controller;

import com.github.pagehelper.PageInfo;
import com.manage.idc.common.annotation.Operation;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.common.entiy.ResultResponse;
import com.manage.idc.common.utils.DataSetUtile;
import com.manage.idc.log.domain.SystemLog;
import com.manage.idc.log.service.AllocationTaskLogService;
import com.manage.idc.log.service.OperationLogService;
import com.wuwenze.poi.ExcelKit;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * @Description
 * @Author lyq_j
 * @DATE 2019/10/21 20:35
 **/
@RestController
@Api(tags = "系统操作日志")
@RequestMapping("sysLog")
public class OperationLogController {
    @Autowired
    private OperationLogService operationLogService;
    @Autowired
    private AllocationTaskLogService allocationTaskLogService;
    @RequestMapping("")
    public ModelAndView allocationLogIndex(ModelAndView modelAndView){
        modelAndView.setViewName("log/sysLog");
        return modelAndView;
    }
    @RequestMapping("getPage")
    @ResponseBody
    @ApiOperation(value = "系统操作日志分页列表", httpMethod = "GET", response = ResultResponse.class)
    public ResultResponse getPage(SystemLog systemLog, PageRequest pageRequest) {
        PageInfo<SystemLog> pageInfo = operationLogService.getPage(systemLog, pageRequest);
        return DataSetUtile.setPageSuccessResult(pageInfo);
    }


    @GetMapping("export")
    @RequiresPermissions("sysLog:export")
    @Operation(operation = "系统操作日志导出")
    @ApiOperation(value = "系统操作日志导出", httpMethod = "GET", response = ResultResponse.class)
    public void export(SystemLog systemLog, HttpServletResponse response) {
        List<SystemLog> list = operationLogService.export(systemLog);
        ExcelKit.$Export(SystemLog.class, response).downXlsx(list, false);
    }

}
