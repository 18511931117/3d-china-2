package com.manage.idc.task.mapper;

import com.manage.idc.task.domain.RepairTaskDesc;
import com.manage.idc.task.domain.ScrapTaskDesc;
import org.apache.ibatis.annotations.Mapper;

import java.util.ArrayList;
import java.util.List;

@Mapper
public interface ScrapTaskDescMapper {
    int deleteByPrimaryKey(Long id);

    int insert(ScrapTaskDesc record);

    int insertSelective(ScrapTaskDesc record);

    ScrapTaskDesc selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(ScrapTaskDesc record);

    int updateByPrimaryKey(ScrapTaskDesc record);

    void updateByTaskId(ScrapTaskDesc record);

    List<ScrapTaskDesc> selectByCheckTaskId(Long id);

    List<ScrapTaskDesc> getScrapTaskDesc(ScrapTaskDesc scrapTaskDesc);

    List<Long> getByTaskIdResIdList(Long id);

    ScrapTaskDesc selectOne(ScrapTaskDesc scrapTaskDesc);

    List<ScrapTaskDesc> selectByExport(ArrayList<Long> ids);
}