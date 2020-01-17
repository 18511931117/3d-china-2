package com.manage.idc.device.mapper;

import com.manage.idc.device.domain.Res;
import com.manage.idc.device.domain.ext.ResExtend;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface ResMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Res record);

    Res selectByPrimaryKey(Long id);

    List<Res> selectAll();

    int updateByPrimaryKey(Res record);

    List<Map<String,Object>> selectByCondition(Map<String, Object> map);

    void batchInsert(List insert);

    List<ResExtend> selecteBaseInfoByCondition(Map<String, Object> setQueryMap);

    List<ResExtend> selectDeviceLabelingyByCondition(Map<String, Object> setQueryMap);

    Res selectOne(Res res);

    List<ResExtend> selectNotBindDeviceByCondition(Map<String, Object> setQueryMap);

    void untyingLabel(Res res);

    void batchDelDevice(List<Long> ids);

    /*void updateTidById(Res res);*/
}