package com.manage.idc.task.mapper;

import com.manage.idc.task.domain.CheckTask;
import com.manage.idc.task.domain.CheckTaskDesc;
import org.apache.ibatis.annotations.Mapper;

import java.util.ArrayList;
import java.util.List;

@Mapper
public interface CheckTaskDescMapper {
    int deleteByPrimaryKey(Long id);

    int insert(CheckTaskDesc record);

    int insertSelective(CheckTaskDesc record);

    CheckTaskDesc selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(CheckTaskDesc record);

    int updateByPrimaryKey(CheckTaskDesc record);

    List<CheckTaskDesc> selectByCheckTaskId(Long taskId);

    void updateByTaskId(CheckTaskDesc checkTaskDesc);

    List<CheckTaskDesc> getCheckTaskDesc(CheckTaskDesc checkTask);

    List<Long> getByTaskIdResIdList(Long taskId);

    List<Long> getByCheckTaskIdResId(Long taskId); //查询已盘的设备

    void batchTaskDesc(List<CheckTaskDesc> list);

    List<CheckTaskDesc> selectByExport(ArrayList<Long> ids);
}