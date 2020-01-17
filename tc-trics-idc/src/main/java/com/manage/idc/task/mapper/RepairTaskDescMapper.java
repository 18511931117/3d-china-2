package com.manage.idc.task.mapper;

import com.manage.idc.task.domain.RepairTaskDesc;
import org.apache.ibatis.annotations.Mapper;

import java.util.ArrayList;
import java.util.List;

@Mapper
public interface RepairTaskDescMapper {
    int deleteByPrimaryKey(Long id);

    int insert(RepairTaskDesc record);

    int insertSelective(RepairTaskDesc record);

    RepairTaskDesc selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(RepairTaskDesc record);

    int updateByPrimaryKey(RepairTaskDesc record);

    void updateByTaskId(RepairTaskDesc repairTaskDesc);

    List<RepairTaskDesc> selectByCheckTaskId(Long id);

    List<RepairTaskDesc> getRepairTaskDesc(RepairTaskDesc repairTask);

    List<Long> getByTaskIdResIdList(Long taskId);

    RepairTaskDesc selectOne(RepairTaskDesc repairTaskDesc);

    List<RepairTaskDesc> selectByExport(ArrayList<Long> ids);
}