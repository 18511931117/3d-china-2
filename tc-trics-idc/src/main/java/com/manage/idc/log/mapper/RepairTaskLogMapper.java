package com.manage.idc.log.mapper;

import com.manage.idc.log.domain.RepairTaskLog;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface RepairTaskLogMapper {
    int deleteByPrimaryKey(Long id);

    int insert(RepairTaskLog record);

    int insertSelective(RepairTaskLog record);

    RepairTaskLog selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(RepairTaskLog record);

    int updateByPrimaryKey(RepairTaskLog record);

    List<RepairTaskLog> selectByCondition(Map<String, Object> setQueryMap);
}