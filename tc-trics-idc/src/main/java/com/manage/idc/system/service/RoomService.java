package com.manage.idc.system.service;


import com.github.pagehelper.PageInfo;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.system.domain.Room;
import com.manage.idc.system.domain.ext.RoomExt;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * @Author: WangZiFan
 * @Date: 2019/10/17 16:48
 * @Description:
 */

public interface RoomService {


    void addRoom(Room room);

    PageInfo getPage(Room room, PageRequest pageRequest);

    void delRoom(Long id);

    void updateRoom(Room room);

    List<Room> getRoomByOrgId(Room room);

    Room getRoom(Room room);

    List<RoomExt> getOrgCurrentRoom(Room room, PageRequest pageRequest);
}
