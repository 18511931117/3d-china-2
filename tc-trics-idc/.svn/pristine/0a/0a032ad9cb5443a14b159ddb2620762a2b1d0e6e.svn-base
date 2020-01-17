package com.manage.idc.log.mapper;

import com.manage.idc.log.domain.AlarmsTaskLog;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;
@Mapper
public interface AlarmsLogMapper {
    int deleteByPrimaryKey(Long id);

    int insert(AlarmsTaskLog record);

    AlarmsTaskLog selectByPrimaryKey(Long id);

    List<AlarmsTaskLog> selectAll();

    int updateByPrimaryKey(AlarmsTaskLog record);

    void insertSelective(AlarmsTaskLog alarmsLog);

    List<AlarmsTaskLog> selectByCondition(Map<String, Object> setQueryMap);

    Integer selectWarningCountByUserId(String userId);

    List<AlarmsTaskLog> selectList(Map<String, Object> setQueryMap);

    void insertHandle(Map<String, Object> map);

    void insertHandleLog(Map<String, Object> ahMap);
}