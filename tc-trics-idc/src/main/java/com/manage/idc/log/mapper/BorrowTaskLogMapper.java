package com.manage.idc.log.mapper;

import com.manage.idc.log.domain.BorrowTaskLog;
import com.manage.idc.task.domain.BorrowTaskDesc;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface BorrowTaskLogMapper {
    int deleteByPrimaryKey(Long id);

    int insert(BorrowTaskLog record);

    int insertSelective(BorrowTaskLog record);

    BorrowTaskLog selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(BorrowTaskLog record);

    int updateByPrimaryKey(BorrowTaskLog record);

    List<BorrowTaskLog> selectByCondition(Map<String, Object> setQueryMap);
}