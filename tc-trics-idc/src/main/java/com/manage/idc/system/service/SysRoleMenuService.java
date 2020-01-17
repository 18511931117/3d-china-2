package com.manage.idc.system.service;

import com.manage.idc.system.domain.SysRoleMenu;

import java.util.ArrayList;
import java.util.List;

/**
 * @Description
 * @Author lyq_j
 * @DATE 2019/10/17 10:01
 **/
public interface SysRoleMenuService {

    int createRoleMenu(SysRoleMenu record);

    void updateRoleMenusByRoleId(SysRoleMenu sysRoleMenu);


    void deleteRoleMenusByRoleId(Long roleId);
}
