package com.manage.idc.log.controller;

import com.github.pagehelper.PageInfo;
import com.manage.idc.common.annotation.Operation;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.common.entiy.ResultResponse;
import com.manage.idc.common.utils.DataSetUtile;
import com.manage.idc.log.domain.AllocationTaskLog;
import com.manage.idc.log.service.AllocationTaskLogService;
import com.manage.idc.task.domain.AllocationTaskDesc;
import com.manage.idc.task.domain.export.AllocationTaskDescExportBase;
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
 * @DATE 2019/10/22 20:22
 **/
@Api(tags = "调拨任务日志")
@RequestMapping("allocationLog")
@RestController
public class AllocationTaskLogController {

    @Autowired
    private AllocationTaskLogService allocationTaskLogService;
    @RequestMapping("")
    public ModelAndView allocationLogIndex(ModelAndView modelAndView){
        modelAndView.setViewName("log/allocationLog");
        return modelAndView;
    }

    @RequestMapping("getPage")
    @ResponseBody
    @ApiOperation(value = "调拨任务日志分页列表", httpMethod = "GET", response = ResultResponse.class)
    public ResultResponse getPage(AllocationTaskLog allocationTaskLog, PageRequest pageRequest) {
        PageInfo<AllocationTaskLog> pageInfo = allocationTaskLogService.getPage(allocationTaskLog, pageRequest);
        return DataSetUtile.setPageSuccessResult(pageInfo);
    }


    @GetMapping("export")
    @RequiresPermissions("allocationLog:export")
    @Operation(operation = "调拨任务日志导出")
    @ApiOperation(value = "调拨任务日志导出", httpMethod = "POST", response = ResultResponse.class)
    public void export(AllocationTaskLog allocationTaskLog, HttpServletResponse response) {
        List<AllocationTaskDesc> list = allocationTaskLogService.export(allocationTaskLog);
        ExcelKit.$Export(AllocationTaskDescExportBase.class, response).downXlsx(list, false);
    }
}
