package com.manage.idc.system.mapper;

import com.manage.idc.system.domain.SysRoleMenu;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * @Description
 * @Author lyq_j
 * @DATE 2019/10/17 10:05
 **/
@Mapper
public interface SysRoleMenuMapper {

    int createRoleMenu(SysRoleMenu record);

    void updateRoleMenusByRoleId(SysRoleMenu sysRoleMenu);

    List<Long> getMenusId(Long roleId);

    void deleteRoleMenusByRoleId(Long roleId);
}
