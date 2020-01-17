package com.manage.idc.log.controller;

import com.github.pagehelper.PageInfo;
import com.manage.idc.common.annotation.Operation;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.common.entiy.ResultResponse;
import com.manage.idc.common.utils.DataSetUtile;
import com.manage.idc.log.domain.RepairTaskLog;
import com.manage.idc.log.service.RepairTaskLogService;
import com.manage.idc.task.domain.RepairTaskDesc;
import com.manage.idc.task.domain.export.RepairTaskDescExportBase;
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
 * @DATE 2019/10/22 20:24
 **/
@RestController
@Api(tags = "维修任务日志")
@RequestMapping("repairLog")
public class RepairTaskLogController {

    @Autowired
    private RepairTaskLogService repairTaskLogService;

    @RequestMapping("")
    public ModelAndView repairLogIndex(ModelAndView modelAndView){
        modelAndView.setViewName("log/repairLog");
        return modelAndView;
    }

    @RequestMapping("getPage")
    @ResponseBody
    @ApiOperation(value = "维修任务日志分页列表", httpMethod = "GET", response = ResultResponse.class)
    public ResultResponse getPage(RepairTaskLog repairTaskLog, PageRequest pageRequest) {
        PageInfo<RepairTaskLog> pageInfo = repairTaskLogService.getPage(repairTaskLog, pageRequest);
        return DataSetUtile.setPageSuccessResult(pageInfo);
    }


    @GetMapping("export")
    @RequiresPermissions("repairLog:export")
    @Operation(operation = "维修任务日志导出")
    @ApiOperation(value = "维修任务日志导出", httpMethod = "POST", response = ResultResponse.class)
    public void export(RepairTaskLog repairTaskLog, HttpServletResponse response) {
        List<RepairTaskDesc> list = repairTaskLogService.export(repairTaskLog);
        ExcelKit.$Export(RepairTaskDescExportBase.class, response).downXlsx(list, false);
    }
}
