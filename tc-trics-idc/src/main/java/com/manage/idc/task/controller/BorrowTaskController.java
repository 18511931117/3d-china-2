package com.manage.idc.task.controller;

import com.github.pagehelper.PageInfo;
import com.manage.idc.common.annotation.Operation;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.common.entiy.ResultResponse;
import com.manage.idc.common.utils.DataSetUtile;
import com.manage.idc.common.utils.SessionUtil;
import com.manage.idc.task.domain.*;
import com.manage.idc.task.domain.export.BorrowTaskDescExportBase;
import com.manage.idc.task.service.BorrowTaskService;
import com.wuwenze.poi.ExcelKit;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;

/**
 * @Description
 * @Author lyq_j
 * @DATE 2019/10/22 20:23
 **/
@Api(tags = "借用任务")
@RequestMapping("borrowTask")
@RestController
public class BorrowTaskController {
    
    @Autowired
    private BorrowTaskService borrowTaskService;

    @RequestMapping("")
    public ModelAndView borrowTaskIndex(ModelAndView modelAndView){
        modelAndView.setViewName("task/borrowTask");
        modelAndView.addObject("orgId", SessionUtil.getUser().getOrgId().toString());
        return modelAndView;
    }
    @RequestMapping("toDesc")
    public ModelAndView toDesc(ModelAndView modelAndView,String id){
        modelAndView.setViewName("task/borrowTaskDesc");
        modelAndView.addObject("id",id);
        return modelAndView;
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @RequiresPermissions("borrowTask:add")
    @Operation(operation = "借用任务添加")
    @ApiOperation(value = "借用任务添加", httpMethod = "POST")
    public ResultResponse add(BorrowTask borrowTask) {
        borrowTaskService.add(borrowTask);
        return DataSetUtile.setSuccessResult(null);
    }

    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    @RequiresPermissions("borrowTask:delete")
    @Operation(operation = "借用任务删除")
    @ApiOperation(value = "借用任务删除", httpMethod = "POST")
    public ResultResponse del(BorrowTask borrowTask) {
        borrowTaskService.delete(borrowTask);
        return DataSetUtile.setSuccessResult(null);
    }
    @RequestMapping(value = "/updateState", method = RequestMethod.POST)
    @ApiOperation(value = "借用任务状态变更", httpMethod = "POST")
    public ResultResponse updateState(BorrowTask borrowTask) {
        borrowTaskService.updateState(borrowTask);
        return DataSetUtile.setSuccessResult(null);
    }

    @GetMapping(value = "/desc")
    @ApiOperation(value = "借用任务查看详情", httpMethod = "POST")
    public ResultResponse desc(BorrowTask borrowTask, PageRequest pageRequest) {
        PageInfo<BorrowTaskDesc> pageInfo =borrowTaskService.desc(borrowTask,pageRequest);
        return DataSetUtile.setPageSuccessResult(pageInfo);
    }
    @GetMapping("/export")
    @RequiresPermissions("borrowTask:export")
    @Operation(operation = "借用任务详情导出")
    @ApiOperation(value = "借用任务详情导出", httpMethod = "GET", response = ResultResponse.class)
    public void export(BorrowTask borrowTask, HttpServletResponse response) {
        List<BorrowTaskDesc> list = borrowTaskService.export(borrowTask);
        ExcelKit.$Export(BorrowTaskDescExportBase.class, response).downXlsx(list, false);
    }

    @RequestMapping("getPage")
    @ResponseBody
    @ApiOperation(value = "借用任务分页列表", httpMethod = "POST", response = ResultResponse.class)
    public ResultResponse getPage(BorrowTask borrowTask, PageRequest pageRequest) {
        PageInfo<BorrowTask> pageInfo = borrowTaskService.getPage(borrowTask, pageRequest);
        return DataSetUtile.setPageSuccessResult(pageInfo);
    }


    //***********************************手持机借用任务接口**************************************//
    @PostMapping( value = "/app/addBorrowTask")
    @ApiOperation(value = "app端新建借用任务")
    public ResultResponse addBorrowTask(BorrowTask borrowTask) {
        borrowTaskService.add(borrowTask);
        return new ResultResponse().success();
    }

    @GetMapping(value = "/app/getBorrowTaskPage")
    @ApiOperation(value = "app端获取借用分页列表")
    public ResultResponse getBorrowTaskPage(BorrowTask borrowTask, PageRequest pageRequest) {
        PageInfo<BorrowTask> pageInfo = borrowTaskService.getBorrowTaskPage(borrowTask, pageRequest);
        return DataSetUtile.setPageSuccessResult(pageInfo);
    }



    @GetMapping(value = "/app/getBorrowTaskDesc")
    @ApiOperation(value = "app端获取借用任务详情")
    public ResultResponse getBorrowTaskDesc(BorrowTaskDesc borrowTaskDesc) {
        BorrowTask borrowTask = new BorrowTask();
        borrowTask.setId(borrowTaskDesc.getTaskId());
        BorrowTask borrowTask1 = borrowTaskService.getByTask(borrowTask);

        List<BorrowTaskDesc> list =borrowTaskService.getBorrowTaskDesc(borrowTaskDesc);
        HashMap<Object, Object> objectObjectHashMap = new HashMap<>();
        objectObjectHashMap.put("orgDesc",borrowTask1);
        objectObjectHashMap.put("taskDesc",list);
        return new ResultResponse().success().data(objectObjectHashMap);
    }

    @RequestMapping(value = "/app/updateBorrowTaskState", method = RequestMethod.POST)
    @ApiOperation(value = "app借用任务状态变更", httpMethod = "POST")
    public ResultResponse updateBorrowTaskState(BorrowTask borrowTask) {
        borrowTaskService.updateState(borrowTask);
        return DataSetUtile.setSuccessResult(null);
    }
    //***********************************手持机借用任务接口**************************************//




}
