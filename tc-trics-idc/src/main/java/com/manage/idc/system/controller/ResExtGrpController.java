package com.manage.idc.system.controller;

import com.manage.idc.common.annotation.Operation;
import com.manage.idc.common.entiy.ResultResponse;
import com.manage.idc.common.utils.DataSetUtile;
import com.manage.idc.system.domain.ResExtGrp;
import com.manage.idc.system.domain.ext.ResExtGrpExt;
import com.manage.idc.system.service.ResExtGrpService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;


/**
 * @Author: WangZiFan
 * @Date: 2019/10/17 16:48
 * @Description:
 */
@Controller
@RequestMapping("resExtGrp")
@Api(tags = "扩展信息分组管理")
public class ResExtGrpController {
    @Autowired
    private ResExtGrpService resExtGrpService;

    /*
     * @Description: 添加扩展信息分组
     * @Author: WangZiFan
     * @Date: 2019/10/22 9:48
     * @param resExtGrp
     * @return com.manage.idc.common.entiy.ResultResponse
     */
    @PostMapping("addResExtGrp")
    @RequiresPermissions("resExtGrp:addResExtGrp")
    @ResponseBody
    @Operation(operation = "添加扩展信息分组")
    @ApiOperation(value = "添加扩展信息分组", httpMethod = "POST", response = ResultResponse.class)
    public ResultResponse addResExtGrp(ResExtGrp resExtGrp){
        resExtGrpService.addResExtGrp(resExtGrp);
        return DataSetUtile.setSuccessResult(null);
    }

    /*
     * @Description: TODO
     * @Author: WangZiFan
     * @Date: 2019/10/22 10:14
     * @param resExtGrp
     * @return com.manage.idc.common.entiy.ResultResponse
     */
    @GetMapping("getList")
    @ResponseBody
    @ApiOperation(value = "添加扩展信息分组列表", httpMethod = "GET", response = ResultResponse.class)
    public ResultResponse getList(ResExtGrp resExtGrp){
        List<ResExtGrpExt> list = resExtGrpService.getList(resExtGrp);
        return DataSetUtile.setSuccessResult(list);
    }


    /*
     * @Description: 扩展字段页面
     * @Author: WangZiFan
     * @Date: 2019/11/3 17:34
     * @param model
     * @return org.springframework.web.servlet.ModelAndView
     */
    @GetMapping("toResExt")
    @ApiOperation(value = "扩展字段页面", httpMethod = "GET", response = ResultResponse.class)
    public ModelAndView toResExt(ModelAndView model){
        model.setViewName("system/resExt");
        return model;
    }



}
