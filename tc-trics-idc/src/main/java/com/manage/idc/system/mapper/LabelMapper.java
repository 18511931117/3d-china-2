package com.manage.idc.system.mapper;

import com.manage.idc.device.domain.ext.ResExtend;
import com.manage.idc.system.domain.Label;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface LabelMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Label record);

    Label selectByPrimaryKey(Long id);

    List<Label> selectAll();

    int updateByPrimaryKey(Label record);

    List<Label> selectByCondition(Map<String, Object> setQueryMap);

    void batchInsert(List dataList);

    void updateByTid(Label label);

    Label selectByTid(String id);

    List<Label> selectNotBindLabel(Map<String, Object> setQueryMap);

    List<Label> selectByOrCondition(Map<String, Object> setQueryMap);
}