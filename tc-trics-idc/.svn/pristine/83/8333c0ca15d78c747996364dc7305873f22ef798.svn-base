package com.manage.idc.system.mapper;

import com.manage.idc.system.domain.Rack;
import com.manage.idc.system.domain.SysRegion;
import org.apache.ibatis.annotations.Mapper;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Mapper
public interface SysRegionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SysRegion record);

    int insertSelective(SysRegion record);

    SysRegion selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SysRegion record);

    int updateByPrimaryKey(SysRegion record);

    List<SysRegion> selectByCondition(Map<String, Object> setQueryMap);

    void delete(ArrayList<Long> idList);

    List<SysRegion> getList(SysRegion sysRegion);
}