package com.manage.idc.system.mapper;

import com.manage.idc.system.domain.ResExtCfg;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ResExtCfgMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ResExtCfg record);

    ResExtCfg selectByPrimaryKey(Integer id);

    List<ResExtCfg> selectAll(ResExtCfg resExtCfg);

    int updateByPrimaryKey(ResExtCfg record);

    List<ResExtCfg> selectByExtGrpCode(String extGrpCode);

    ResExtCfg selectOne(ResExtCfg resExtCfg);

    List<ResExtCfg> selectByResTypeCode(String dev);
}