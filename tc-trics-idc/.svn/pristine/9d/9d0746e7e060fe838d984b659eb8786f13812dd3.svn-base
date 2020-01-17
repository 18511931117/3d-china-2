package com.manage.idc.system.mapper;

import com.manage.idc.common.entiy.SelectTreeEntity;
import com.manage.idc.common.entiy.Tree;
import com.manage.idc.system.domain.SysOrg;
import com.manage.idc.system.domain.SysUser;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface SysOrgMapper {
    int insert(SysOrg record);

    int insertSelective(SysOrg record);

    void delete(Long orgId);


    void updateByPrimaryKeySelective(SysOrg sysOrg);

    List<SysOrg> selectByRegionList(SysOrg sysOrg);

    SysOrg selectOne(SysOrg sysOrg);

    List<SysOrg> getOrgAll(SysOrg sysOrg);

    List<Tree> getOrgSelectTree(Map<String, Object> setQueryMap);

    List<SysOrg> getList(SysOrg sysOrg);

    void deleteOrg(SysOrg sysOrg);

    List<SysOrg> selectByCondition(Map<String, Object> setQueryMap);
}