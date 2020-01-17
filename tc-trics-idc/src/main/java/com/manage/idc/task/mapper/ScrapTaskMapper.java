package com.manage.idc.task.mapper;

import com.manage.idc.task.domain.ScrapTask;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface ScrapTaskMapper {
    int deleteByPrimaryKey(Long id);

    int insert(ScrapTask record);

    int insertSelective(ScrapTask record);

    ScrapTask selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(ScrapTask record);

    int updateByPrimaryKey(ScrapTask record);

    List<ScrapTask> selectByCondition(Map<String, Object> setQueryMap);

    List<ScrapTask> getScrapTaskPage(Map<String, Object> setQueryMap);
}