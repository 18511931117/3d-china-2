package com.manage.idc.task.mapper;

import com.manage.idc.log.domain.AllocationTaskLog;
import com.manage.idc.task.domain.AllocationTask;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface AllocationTaskMapper {
    int deleteByPrimaryKey(Long id);


    int insertSelective(AllocationTask record);

    AllocationTask selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(AllocationTask record);

    int updateByPrimaryKey(AllocationTask record);
    List<AllocationTask> selectByCondition(Map<String, Object> setQueryMap);

    List<AllocationTask> getAppCheckTaskPage(Map<String, Object> setQueryMap);

    AllocationTask getByTask(AllocationTask allocationTask);
}