package com.manage.idc.task.controller;

import com.github.pagehelper.PageInfo;
import com.manage.idc.common.annotation.Operation;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.common.entiy.ResultResponse;
import com.manage.idc.common.utils.DataSetUtile;
import com.manage.idc.common.utils.SessionUtil;
import com.manage.idc.task.domain.BorrowTaskDesc;
import com.manage.idc.task.domain.CheckTask;
import com.manage.idc.task.domain.CheckTaskDesc;
import com.manage.idc.task.domain.export.CheckTaskDescExportBase;
import com.manage.idc.task.service.CheckTaskService;
import com.wuwenze.poi.ExcelKit;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import javax.xml.crypto.Data;
import java.util.HashMap;
import java.util.List;

/**
 * @Description
 * @Author lyq_j
 * @DATE 2019/10/22 20:21
 **/
@Api(tags = "盘点任务")
@RequestMapping("checkTask")
@RestController
public class CheckTaskController {
    @Autowired
    private CheckTaskService checkTaskService;

    @RequestMapping("")
    public ModelAndView checkTaskIndex(ModelAndView modelAndView){
        modelAndView.setViewName("task/checkTask");
        modelAndView.addObject("orgId", SessionUtil.getUser().getOrgId().toString());
        return modelAndView;
    }

    @RequestMapping("toDesc")
    public ModelAndView toDesc(ModelAndView modelAndView,String id){
        modelAndView.setViewName("task/taskCheckDesc");
        modelAndView.addObject("id",id);
        return modelAndView;
    }

//    @PostMapping(value = "/add")
//    @RequiresPermissions("checkTask:add")
//    @Operation(operation = "盘点任务添加")
//    @ApiOperation(value = "盘点任务添加", httpMethod = "POST")
//    public ResultResponse add(CheckTask checkTask) {
//        //检测设备是否绑定标签
//        checkTaskService.add(checkTask);
//        return DataSetUtile.setSuccessResult(null);
//    }
    @PostMapping(value = "/delete")
    @RequiresPermissions("checkTask:delete")
    @Operation(operation = "盘点任务删除")
    @ApiOperation(value = "盘点任务删除", httpMethod = "POST")
    public ResultResponse delete(CheckTask checkTask) {
        checkTaskService.delete(checkTask);
        return DataSetUtile.setSuccessResult(null);
    }

    @GetMapping(value = "/desc")
    @ApiOperation(value = "盘点任务查看详情")
    public ResultResponse desc(CheckTask checkTask,PageRequest pageRequest) {
        PageInfo<CheckTaskDesc> pageInfo  =checkTaskService.desc(checkTask,pageRequest);
        return DataSetUtile.setPageSuccessResult(pageInfo);
    }

    @GetMapping("/export")
    @RequiresPermissions("checkTask:export")
    @Operation(operation = "盘点任务详情导出")
    @ApiOperation(value = "盘点任务详情导出", httpMethod = "GET", response = ResultResponse.class)
    public void export(CheckTask checkTask, HttpServletResponse response) {
        List<CheckTaskDesc> list = checkTaskService.export(checkTask);
        ExcelKit.$Export(CheckTaskDescExportBase.class, response).downXlsx(list, false);
    }

    @GetMapping("getPage")
    @ResponseBody
    @ApiOperation(value = "盘点任务分页列表", httpMethod = "GET", response = ResultResponse.class)
    public ResultResponse getPage(CheckTask checkTask, PageRequest pageRequest) {
        PageInfo<CheckTask> pageInfo = checkTaskService.getPage(checkTask, pageRequest);
        return DataSetUtile.setPageSuccessResult(pageInfo);
    }

    @PostMapping(value = "/updateState")
    @ApiOperation(value = "盘点任务状态变更", httpMethod = "POST")
    public ResultResponse updateState(CheckTask checkTask) {
        checkTaskService.updateState(checkTask);
        return DataSetUtile.setSuccessResult(null);
    }


    @GetMapping("chenDeviceTid")
    @ApiOperation(value = "检查设备是否绑定Tid标签")
    public ResultResponse chenDeviceTid(ModelAndView modelAndView,CheckTask checkTask){
        String name = checkTaskService.chenDeviceTid(checkTask);
        if(name==null){
            return DataSetUtile.setSuccessResult(null);
        }
        return new ResultResponse().data(name).success();
    }
    //*********************************************************************************************//
    @PostMapping(value = "/add")
    @Operation(operation = "盘点任务添加")
    @ApiOperation(value = "盘点任务添加", httpMethod = "POST")
    public ResultResponse addCheckTask(  CheckTask checkTask) {
        checkTaskService.addCheckTask(checkTask);
        return DataSetUtile.setSuccessResult(null);
    }























    //*********************************************************************************************//

    //***********************************手持机盘点任务接口**************************************//

    @GetMapping(value = "/app/getCheckTaskPage")
    @ApiOperation(value = "app端获取盘点分页列表")
    public ResultResponse getCheckTaskPage(CheckTask checkTask, PageRequest pageRequest) {
        PageInfo<CheckTask> pageInfo = checkTaskService.getCheckTaskPage(checkTask, pageRequest);
        return DataSetUtile.setPageSuccessResult(pageInfo);
    }



    @GetMapping(value = "/app/getCheckTaskDesc")
    @ApiOperation(value = "app端获取盘点任务详情")
    public ResultResponse getCheckTaskDesc(CheckTaskDesc checkTask) {
        List<CheckTaskDesc> list =checkTaskService.getCheckTaskDesc(checkTask);
        return new ResultResponse().success().data(list);
    }

    @GetMapping("/app/checkDeviceTid")
    @ApiOperation(value = "检查设备是否绑定Tid标签")
    public ResultResponse checkDeviceTid(ModelAndView modelAndView,CheckTask checkTask){
        String name = checkTaskService.chenDeviceTid(checkTask);
        if(name==null){
            return DataSetUtile.setSuccessResult(null);
        }
        return new ResultResponse().data(name).success();
    }

    @PostMapping(value = "/app/updateAppCheckTaskDescState")
    @ApiOperation(value = "盘点任务详情状态变更(3:已盘 4:未盘)")
    public ResultResponse updateAppTaskDescState(CheckTaskDesc checkTaskDesc) {
        checkTaskService.updateAppTaskDescState(checkTaskDesc);
        return DataSetUtile.setSuccessResult(null);
    }

    @PostMapping(value = "/app/updateAppTaskState")
    @ApiOperation(value = "盘点任务状态变更(0:待执行 1:执行中 2:已完成 3:待确认)")
    public ResultResponse updateAppTaskState(CheckTask checkTask) {
        checkTaskService.updateAppTaskState(checkTask);

        return new ResultResponse().success().message(checkTask.getState()==1 ?"执行中":"待确认");
    }
    //***********************************手持机盘点任务接口**************************************//

}
