package com.manage.idc.system.service.impl;

import com.manage.idc.common.entiy.IdcConstant;
import com.manage.idc.system.domain.SysRoleMenu;
import com.manage.idc.system.mapper.SysRoleMenuMapper;
import com.manage.idc.system.service.SysRoleMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * @Description
 * @Author lyq_j
 * @DATE 2019/10/17 10:01
 **/
@Service
public class SysRoleMenuServiceImpl implements SysRoleMenuService {
    @Autowired
    private SysRoleMenuMapper sysRoleMenuMapper;

    @Override
    public void updateRoleMenusByRoleId(SysRoleMenu sysRoleMenu) {
        sysRoleMenuMapper.updateRoleMenusByRoleId(sysRoleMenu);
    }

    @Override
    @Transactional
    public void deleteRoleMenusByRoleId(Long roleId) {
        sysRoleMenuMapper.deleteRoleMenusByRoleId(roleId);
    }

    @Override
    @Transactional
    public int createRoleMenu(SysRoleMenu record) {
        record.setIsDel(IdcConstant.SYSTEM_ISDEL.NOT_DEL);
        return sysRoleMenuMapper.createRoleMenu(record);
    }
}
