package com.manage.idc.system.controller;

import com.github.pagehelper.PageInfo;
import com.manage.idc.common.annotation.Operation;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.common.entiy.ResultResponse;
import com.manage.idc.common.entiy.Tree;
import com.manage.idc.common.utils.DataSetUtile;
import com.manage.idc.system.domain.SysParam;
import com.manage.idc.system.domain.SysParam;
import com.manage.idc.system.domain.SysUser;
import com.manage.idc.system.service.SysParamService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

/**
 * @Description
 * @Author lyq_j
 * @DATE 2019/10/22 15:36
 **/
@Api(tags = "系统参数管理")
@RestController
@RequestMapping("/param")
public class SysParamController {

    @Autowired
    private SysParamService sysParamService;

    @RequestMapping("")
    public ModelAndView roleIdex(ModelAndView model){
        model.setViewName("system/param");
        return model;
    }
    @RequestMapping("/toParamAdd")
    public ModelAndView toParamAdd(ModelAndView model){
        model.setViewName("system/paramAdd");
        return model;
    }
    @RequestMapping("/toParamEdit")
    public ModelAndView toParamEdit(ModelAndView model,SysParam sysParam){
        sysParam =sysParamService.getParamById(sysParam);
        model.addObject("p",sysParam);
        model.setViewName("system/paramEdit");
        return model;
    }
    @GetMapping(value = "/getPage")
    @ApiOperation(value = "系统参数列表树", httpMethod = "POST")
    @ResponseBody
    public ResultResponse getTree(SysParam sysParam,PageRequest pageRequest) {
        PageInfo<SysParam> pageInfo = sysParamService.getPage(sysParam,pageRequest);
        return DataSetUtile.setPageSuccessResult(pageInfo);
    }


    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @RequiresPermissions("param:add")
    @Operation(operation = "系统参数添加")
    @ApiOperation(value = "系统参数添加", httpMethod = "POST")
    @ResponseBody
    public ResultResponse add(SysParam sysParam) {
        sysParamService.add(sysParam);
        return DataSetUtile.setSuccessResult(null);
    }

    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    @RequiresPermissions("param:delete")
    @Operation(operation = "系统参数删除")
    @ApiOperation(value = "系统参数删除", httpMethod = "POST")
    @ResponseBody
    public ResultResponse deleteMenus(SysParam sysParam) {
        sysParamService.delete(sysParam);
        return DataSetUtile.setSuccessResult(null);
    }

    @PostMapping(value = "/update")
    @RequiresPermissions("param:update")
    @Operation(operation = "系统参数修改")
    @ApiOperation(value = "系统参数修改", httpMethod = "POST")
    @ResponseBody
    public ResultResponse update(SysParam sysParam) {
        sysParamService.update(sysParam);
        return DataSetUtile.setSuccessResult(null);
    }

}
