package com.manage.idc.system.service;

import com.github.pagehelper.PageInfo;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.system.domain.Rack;
import com.manage.idc.system.domain.ResExtGrp;
import com.manage.idc.system.domain.ext.ResExtGrpExt;

import java.util.List;

/**
 * @Author: WangZiFan
 * @Date: 2019/10/17 16:48
 * @Description:
 */
public interface ResExtGrpService {

    void addResExtGrp(ResExtGrp resExtGrp);

    List<ResExtGrpExt> getList(ResExtGrp resExtGrp);
}
