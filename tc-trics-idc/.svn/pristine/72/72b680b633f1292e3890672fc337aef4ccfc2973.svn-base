package com.manage.idc.log.mapper;

import com.manage.idc.log.domain.AllocationTaskLog;
import com.manage.idc.task.domain.BorrowTaskDesc;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface AllocationTaskLogMapper {
    int deleteByPrimaryKey(Long id);

    int insert(AllocationTaskLog record);

    int insertSelective(AllocationTaskLog record);

    AllocationTaskLog selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(AllocationTaskLog record);

    int updateByPrimaryKey(AllocationTaskLog record);

    List<AllocationTaskLog> selectByCondition(Map<String, Object> setQueryMap);

}