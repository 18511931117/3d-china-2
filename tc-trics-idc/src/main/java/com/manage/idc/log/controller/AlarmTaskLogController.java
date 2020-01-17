package com.manage.idc.log.controller;

import com.github.pagehelper.PageInfo;
import com.manage.idc.common.annotation.Operation;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.common.entiy.ResultResponse;
import com.manage.idc.common.utils.DataSetUtile;
import com.manage.idc.log.domain.AlarmsTaskLog;
import com.manage.idc.log.service.AlarmTaskLogService;
import com.manage.idc.log.service.AllocationTaskLogService;
import com.manage.idc.system.domain.AlarmsLogRole;
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
 * @DATE 2019/10/22 20:26
 **/
@Api(tags = "告警日志管理")
@RequestMapping("alarmLog")
@RestController
public class AlarmTaskLogController {
    @Autowired
    private AlarmTaskLogService alarmTaskLogService;

    @Autowired
    private AllocationTaskLogService allocationTaskLogService;
    @RequestMapping("")
    public ModelAndView allocationLogIndex(ModelAndView modelAndView){
        modelAndView.setViewName("log/alarmLog");
        return modelAndView;
    }
    @RequestMapping("/add")
    @ResponseBody
    @RequiresPermissions("alarmLog:add")
    @Operation(operation = "告警日志添加")
    @ApiOperation(value = "告警日志添加", httpMethod = "POST", response = ResultResponse.class)
    public ResultResponse add(AlarmsTaskLog alarmsLog) {
        alarmTaskLogService.add(alarmsLog);
        return new ResultResponse().success();
    }

    @RequestMapping("/getPage")
    @ResponseBody
    @ApiOperation(value = "告警日志分页列表", httpMethod = "POST", response = ResultResponse.class)
    public ResultResponse getPage(AlarmsTaskLog alarmsLog, PageRequest pageRequest) {
        PageInfo<AlarmsTaskLog> pageInfo = alarmTaskLogService.getPage(alarmsLog, pageRequest);
        return DataSetUtile.setPageSuccessResult(pageInfo);
    }


    @PostMapping("/addLogRole")
    @ResponseBody
    @ApiOperation(value = "添加操作人角色", httpMethod = "POST", response = ResultResponse.class)
    public ResultResponse addLogRole(@RequestParam("orgId")Long orgId,@RequestParam("ids") String ids) {
        alarmTaskLogService.addLogRole(orgId, ids);
        return DataSetUtile.setSuccessResult(null);
    }


    @PostMapping("/handleLog")
    @ResponseBody
    @ApiOperation(value = "处理日志", httpMethod = "POST", response = ResultResponse.class)
    public ResultResponse handleLog(@RequestParam("logId")Long logId,@RequestParam("hanleState") String hanleState,@RequestParam("reason") String reason) {
        alarmTaskLogService.handleLog(logId, hanleState,reason);
        return DataSetUtile.setSuccessResult(null);
    }

    @RequestMapping("/findUserRoleByOrg")
    @ResponseBody
    @ApiOperation(value = "获取可以查看报警日志权限的角色", httpMethod = "POST", response = ResultResponse.class)
    public ResultResponse findUserRoleByOrg(AlarmsLogRole alarmsLog, PageRequest pageRequest) {
        List<Long> list = alarmTaskLogService.findUserRoleByOrg(alarmsLog);
        return DataSetUtile.setSuccessResult(list);
    }


    @GetMapping("/getResInfoLog")
    @ResponseBody
    @ApiOperation(value = "获取可以查看报警日志权限的角色", httpMethod = "GET", response = ResultResponse.class)
    public ResultResponse getResInfoLog(AlarmsTaskLog alarmsLog, PageRequest pageRequest) {
        PageInfo<AlarmsTaskLog> pageInfo = alarmTaskLogService.getResInfoLog(alarmsLog,pageRequest);
        return DataSetUtile.setPageSuccessResult(pageInfo);
    }


    @GetMapping("/checkLogTask")
    @ResponseBody
    @ApiOperation(value = "根据日志id查看是否有任务存在", httpMethod = "GET", response = ResultResponse.class)
    public ResultResponse checkLogTask(AlarmsTaskLog alarmsLog, PageRequest pageRequest) {
        int i = alarmTaskLogService.checkLogTask(alarmsLog);
        return DataSetUtile.setSuccessResult(i);
    }


    @GetMapping("/export")
    @RequiresPermissions("alarmLog:export")
    @Operation(operation = "告警日志导出")
    @ApiOperation(value = "告警日志导出", httpMethod = "POST", response = ResultResponse.class)
    public void export(AlarmsTaskLog alarmsLog, HttpServletResponse response) {
        List<AlarmsTaskLog> list = alarmTaskLogService.export(alarmsLog);
        ExcelKit.$Export(AlarmsTaskLog.class, response).downXlsx(list, false);
    }



}
