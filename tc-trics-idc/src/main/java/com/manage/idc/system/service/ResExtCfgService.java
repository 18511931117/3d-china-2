package com.manage.idc.system.service;


import com.manage.idc.system.domain.ResExtCfg;

import java.util.List;

/**
 * @Author: WangZiFan
 * @Date: 2019/10/17 16:48
 * @Description:
 */
public interface ResExtCfgService {

    void addResExtCfg(ResExtCfg resExtCfg);

    void updateResExtCfg(ResExtCfg resExtCfg);

    void delResExtCfg(Long id);

    List<ResExtCfg> getList(ResExtCfg resExtCfg);

}
