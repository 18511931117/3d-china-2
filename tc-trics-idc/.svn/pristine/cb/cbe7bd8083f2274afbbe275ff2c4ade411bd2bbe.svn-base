package com.manage.idc.system.service;

import com.github.pagehelper.PageInfo;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.system.domain.SysRole;
import com.manage.idc.system.domain.SysUser;

import java.util.List;

public interface SysRoleService {
    /**
     * 通过用户名查找用户角色
     *
     * @param username 用户名
     * @return 用户角色集合
     */
    List<SysRole> findUserRole(String username);


    /**
     * 新增用户
     *
     * @param sysRole sysRole
     */
    void createRole(SysRole sysRole);


    /**
     * 删除角色
     * @param sysRole
     */
    void deleteRole(SysRole sysRole);


    /**
     * 更新角色
     * @param sysRole
     */
    void updateRole(SysRole sysRole);

    PageInfo<SysRole> getPage(SysRole sysRole, PageRequest pageRequest);

    List<SysRole> getRole(SysRole sysRole);
}
