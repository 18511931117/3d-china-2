package com.manage.idc.system.mapper;

import com.manage.idc.system.domain.SysParam;
import com.manage.idc.system.domain.SysUser;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface SysParamMapper {
    int insert(SysParam record);

    int insertSelective(SysParam record);

    void update(SysParam sysParam);

    List<SysParam> selectByCondition(Map<String, Object> setQueryMap);

    SysParam getParamById(SysParam sysParam);

    SysParam selectOne(SysParam param);
}