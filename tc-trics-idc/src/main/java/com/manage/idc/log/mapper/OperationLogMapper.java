package com.manage.idc.log.mapper;

import com.manage.idc.log.domain.SystemLog;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface OperationLogMapper {
    int deleteByPrimaryKey(Long id);

    int insert(SystemLog record);

    int insertSelective(SystemLog record);

    SystemLog selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(SystemLog record);

    int updateByPrimaryKey(SystemLog record);

    List<SystemLog> selectByCondition(Map<String, Object> setQueryMap);

    List<SystemLog> selectList(SystemLog systemLog);

    List<SystemLog> selectExportList(List<Long> ids);
}