package com.manage.idc.task.mapper;

import com.manage.idc.task.domain.BorrowTask;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface BorrowTaskMapper {
    int deleteByPrimaryKey(Long id);

    int insert(BorrowTask record);

    int insertSelective(BorrowTask record);

    BorrowTask selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(BorrowTask record);

    int updateByPrimaryKey(BorrowTask record);

    List<BorrowTask> selectByCondition(Map<String, Object> setQueryMap);

    List<BorrowTask> getBorrowTaskPage(Map<String, Object> setQueryMap);

    BorrowTask getByTask(BorrowTask borrowTask);
}