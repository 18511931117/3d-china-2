package com.manage.idc.system.mapper;

import com.manage.idc.system.domain.Rack;
import com.manage.idc.system.domain.Room;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface RackMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Rack record);

    Rack selectByPrimaryKey(Long id);

    List<Rack> selectAll();

    int updateByPrimaryKey(Rack record);

    List<Rack> selectByCondition(Map<String, Object> setQueryMap);

    Rack selectOne(Rack room);
}