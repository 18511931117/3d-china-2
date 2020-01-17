package com.manage.idc.system.service;

import com.github.pagehelper.PageInfo;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.readdev.domain.SysDevUser;
import com.manage.idc.system.domain.SysUser;

import java.util.List;

public interface SysUserService {
    /**
     * 通过用户名查找用户
     *
     * @parusername 用户名
     * @return 用户
     */
    SysUser findByName(String username,Integer userType);
    /**
     * 新增用户
     *
     * @param user user
     */
    void createUser(SysUser user);

    /**
     * 校验用户名是否存在
     * @return
     */
    SysUser checkUser(String username);

    /**
     * 删除用户
     * @param userIds
     */
    void deleteUser(String userIds);


    /**
     * 更新用户
     * @param sysUser
     */
    void updateUser(SysUser sysUser);

    PageInfo<SysUser> getPage(SysUser sysUser, PageRequest pageRequest);

    List<SysUser> getUserByOrgId(SysUser sysUser);

    SysUser selectUserById(SysUser sysUser);

    void editUserPassword(SysUser sysUser);

    PageInfo<SysDevUser> getDXQPage(SysDevUser sysDevUser, PageRequest pageRequest);

    void addDXQUser(SysDevUser sysDevUser);

    void updateDXQUser(SysDevUser sysDevUser);

    void deleteDXQUser(SysDevUser sysDevUser);

    List<SysUser> getOrgCurrentUser(SysUser sysUser);

    List<SysUser> getAppOrgCurrentUser(SysUser sysUser);
}
