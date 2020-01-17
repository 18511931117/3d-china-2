package com.manage.idc.system.mapper;

import com.manage.idc.system.domain.AlarmsLogRole;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface AlarmsLogRoleMapper {
    int deleteByPrimaryKey(Long id);

    int insert(AlarmsLogRole record);

    AlarmsLogRole selectByPrimaryKey(Long id);

    List<AlarmsLogRole> selectAll();

    int updateByPrimaryKey(AlarmsLogRole record);

    List<Long> selectRoleIdByOrgId(Long orgId);

    void deleteByOrgId(Long orgId);

}