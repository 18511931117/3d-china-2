package com.manage.idc.system.service;

import com.github.pagehelper.PageInfo;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.system.domain.Rack;

/**
 * @Author: WangZiFan
 * @Date: 2019/10/17 16:48
 * @Description:
 */
public interface RackService {
    PageInfo<Rack> getPage(Rack rack, PageRequest pageRequest);

    void updateRack(Rack rack);

    void addRack(Rack rack);

    void delRack(Long id);
}
