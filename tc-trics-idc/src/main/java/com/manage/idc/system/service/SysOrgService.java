package com.manage.idc.system.service;

import com.github.pagehelper.PageInfo;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.common.entiy.SelectTreeEntity;
import com.manage.idc.common.entiy.Tree;
import com.manage.idc.system.domain.SysMenu;
import com.manage.idc.system.domain.SysOrg;
import com.manage.idc.system.domain.SysUser;

import java.util.List;

public interface SysOrgService {
    void add(SysOrg sysOrg);

    void delete(SysOrg sysOrg);

    void update(SysOrg sysOrg);

    Tree<SysOrg> getTree(SysOrg sysOrg);

    List<SysOrg> getOrgAll(SysOrg sysOrg);

    List<Tree> getOrgSelectTree(String regioneId);

    List<SysOrg> getList(SysOrg sysOrg);

    PageInfo<SysOrg> getPage(SysOrg sysOrg, PageRequest pageRequest);

    List<SysOrg> getCurrentOrg(SysOrg sysOrg);

    List<SysOrg> getCurrentAppOrg(SysOrg sysOrg);
}
