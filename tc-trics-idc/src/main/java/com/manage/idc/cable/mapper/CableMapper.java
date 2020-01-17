package com.manage.idc.cable.mapper;

import com.manage.idc.cable.domain.Cable;
import com.manage.idc.cable.domain.ext.CableExt;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface CableMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Cable record);

    Cable selectByPrimaryKey(Integer id);

    List<Cable> selectAll();

    int updateByPrimaryKey(Cable record);

    void batchInsert(List insertList);

    List<CableExt> selectByCondition(Map<String, Object> setQueryMap);

    Cable selectOne(Cable cable);

    void batchDel(List<Long> ids);

    void untyingLabel(Cable cable);
}