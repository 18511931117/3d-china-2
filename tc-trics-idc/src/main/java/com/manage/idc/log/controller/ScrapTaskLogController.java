package com.manage.idc.log.controller;

import com.github.pagehelper.PageInfo;
import com.manage.idc.common.annotation.Operation;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.common.entiy.ResultResponse;
import com.manage.idc.common.utils.DataSetUtile;
import com.manage.idc.log.domain.ScrapTaskLog;
import com.manage.idc.log.service.ScrapTaskLogService;
import com.manage.idc.task.domain.ScrapTaskDesc;
import com.manage.idc.task.domain.export.ScrapTaskDescExportBase;
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
 * @DATE 2019/10/22 20:19
 **/
@Api(tags = "报废任务日志")
@RequestMapping("scrapLog")
@RestController
public class ScrapTaskLogController {

    @Autowired
    private ScrapTaskLogService scrapTaskLogService;
    @RequestMapping("")
    public ModelAndView borrowLogIndex(ModelAndView modelAndView){
        modelAndView.setViewName("log/scrapLog");
        return modelAndView;
    }
    @RequestMapping("getPage")
    @ResponseBody
    @ApiOperation(value = "报废任务日志分页列表", httpMethod = "GET", response = ResultResponse.class)
    public ResultResponse getPage(ScrapTaskLog scrapTaskLog, PageRequest pageRequest) {
        PageInfo<ScrapTaskLog> pageInfo = scrapTaskLogService.getPage(scrapTaskLog, pageRequest);
        return DataSetUtile.setPageSuccessResult(pageInfo);
    }


    @GetMapping("export")
    @RequiresPermissions("scrapLog:export")
    @Operation(operation = "报废任务日志导出")
    @ApiOperation(value = "报废任务日志导出", httpMethod = "POST", response = ResultResponse.class)
    public void export(ScrapTaskLog scrapTaskLog, HttpServletResponse response) {
        List<ScrapTaskDesc> list = scrapTaskLogService.export(scrapTaskLog);
        ExcelKit.$Export(ScrapTaskDescExportBase.class, response).downXlsx(list, false);
    }
}
