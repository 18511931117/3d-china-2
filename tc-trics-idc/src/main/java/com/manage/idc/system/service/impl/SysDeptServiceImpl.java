package com.manage.idc.system.service.impl;

import com.manage.idc.system.mapper.SysUserMapper;
import com.manage.idc.system.service.SysDeptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @Description
 * @Author lyq_j
 * @DATE 2019/10/14 10:23
 **/
@Service
@Transactional
public class SysDeptServiceImpl implements SysDeptService {
    @Autowired
    private SysUserMapper sysUserMapper;

}
