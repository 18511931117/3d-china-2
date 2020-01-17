package com.manage.idc.system.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.manage.idc.common.entiy.IdcConstant;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.common.entiy.SelectTreeEntity;
import com.manage.idc.common.entiy.Tree;
import com.manage.idc.common.utils.*;
import com.manage.idc.system.domain.SysMenu;
import com.manage.idc.system.domain.SysOrg;
import com.manage.idc.system.domain.SysUser;
import com.manage.idc.system.mapper.SysOrgMapper;
import com.manage.idc.system.service.SysOrgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

/**
 * @Description
 * @Author lyq_j
 * @DATE 2019/10/18 14:05
 **/
@Service
public class SysOrgServiceImpl implements SysOrgService {
    @Autowired
    private SysOrgMapper sysOrgMapper;

    @Override
    @Transactional
    public void add(SysOrg sysOrg) {
        ChineseToEnglish cte = new ChineseToEnglish();
        sysOrg.setId(IdGen.getUUId());
        sysOrg.setIsDel(IdcConstant.SYSTEM_ISDEL.NOT_DEL);
        sysOrg.setCreateTime(new Date());
        sysOrg.setUpdateTime(new Date());
        if(sysOrg.getParentId()==null){
            sysOrg.setParentId(0L);
            sysOrg.setLevel(1);
        }else{
            //查询上级编码
            SysOrg sysOrg2 = new SysOrg();
            sysOrg2.setId(sysOrg.getParentId());
            SysOrg sysOrg1 = sysOrgMapper.selectOne(sysOrg2);
            sysOrg.setLevel(sysOrg1.getLevel()+1);
            sysOrg.setFullCode(sysOrg1.getFullCode()+"_"+cte.getAllFirstLetter(sysOrg.getFullCode()));
        }
        sysOrgMapper.insertSelective(sysOrg);
    }

    @Override
    @Transactional
    public void delete(SysOrg sysOrg) {
        sysOrg.setIsDel(IdcConstant.SYSTEM_ISDEL.DEL);
        sysOrgMapper.deleteOrg(sysOrg);
    }

    @Override
    @Transactional
    public void update(SysOrg sysOrg) {
        sysOrg.setUpdateTime(new Date());
        SysOrg sysOrg2 = new SysOrg();
        sysOrg2.setId(sysOrg.getParentId());
        SysOrg sysOrg1 = sysOrgMapper.selectOne(sysOrg2);
        sysOrg.setLevel(sysOrg1.getLevel()+1);
        String fullCode = sysOrg.getFullCode().replace(sysOrg1.getFullCode(), "").replace("_","");
        sysOrg.setFullCode(sysOrg1.getFullCode()+"_"+fullCode);
        sysOrg.setIsDel(IdcConstant.SYSTEM_ISDEL.NOT_DEL);
        sysOrgMapper.updateByPrimaryKeySelective(sysOrg);
    }

    @Override
    public Tree<SysOrg> getTree(SysOrg sysOrg) {
        sysOrg.setIsDel(IdcConstant.SYSTEM_ISDEL.NOT_DEL);
        List<SysOrg> sysOrgs = sysOrgMapper.selectByRegionList(sysOrg);
        List<Tree<SysOrg>> menuTrees = this.convertMenus(sysOrgs);
        return TreeUtil.buildMenuTree(menuTrees);
    }
    private List<Tree<SysOrg>> convertMenus(List<SysOrg> sysOrgs) {
        List<Tree<SysOrg>> trees = new ArrayList<>();
        sysOrgs.forEach(menu -> {
            Tree<SysOrg> tree = new Tree<>();
            tree.setId(String.valueOf(menu.getId()));
            tree.setParentId(String.valueOf(menu.getParentId()));
            tree.setTitle(menu.getName());
            tree.setData(menu);
            trees.add(tree);
        });
        return trees;
    }

    @Override
    public List<SysOrg> getOrgAll(SysOrg sysOrg) {
        sysOrg.setIsDel(IdcConstant.SYSTEM_ISDEL.NOT_DEL);
        return sysOrgMapper.getOrgAll(sysOrg);
    }

    /*
     * @Description: 获取机构树形下拉框
     * @Author: WangZiFan
     * @Date: 2019/10/29 16:52
     * @param
     * @return java.util.List<com.manage.idc.common.entiy.SelectTreeEntity>
     */
    @Override
    public List<Tree> getOrgSelectTree(String regioneId) {
        Map<String, Object> map = new HashMap<>();
        map.put("regioneId",regioneId);
        map.put("parentId",SessionUtil.getUser().getOrgId());
        return sysOrgMapper.getOrgSelectTree(DataSetUtile.setQueryMap(map,null, SessionUtil.getUser()));
    }

    @Override
    public List<SysOrg> getList(SysOrg sysOrg) {
        sysOrg.setIsDel(IdcConstant.SYSTEM_ISDEL.NOT_DEL);
        sysOrg.setFullCode(SessionUtil.getUser().getFullCode());
        SysOrg sysOrg1 = new SysOrg();
        sysOrg1.setId(SessionUtil.getUser().getOrgId());
        SysOrg sysOrg2 = sysOrgMapper.selectOne(sysOrg1);
        if (sysOrg2.getLevel()==3){
            sysOrg.setPid(sysOrg2.getParentId());
        }
        return sysOrgMapper.getList(sysOrg);
    }

    @Override
    public PageInfo<SysOrg> getPage(SysOrg sysOrg, PageRequest pageRequest) {
        sysOrg.setIsDel(IdcConstant.SYSTEM_ISDEL.NOT_DEL);
        if(null != pageRequest){
            PageHelper.startPage(pageRequest.getPage(),pageRequest.getLimit());
        }
        List<SysOrg> list = sysOrgMapper.selectByCondition(DataSetUtile.setQueryMap(sysOrg,pageRequest,SessionUtil.getUser()));
        return new PageInfo(list);
    }

    @Override
    public List<SysOrg> getCurrentOrg(SysOrg sysOrg) {
        sysOrg.setIsDel(IdcConstant.SYSTEM_ISDEL.NOT_DEL);
        sysOrg.setFullCode(SessionUtil.getUser().getFullCode());
        return sysOrgMapper.getOrgAll(sysOrg);
    }

    @Override
    public List<SysOrg> getCurrentAppOrg(SysOrg sysOrg) {
        sysOrg.setIsDel(IdcConstant.SYSTEM_ISDEL.NOT_DEL);
        return sysOrgMapper.getOrgAll(sysOrg);
    }
}
