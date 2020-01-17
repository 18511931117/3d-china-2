package com.manage.idc.system.mapper;

import com.manage.idc.system.domain.ResExtGrp;
import com.manage.idc.system.domain.ext.ResExtGrpExt;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface ResExtGrpMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ResExtGrp record);

    ResExtGrp selectByPrimaryKey(Integer id);

    List<ResExtGrp> selectAll();

    int updateByPrimaryKey(ResExtGrp record);

    List<ResExtGrpExt> getList(Map<String,Object> map);

    List<ResExtGrp> selectOne(ResExtGrp resExtGrp);
}