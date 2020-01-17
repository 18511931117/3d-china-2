package com.manage.idc.system.controller;

import com.manage.idc.common.annotation.Operation;
import com.manage.idc.common.entiy.Tree;
import com.manage.idc.common.entiy.ResultResponse;
import com.manage.idc.common.utils.DataSetUtile;
import com.manage.idc.system.domain.SysMenu;
import com.manage.idc.system.service.SysMenuService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.constraints.NotBlank;
import java.util.List;

/**
 * @Description 权限管理
 * @Author lyq_j
 * @DATE 2019/10/16 9:47
 **/
@Api(tags = "菜单管理")
@Controller
@RequestMapping("/menu")
public class SysMenuController {

    @Autowired
    private SysMenuService sysMenuService;

    @RequestMapping("")
    public ModelAndView menuIdex(ModelAndView model){
        model.setViewName("system/menu");
        return model;
    }

//    @GetMapping("getPage")
//    @ResponseBody
//    @ApiOperation(value = "获取菜单分页列表", httpMethod = "GET", response = ResultResponse.class)
//    public ResultResponse getPage(SysMenu sysMenu, PageRequest pageRequest){
//        PageInfo<SysMenu> pageInfo = sysMenuService.getPage(sysMenu,pageRequest);
//        return DataSetUtile.setPageSuccessResult(pageInfo);
//    }

    @GetMapping("getList")
    @ResponseBody
    @ApiOperation(value = "获取菜单列表", httpMethod = "GET", response = ResultResponse.class)
    public ResultResponse getPage(SysMenu sysMenu){
        List<SysMenu> pageInfo = sysMenuService.getList(sysMenu);
        return DataSetUtile.setSuccessResult(pageInfo);
    }



    @PostMapping(value = "/add")
    @RequiresPermissions("menu:add")
    @ApiOperation(value = "菜单添加", httpMethod = "POST")
    @ResponseBody
    @Operation(operation = "菜单添加")
    public ResultResponse add(SysMenu sysMenu) {
        sysMenuService.createMenu(sysMenu);
        return DataSetUtile.setSuccessResult(null);
    }

    @PostMapping(value = "/delete")
    @RequiresPermissions("menu:delete")
    @ApiOperation(value = "菜单删除")
    @ResponseBody
    @Operation(operation = "菜单删除")
    public ResultResponse deleteMenus(@NotBlank(message = "{required}")  String menuId) {
        sysMenuService.deleteMeuns(menuId);
        return DataSetUtile.setSuccessResult(null);
    }

    @PostMapping(value = "/update")
    @RequiresPermissions("menu:update")
    @ApiOperation(value = "菜单修改")
    @Operation(operation = "菜单修改")
    @ResponseBody
    public ResultResponse update(SysMenu sysMenu) {
        sysMenuService.updateMenu(sysMenu);
        return DataSetUtile.setSuccessResult(null);
    }

    /**
     * 首页
     * @param menu
     * @return
     */
    @GetMapping(value = "/tree")
    @ApiOperation(value = "获取菜单树")
    @ResponseBody
    public ResultResponse getMenuTree(SysMenu menu) {
        Tree<SysMenu> menus = sysMenuService.findMenus(menu);
        return new ResultResponse().success().data(menus.getChildren());
    }


    @GetMapping(value = "/getTree")
    @ApiOperation(value = "获取菜单树")
    @ResponseBody
    public ResultResponse getTree(SysMenu menu) {
        Tree<SysMenu> menus = sysMenuService.getTree(menu);
        return DataSetUtile.setSuccessResult(menus.getChildren());
    }



}
