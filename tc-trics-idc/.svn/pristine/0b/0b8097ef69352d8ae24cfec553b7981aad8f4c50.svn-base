package com.manage.idc.task.mapper;

import com.manage.idc.task.domain.CheckTask;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface CheckTaskMapper {
    int deleteByPrimaryKey(Long id);

    int insert(CheckTask record);

    int insertSelective(CheckTask record);

    CheckTask selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(CheckTask record);

    int updateByPrimaryKey(CheckTask record);

    List<CheckTask> selectByCondition(Map<String, Object> setQueryMap);

    List<CheckTask> getCheckTaskPage(Map<String, Object> setQueryMap);
}