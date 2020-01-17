package com.manage.idc.system.controller;

import com.github.pagehelper.PageInfo;
import com.manage.idc.common.annotation.Operation;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.common.entiy.ResultResponse;
import com.manage.idc.common.entiy.SelectTreeEntity;
import com.manage.idc.common.entiy.Tree;
import com.manage.idc.common.utils.DataSetUtile;
import com.manage.idc.common.utils.SessionUtil;
import com.manage.idc.system.domain.SysMenu;
import com.manage.idc.system.domain.SysOrg;
import com.manage.idc.system.domain.SysUser;
import com.manage.idc.system.mapper.SysOrgMapper;
import com.manage.idc.system.service.SysMenuService;
import com.manage.idc.system.service.SysOrgService;
import com.manage.idc.task.domain.ScrapTaskDesc;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.constraints.NotBlank;
import java.util.List;

/**
 * @Description
 * @Author lyq_j
 * @DATE 2019/10/18 11:36
 **/
@Api(tags = "组织机构管理")
@RestController
@RequestMapping("/org")
public class SysOrgController {
    @Autowired
    private SysOrgService sysOrgService;
    @Autowired
    private SysOrgMapper sysOrgMapper;
    @RequestMapping("")
    public ModelAndView orgIdex(ModelAndView model){
        //根据机构查询区域ID
        SysOrg sysOrg = new SysOrg();
        sysOrg.setId(SessionUtil.getUser().getOrgId());
        String regionId = sysOrgMapper.selectOne(sysOrg).getRegionId();
        model.addObject("currentRegionId",regionId.toString());
        model.setViewName("system/org");
        return model;
    }

//    @RequestMapping(value = "/tree", method = RequestMethod.POST)
//    @ApiOperation(value = "组织机构列表树", httpMethod = "POST")
//    @ResponseBody
//    public ResultResponse getTree(SysOrg sysOrg) {
//        Tree<SysOrg> menus = sysOrgService.getTree(sysOrg);
//        return new ResultResponse().success().data(menus.getChilds());
//    }
    @GetMapping(value = "/getList")
    @ApiOperation(value = "组织机构列表树")
    @ResponseBody
    public ResultResponse getList(SysOrg sysOrg) {
        List<SysOrg> lists = sysOrgService.getList(sysOrg);
        return DataSetUtile.setSuccessResult(lists);
    }


    @PostMapping(value = "/add")
    @RequiresPermissions("org:add")
    @Operation(operation = "组织机构添加")
    @ApiOperation(value = "组织机构添加", httpMethod = "POST")
    @ResponseBody
    public ResultResponse add(SysOrg sysOrg) {
        sysOrgService.add(sysOrg);
        return DataSetUtile.setSuccessResult(null);
    }

    @PostMapping(value = "/delete")
    @RequiresPermissions("org:delete")
    @Operation(operation = "组织机构删除")
    @ApiOperation(value = "组织机构删除", httpMethod = "POST")
    @ResponseBody
    public ResultResponse deleteMenus(SysOrg sysOrg) {
        sysOrgService.delete(sysOrg);
        return DataSetUtile.setSuccessResult(null);
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    @RequiresPermissions("org:update")
    @Operation(operation = "组织机构修改")
    @ApiOperation(value = "组织机构修改", httpMethod = "POST")
    @ResponseBody
    public ResultResponse update(SysOrg sysOrg) {
        sysOrgService.update(sysOrg);
        return DataSetUtile.setSuccessResult(null);
    }

    /**
     * 获取所有部门
     */
    @GetMapping(value = "/getOrgAll")
    public ResultResponse getOrgAll(SysOrg sysOrg) {
        List<SysOrg> list =sysOrgService.getOrgAll(sysOrg);
        return DataSetUtile.setSuccessResult(list);
    }
    /**
     * 获取所有部门
     */
    @GetMapping(value = "/getOrgCurrent")
    public ResultResponse getCurrentOrg(SysOrg sysOrg) {
        List<SysOrg> list =sysOrgService.getCurrentOrg(sysOrg);
        return DataSetUtile.setSuccessResult(list);
    }

    /*
     * @Description: 获取机构树形下拉框
     * @Author: WangZiFan
     * @Date: 2019/10/29 16:50
     * @param
     * @return com.manage.idc.common.entiy.ResultResponse
     */
    @GetMapping("/getOrgSelectTree")
    public ResultResponse getOrgSelectTree(String regioneId){
       List<Tree> list =  sysOrgService.getOrgSelectTree(regioneId);
        return new ResultResponse().success().data(list);
    }

    @RequestMapping("getPage")
    @ResponseBody
    public ResultResponse getPage(SysOrg sysOrg, PageRequest pageRequest){
        PageInfo<SysOrg> pageInfo = sysOrgService.getPage(sysOrg,pageRequest);
        return DataSetUtile.setPageSuccessResult(pageInfo);
    }


}
