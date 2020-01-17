package com.manage.idc.App.mapper;

import com.manage.idc.App.domain.SysAppFeedback;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface SysAppFeedbackMapper {
    int deleteByPrimaryKey(Long id);

    int insert(SysAppFeedback record);

    int insertSelective(SysAppFeedback record);

    SysAppFeedback selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(SysAppFeedback record);

    int updateByPrimaryKeyWithBLOBs(SysAppFeedback record);

    int updateByPrimaryKey(SysAppFeedback record);
}