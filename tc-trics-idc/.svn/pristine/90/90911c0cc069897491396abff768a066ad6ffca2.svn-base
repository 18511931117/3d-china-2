package com.manage.idc.task.mapper;

import com.manage.idc.task.domain.BorrowTask;
import com.manage.idc.task.domain.RepairTask;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface RepairTaskMapper {
    int deleteByPrimaryKey(Long id);

    int insert(RepairTask record);

    int insertSelective(RepairTask record);

    RepairTask selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(RepairTask record);

    int updateByPrimaryKey(RepairTask record);

    List<RepairTask> selectByCondition(Map<String, Object> setQueryMap);

    List<RepairTask> getRepairTaskPage(Map<String, Object> setQueryMap);

    RepairTask getByTask(RepairTask repairTask);
}