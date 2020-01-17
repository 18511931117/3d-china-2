package com.manage.idc.system.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.manage.idc.common.entiy.IdcConstant;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.common.utils.DataSetUtile;
import com.manage.idc.common.utils.IdGen;
import com.manage.idc.common.utils.SessionUtil;
import com.manage.idc.system.domain.SysRole;
import com.manage.idc.system.domain.SysRoleMenu;
import com.manage.idc.system.mapper.SysRoleMapper;
import com.manage.idc.system.service.SysRoleMenuService;
import com.manage.idc.system.service.SysRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

/**
 * @Description
 * @Author lyq_j
 * @DATE 2019/10/14 10:12
 **/
@Service
public class SysRoleServiceImpl implements SysRoleService {
    @Autowired
    private SysRoleMapper sysRoleMapper;
    @Autowired
    private SysRoleMenuService sysRoleMenuService;

    @Override
    public List<SysRole> findUserRole(String username) {

        return sysRoleMapper.findUserRole(username);
    }

    @Override
    public PageInfo<SysRole> getPage(SysRole sysRole, PageRequest pageRequest) {
        sysRole.setIsDel(IdcConstant.SYSTEM_ISDEL.NOT_DEL);
//        sysRole.setFullCode(SessionUtil.getUser().getFullCode());
        if(pageRequest!=null){
            PageHelper.startPage(pageRequest.getPage(),pageRequest.getLimit());
        }
        List<SysRole> list = sysRoleMapper.selectByCondition(DataSetUtile.setQueryMap(sysRole,pageRequest,SessionUtil.getUser()));
        return new PageInfo<SysRole>(list);
    }

    @Override
    @Transactional
    public void createRole(SysRole sysRole) {
        sysRole.setId(IdGen.getUUId());
        sysRole.setIsDel(IdcConstant.SYSTEM_ISDEL.NOT_DEL);
        sysRole.setCreateTime(new Date());
        sysRole.setUpdateTime(new Date());
        sysRole.setOrgId(SessionUtil.getUser().getOrgId());
        //新加角色
        sysRoleMapper.createRole(sysRole);
        // 添加角色菜单关联关系
        Arrays.stream(sysRole.getMenuIds().split(",")).forEach(menuId -> {
            SysRoleMenu sysRoleMenu = new SysRoleMenu();
            sysRoleMenu.setRoleId(sysRole.getId());
            sysRoleMenu.setMenuId(Long.parseLong(menuId));
            sysRoleMenuService.createRoleMenu(sysRoleMenu);
        });


    }

    @Override
    @Transactional
    public void deleteRole(SysRole sysRole) {
        sysRole.setIsDel(IdcConstant.SYSTEM_ISDEL.DEL);
        sysRoleMapper.updateRole(sysRole);
        //删除角色与菜单关联关系
        sysRoleMenuService.deleteRoleMenusByRoleId(sysRole.getId());
    }

    @Override
    @Transactional
    public void updateRole(SysRole sysRole) {
        sysRole.setUpdateTime(new Date());
        //更新角色
        sysRoleMapper.updateRole(sysRole);
        //更新角色绑定
        sysRoleMenuService.deleteRoleMenusByRoleId(sysRole.getId());
        Arrays.stream(sysRole.getMenuIds().split(",")).forEach(menuId -> {
            SysRoleMenu sysRoleMenu = new SysRoleMenu();
            sysRoleMenu.setRoleId(sysRole.getId());
            sysRoleMenu.setMenuId(Long.parseLong(menuId));
            sysRoleMenuService.createRoleMenu(sysRoleMenu);
        });
    }

    @Override
    public List<SysRole> getRole(SysRole sysRole) {
        sysRole.setFullCode(SessionUtil.getUser().getFullCode());
        return sysRoleMapper.getRole(sysRole);
    }
}
