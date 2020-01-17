package com.manage.idc.log.mapper;

import com.manage.idc.log.domain.ScrapTaskLog;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface ScrapTaskLogMapper {
    int deleteByPrimaryKey(Long id);

    int insert(ScrapTaskLog record);

    int insertSelective(ScrapTaskLog record);

    ScrapTaskLog selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(ScrapTaskLog record);

    int updateByPrimaryKey(ScrapTaskLog record);


    List<ScrapTaskLog> selectByCondition(Map<String, Object> setQueryMap);
}