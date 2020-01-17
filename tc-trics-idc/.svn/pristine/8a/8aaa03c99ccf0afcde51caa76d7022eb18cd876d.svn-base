package com.manage.idc.system.service;

import com.github.pagehelper.PageInfo;
import com.manage.idc.common.entiy.Tree;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.system.domain.SysMenu;

import java.util.List;

/**
 * @Description
 * @Author lyq_j
 * @DATE 2019/10/14 10:17
 **/
public interface SysMenuService {
    /**
     * 查找用户权限集
     *
     * @param username 用户名
     * @return 用户权限集合
     */
    List<SysMenu> findUserPermissions(String username);
    /**
     * 新增菜单（按钮）
     *
     * @param sysMenu 菜单（按钮）对象
     */
    void createMenu(SysMenu sysMenu);
    /**
     * 删除菜单（按钮）
     *
     * @param menuIds 菜单（按钮）id
     */
    void deleteMeuns(String menuIds);
    /**
     * 更新菜单（按钮）
     * @param sysMenu
     */
    void updateMenu(SysMenu sysMenu);


    Tree<SysMenu> findMenus(SysMenu menu);

    PageInfo<SysMenu> getPage(SysMenu sysMenu, PageRequest pageRequest);

    List<SysMenu> getList(SysMenu sysMenu);

    Tree<SysMenu> getTree(SysMenu menu);
}
