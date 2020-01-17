package com.manage.idc.log.mapper;

import com.manage.idc.log.domain.CheckTaskLog;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface CheckTaskLogMapper {
    int deleteByPrimaryKey(Long id);

    int insert(CheckTaskLog record);

    int insertSelective(CheckTaskLog record);

    CheckTaskLog selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(CheckTaskLog record);

    int updateByPrimaryKey(CheckTaskLog record);

    List<CheckTaskLog> selectByCondition(Map<String, Object> setQueryMap);
}