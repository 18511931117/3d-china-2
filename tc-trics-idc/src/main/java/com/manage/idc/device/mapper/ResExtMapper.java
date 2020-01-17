package com.manage.idc.device.mapper;

import com.manage.idc.device.domain.ResExt;
import com.manage.idc.device.domain.ext.ResExtend;
import org.apache.ibatis.annotations.Mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Mapper
public interface ResExtMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ResExt record);

    ResExt selectByPrimaryKey(Integer id);

    List<ResExt> selectAll();

    int updateByPrimaryKey(ResExt record);

    void updateIsDelByResId(Long id);

    void updateByResId(ResExt resExt);

    List<ResExtend> selecteBaseInfoByCondition(Map<String, Object> setQueryMap);

    void batchInsert(List insert);

    List<Map<String, Object>> selectDeviceExtInfoById(HashMap<String, Object> queryMap);

    void deleteByResId(Long id);
}