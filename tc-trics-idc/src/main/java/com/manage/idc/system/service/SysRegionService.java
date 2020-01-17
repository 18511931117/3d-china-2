package com.manage.idc.system.service;

import com.github.pagehelper.PageInfo;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.system.domain.Rack;
import com.manage.idc.system.domain.SysRegion;
import com.manage.idc.system.domain.SysRole;

import java.util.List;

/**
 * @Description
 * @Author lyq_j
 * @DATE 2019/10/21 13:47
 **/
public interface SysRegionService {
    PageInfo<SysRegion> getPage(SysRegion sysRegion, PageRequest pageRequest);

    void add(SysRegion sysRegion);

    void delete(String regionIds);

    void update(SysRegion sysRegion);

    List<SysRegion> getList(SysRegion sysRegion);
}
