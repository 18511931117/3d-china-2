package com.manage.idc.system.mapper;

import com.manage.idc.system.domain.IndexReport;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface IndexReportMapper {

    Map<String,String> getReportTotalSum(IndexReport indexReport);

    List<Map<String,Object>> getReportColumnarTotal(IndexReport indexReport);

    List<Map<String,Object>> getReportBrokenTotal(IndexReport indexReport);

    Map<String,String> getReportRegionTotal(IndexReport indexReport);

    List<Map<String,String>> getReportRegion();

    Map<String,String> getReportCakeTotal(IndexReport indexReport);
}