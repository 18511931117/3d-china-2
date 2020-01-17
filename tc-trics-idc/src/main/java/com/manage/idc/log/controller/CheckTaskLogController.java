package com.manage.idc.log.controller;

import com.github.pagehelper.PageInfo;
import com.manage.idc.common.annotation.Operation;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.common.entiy.ResultResponse;
import com.manage.idc.common.utils.DataSetUtile;
import com.manage.idc.log.domain.CheckTaskLog;
import com.manage.idc.log.service.CheckTaskLogService;
import com.manage.idc.task.domain.CheckTaskDesc;
import com.manage.idc.task.domain.export.CheckTaskDescExportBase;
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
 * @DATE 2019/10/22 20:21
 **/
@Api(tags = "盘点任务日志")
@RequestMapping("checkLog")
@RestController
public class CheckTaskLogController {
    @Autowired
    private CheckTaskLogService checkTaskLogService;

    @RequestMapping("")
    public ModelAndView checkLogIndex(ModelAndView modelAndView){
        modelAndView.setViewName("log/checkLog");
        return modelAndView;
    }

    @RequestMapping("getPage")
    @ResponseBody
    @ApiOperation(value = "盘点任务日志分页列表", httpMethod = "GET", response = ResultResponse.class)
    public ResultResponse getPage(CheckTaskLog checkTaskLog, PageRequest pageRequest) {
        PageInfo<CheckTaskLog> pageInfo = checkTaskLogService.getPage(checkTaskLog, pageRequest);
        return DataSetUtile.setPageSuccessResult(pageInfo);
    }


    @GetMapping("export")
    @RequiresPermissions("checkLog:export")
    @Operation(operation = "盘点任务日志导出")
    @ApiOperation(value = "盘点任务日志导出", httpMethod = "GET", response = ResultResponse.class)
    public void export(CheckTaskLog checkTaskLog, HttpServletResponse response) {
        List<CheckTaskDesc> list = checkTaskLogService.export(checkTaskLog);
        ExcelKit.$Export(CheckTaskDescExportBase.class, response).downXlsx(list, false);
    }
}
