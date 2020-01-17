package com.manage.idc.system.mapper;

import com.manage.idc.system.domain.SysUserRole;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * @Description
 * @Author lyq_j
 * @DATE 2019/10/17 10:06
 **/
@Mapper
public interface SysUserRoleMapper {

    int insert(SysUserRole record);
    /**
     * 更新用户
     * @param sysUserRole
     */
    void updateUserRole(SysUserRole sysUserRole);

    SysUserRole  getUserByRoleId(Long id);

    void deleteUserRolesByUserId (Long userId);


}
