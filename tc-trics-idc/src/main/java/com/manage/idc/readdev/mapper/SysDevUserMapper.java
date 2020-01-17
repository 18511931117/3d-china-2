package com.manage.idc.readdev.mapper;

import com.manage.idc.readdev.domain.SysDevUser;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface SysDevUserMapper {
    int deleteByPrimaryKey(Long id);

    int insert(SysDevUser record);

    SysDevUser selectByPrimaryKey(Long id);

    List<SysDevUser> selectAll();

    int updateByPrimaryKey(SysDevUser record);

    SysDevUser selectOne(SysDevUser user);

    List<SysDevUser> selectByCondition(Map<String, Object> setQueryMap);
}