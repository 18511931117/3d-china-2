package com.manage.idc.log.controller;

import com.github.pagehelper.PageInfo;
import com.manage.idc.common.annotation.Operation;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.common.entiy.ResultResponse;
import com.manage.idc.common.utils.DataSetUtile;
import com.manage.idc.log.domain.BorrowTaskLog;
import com.manage.idc.log.service.BorrowTaskLogService;
import com.manage.idc.task.domain.BorrowTaskDesc;
import com.manage.idc.task.domain.export.BorrowTaskDescExportBase;
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
 * @DATE 2019/10/22 20:23
 **/
@Api(tags = "借用任务日志")
@RequestMapping("borrowLog")
@RestController
public class BorrowTaskLogController {
    @Autowired
    private BorrowTaskLogService borrowTaskLogService;


    @RequestMapping("")
    public ModelAndView borrowLogIndex(ModelAndView modelAndView){
        modelAndView.setViewName("log/borrowLog");
        return modelAndView;
    }
    @RequestMapping("getPage")
    @ResponseBody
    @ApiOperation(value = "借用任务日志分页列表", httpMethod = "GET", response = ResultResponse.class)
    public ResultResponse getPage(BorrowTaskLog borrowTaskLog, PageRequest pageRequest) {
        PageInfo<BorrowTaskLog> pageInfo = borrowTaskLogService.getPage(borrowTaskLog, pageRequest);
        return DataSetUtile.setPageSuccessResult(pageInfo);
    }


    @GetMapping("export")
    @Operation(operation = "借用任务日志导出")
    @RequiresPermissions("borrowLog:export")
    @ApiOperation(value = "借用任务日志导出", httpMethod = "POST", response = ResultResponse.class)
    public void export(BorrowTaskLog borrowTaskLog, HttpServletResponse response) {
        List<BorrowTaskDesc> list = borrowTaskLogService.export(borrowTaskLog);
        ExcelKit.$Export(BorrowTaskDescExportBase.class, response).downXlsx(list, false);
    }
}
