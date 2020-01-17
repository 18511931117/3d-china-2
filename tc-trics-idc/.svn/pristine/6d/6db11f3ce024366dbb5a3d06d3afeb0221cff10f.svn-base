package com.manage.idc.system.mapper;

import com.manage.idc.common.entiy.Tree;
import com.manage.idc.system.domain.ResType;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
@Mapper
public interface ResTypeMapper {
    int deleteByPrimaryKey(Long id);

    int insert(ResType record);

    ResType selectByPrimaryKey(Long id);

    List<ResType> selectAll();

    int updateByPrimaryKey(ResType record);

    List<ResType> getList(ResType resType);

    ResType selectOne(ResType resType);

    List<Tree> getTree();


}