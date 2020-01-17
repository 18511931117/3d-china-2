package com.manage.idc.system.mapper;

import com.manage.idc.system.domain.SysRole;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface SysRoleMapper {
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
     * 删除角色（按钮）
     *
     * @param roleIds 菜单（按钮）id
     */
    void deleteRoles(List<Long> roleIds);

    /**
     * 更新角色
     * @param sysRole
     */
    void updateRole(SysRole sysRole);


    List<SysRole> selectByCondition(Map<String, Object> setQueryMap);

    List<SysRole> getRole(SysRole sysRole);
}