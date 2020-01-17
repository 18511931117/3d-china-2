package com.manage.idc.system.service;

import com.manage.idc.system.domain.SysUser;
import com.manage.idc.system.domain.SysUserRole;

import java.util.List;

/**
 * @Description
 * @Author lyq_j
 * @DATE 2019/10/17 10:00
 **/
public interface SysUserRoleService {

    int insert(SysUserRole record);

    void deleteUserRolesByUserId (Long userId);
    /**
     * 更新用户
     * @param sysUserRole
     */
    void updateUserRole(SysUserRole sysUserRole);

}
