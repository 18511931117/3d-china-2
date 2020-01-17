package com.manage.idc.system.controller;

import com.github.pagehelper.PageInfo;
import com.manage.idc.common.annotation.Operation;
import com.manage.idc.common.entiy.ResultResponse;
import com.manage.idc.common.entiy.Tree;
import com.manage.idc.common.utils.DataSetUtile;
import com.manage.idc.system.domain.ResType;
import com.manage.idc.system.service.ResTypeService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.unit.DataUnit;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @Author: WangZiFan
 * @Date: 2019/10/17 16:48
 * @Description:
 */
@Controller
@RequestMapping("resType")
@Api(tags = "设备分类管理")
public class ResTypeController {
    @Autowired
    private ResTypeService resTypeService;

    /*
     * @Description: 设备分类页面
     * @Author: WangZiFan
     * @Date: 2019/10/30 10:01
     * @param model
     * @return org.springframework.web.servlet.ModelAndView
     */
    @GetMapping("toResType")
    @ApiOperation(value = "设备分类页面", httpMethod = "GET", response = ResultResponse.class)
    public ModelAndView toResType(ModelAndView model){
        model.setViewName("system/resType");
        return model;
    }

    /*
     * @Description: 设备分类修改
     * @Author: WangZiFan
     * @Date: 2019/11/2 19:23
     * @param model
     * @return org.springframework.web.servlet.ModelAndView
     */
    @GetMapping("toEdit/{id}")
    @ApiOperation(value = "设备分类修改页面", httpMethod = "GET", response = ResultResponse.class)
    public ModelAndView toEdit(ModelAndView model,@PathVariable("id") Long id){
        ResType resType = new ResType();
        resType.setId(id);
        ResType type = resTypeService.getList(resType).get(0);
        model.setViewName("system/resTypeEdit");
        model.addObject("bean",type);
        return model;
    }
    /*
     * @Description: 添加页面
     * @Author: WangZiFan
     * @Date: 2019/11/2 17:48
     * @param model
     * @return org.springframework.web.servlet.ModelAndView
     */
    @GetMapping("toAddResType")
    @ApiOperation(value = "添加页面", httpMethod = "GET", response = ResultResponse.class)
    public ModelAndView toAddResType(ModelAndView model,ResType resType){
        model.addObject("bean",resType);
        model.setViewName("system/resTypeAdd");
        return model;
    }

    /*
     * @Description: 获取设备分类信息
     * @Author: WangZiFan
     * @Date: 2019/10/19 14:47
     * @param resType
     * @return com.manage.idc.common.entiy.ResultResponse
     */
    @GetMapping("getList")
    @ResponseBody
    @ApiOperation(value = "获取设备分类列表", httpMethod = "GET", response = ResultResponse.class)
    public ResultResponse getList(ResType resType){
        List<ResType> list = resTypeService.getList(resType);
        return DataSetUtile.setPageSuccessResult(new PageInfo(list));
    }




    /*
     * @Description: 添加设备分类
     * @Author: WangZiFan
     * @Date: 2019/10/19 15:24
     * @param resType
     * @return com.manage.idc.common.entiy.ResultResponse
     */
    @PostMapping("addResType")
    @RequiresPermissions("resType:addResType")
    @ResponseBody
    @Operation(operation = "添加设备分类信息")
    @ApiOperation(value = "添加设备分类信息", httpMethod = "POST", response = ResultResponse.class)
    public ResultResponse addRresType(ResType resType){
        resTypeService.addRresType(resType);
        return DataSetUtile.setSuccessResult(null);
    }

    /*
     * @Description: 删除设备分类
     * @Author: WangZiFan
     * @Date: 2019/10/19 15:25
     * @param id
     * @return com.manage.idc.common.entiy.ResultResponse
     */
    @PostMapping("delResType/{id}")
    @RequiresPermissions("resType:delResType")
    @ResponseBody
    @Operation(operation = "删除设备分类列表")
    @ApiOperation(value = "删除设备分类列表", httpMethod = "POST", response = ResultResponse.class)
    public ResultResponse delRresType(@PathVariable("id") Long id){
        resTypeService.delRresType(id);
        return DataSetUtile.setSuccessResult(null);
    }

    /*
     * @Description: 修改设备分类
     * @Author: WangZiFan
     * @Date: 2019/10/19 15:29
     * @param resType
     * @return com.manage.idc.common.entiy.ResultResponse
     */
    @PostMapping("updateResType")
    @RequiresPermissions("resType:updateResType")
    @ResponseBody
    @Operation(operation = "编辑设备分类列表")
    @ApiOperation(value = "编辑设备分类列表", httpMethod = "POST", response = ResultResponse.class)
    public ResultResponse updateResType(ResType resType){
        resTypeService.updateResType(resType);
        return DataSetUtile.setSuccessResult(null);
    }


    @GetMapping("/getTree")
    @ResponseBody
    public ResultResponse getTree(){
        List<Tree> list =  resTypeService.getTree();
        return new ResultResponse().success().data(list);
    }

}
