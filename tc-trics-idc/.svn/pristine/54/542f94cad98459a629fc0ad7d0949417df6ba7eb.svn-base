package com.manage.idc.system.mapper;

import com.manage.idc.system.domain.Rack;
import com.manage.idc.system.domain.Room;
import com.manage.idc.system.domain.ext.RoomExt;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;
@Mapper
public interface RoomMapper {
    int insert(Room record);


    void updateRoom(Room room);

    List<RoomExt> selectByCondition(Map<String, Object> setQueryMap);

    Room selectOne(Room room);

    List<Room> getRoomByOrgId(Room room);
}