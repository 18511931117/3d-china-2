package com.manage.idc.system.mapper;

import com.manage.idc.system.domain.SysUser;
import io.swagger.models.auth.In;
import org.apache.ibatis.annotations.Mapper;

import java.util.Collection;
import java.util.List;
import java.util.Map;

@Mapper
public interface SysUserMapper {
    /**
     * 通过用户名查找用户
     *
     * @parasername 用户名
     * @return 用户
     */
    SysUser findByName(String username,Integer userType);
    /**
     * 新增用户
     *
     * @param user user
     */
    int createUser(SysUser user);

    /**
     * 校验用户是否存在
     * @param username
     * @return
     */
     SysUser checkUser(String username);
    /**
     * 删除用户
     * @param sysUser
     */
    void deleteUser(SysUser sysUser);

    /**
     * 更新用户
     * @param sysUser
     */
    void updateUser(SysUser sysUser);

    void deleteUser(List<Long> ids);

    List<SysUser> selectByCondition(Map<String, Object> setQueryMap);

    List<SysUser> getUserByOrgId(SysUser sysUser);

    SysUser selectUserById(SysUser sysUser);

    List<Long> selectUserIdByRole(Map<String, Object> map);

    SysUser selectUserByApp(String username,Integer userType);

    List<SysUser> getOrgCurrentUser(SysUser sysUser);
}