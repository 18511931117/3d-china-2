package com.manage.idc.system.controller;

import com.manage.idc.common.entiy.ResultResponse;
import com.manage.idc.common.enums.UserType;
import com.manage.idc.common.utils.DataSetUtile;
import com.manage.idc.common.utils.SessionUtil;
import com.manage.idc.system.domain.IndexReport;
import com.manage.idc.system.domain.SysOrg;
import com.manage.idc.system.domain.SysUser;
import com.manage.idc.system.mapper.IndexReportMapper;
import com.manage.idc.system.mapper.SysOrgMapper;
import com.manage.idc.system.mapper.SysUserMapper;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.time.Year;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Description 首页
 * @Author lyq_j
 * @DATE 2019/10/16 9:44
 **/
@Slf4j
@Controller
@Api(tags = "系统首页")
public class IndexController {
    @Autowired
    private SysOrgMapper sysOrgMapper;
    @Autowired
    private SysUserMapper userService;

    private static final ArrayList<String> dateList;

    static {
        dateList = new ArrayList<>();
        dateList.add("2017");
        dateList.add("2018");
        dateList.add("2019");
        dateList.add("2020");
        dateList.add("2021");
        dateList.add("2022");
    }

    @Autowired
    private IndexReportMapper indexReportMapper;
    /**
     * 首页跳转
     *
     * @return
     */
    @RequestMapping(value = {"/index"},method = RequestMethod.GET)
    @ApiOperation(value = "跳转首页", httpMethod = "GET", response = void.class)
    public ModelAndView index(ModelAndView model) {
        SysUser user = userService.selectUserByApp(SessionUtil.getUser().getUsername(), UserType.USER_PC.getState());
        model.addObject("user",user);
        model.setViewName("index");
        return model;
    }

    /*
     * @Description: 首页内容
     * @Author: WangZiFan
     * @Date: 2019/10/30 11:56
     * @param
     * @return java.lang.String
     */
    @RequestMapping(value = {"/indexContent"},method = RequestMethod.GET)
    @ApiOperation(value = "首页内容", httpMethod = "GET", response = void.class)
    public ModelAndView indexContent(ModelAndView model) {
        model.setViewName("indexContent");
        //根据机构查询区域ID
        SysOrg sysOrg = new SysOrg();
        sysOrg.setId(SessionUtil.getUser().getOrgId());
        String regionId = sysOrgMapper.selectOne(sysOrg).getRegionId();
        model.addObject("currentRegionId",regionId.toString());
        return model;
    }

    @GetMapping("/unauthorized")
    public String unauthorized() {
        return "404";
    }

    @GetMapping("/")
    public ModelAndView redirectIndex(ModelAndView modelAndView) {
        modelAndView.setViewName("redirect:/index");
        return modelAndView;
    }

    /**
     * 首页获取统计
     * @param model
     * @return
     */
    @GetMapping("/getReportData")
    @ResponseBody
    public ResultResponse getReportCount(ModelAndView model, IndexReport indexReport) {
        indexReport.setFullCode(SessionUtil.getUser().getFullCode());
        HashMap<String, Object> resultMap = new HashMap<>();
        List<Map<String, String>> reportRegion = indexReportMapper.getReportRegion();//市级
        resultMap.put("region",reportRegion);
        log.info("市区级数据："+reportRegion);

        if(indexReport.getRegionId()==null){
            Map<String, String> reportTotalSum = indexReportMapper.getReportTotalSum(indexReport);//统计所有
            resultMap.put("total",reportTotalSum);
            log.info("所有数据："+reportTotalSum);
        }else{
            Map<String, String> reportRegionTotal = indexReportMapper.getReportRegionTotal(indexReport);//按市级统计
            resultMap.put("total",reportRegionTotal);
            log.info("按市区统计数据："+reportRegionTotal);
        }
        List<Map<String, Object>> reportColumnarTotal = indexReportMapper.getReportColumnarTotal(indexReport); //柱状图
        ArrayList<String> deviceTotal = new ArrayList<>();
        ArrayList<String> scrapTotal = new ArrayList<>();
        ArrayList<String> unknownTotal = new ArrayList<>();
        ArrayList<String> onlineTotal = new ArrayList<>();
        for (String date : dateList){
            for (Map<String,Object> reportDate:reportColumnarTotal){
                if (reportDate.containsKey("year")){
                    String year = reportDate.get("year").toString();
                    if (date.equals(year)){
                        deviceTotal.add(reportDate.get("deviceTotal").toString());
                        scrapTotal.add(reportDate.get("scrapTotal").toString());
                        unknownTotal.add(reportDate.get("unknownTotal").toString());
                        onlineTotal.add(reportDate.get("onlineTotal").toString());
                    }else if(dateList.contains(year)){
                        deviceTotal.add("0");
                        scrapTotal.add("0");
                        unknownTotal.add("0");
                        onlineTotal.add("0");
                    }
                }
            }
        }
        ArrayList<Object> objects = new ArrayList<>();
        HashMap<String, Object> deviceTotalColumnarMap = new HashMap<>();
        deviceTotalColumnarMap.put("name","设备数量");
        deviceTotalColumnarMap.put("data",deviceTotal);
        objects.add(deviceTotalColumnarMap);
        HashMap<String, Object> onlineTotalColumnarMap = new HashMap<>();
        onlineTotalColumnarMap.put("name","在线数量");
        onlineTotalColumnarMap.put("data",onlineTotal);
        objects.add(onlineTotalColumnarMap);
        HashMap<String, Object> scrapTotalColumnarMap = new HashMap<>();
        scrapTotalColumnarMap.put("name","报废数量");
        scrapTotalColumnarMap.put("data",scrapTotal);
        objects.add(scrapTotalColumnarMap);
        HashMap<String, Object> unknownTotalColumnarMap = new HashMap<>();
        unknownTotalColumnarMap.put("name","初始数量");
        unknownTotalColumnarMap.put("data",unknownTotal);
        objects.add(unknownTotalColumnarMap);

        resultMap.put("columnar",objects);

        List<Map<String, Object>> reportBrokenTotal = indexReportMapper.getReportBrokenTotal(indexReport); //折线图
        ArrayList<String> borrowTotal = new ArrayList<>();
        ArrayList<String> allocationTotal = new ArrayList<>();
        ArrayList<String> repairTotal = new ArrayList<>();
        for (String date : dateList){
            for (Map<String,Object> reportDate:reportBrokenTotal){
                if (reportDate.containsKey("year")) {
                    String year = reportDate.get("year").toString();
                    if (date.equals(year)) {
                        borrowTotal.add(reportDate.get("borrowTotal").toString());
                        allocationTotal.add(reportDate.get("allocationTotal").toString());
                        repairTotal.add(reportDate.get("repairTotal").toString());
                    } else if (dateList.contains(year)) {
                        borrowTotal.add("0");
                        allocationTotal.add("0");
                        repairTotal.add("0");
                    }
                }
            }
        }
        ArrayList<Object> brokenList = new ArrayList<>();
        HashMap<String, Object> repairTotalBrokenMap = new HashMap<>();
        repairTotalBrokenMap.put("name","设备维修");
        repairTotalBrokenMap.put("data",repairTotal);
        brokenList.add(repairTotalBrokenMap);

        HashMap<String, Object> scrapTotalBrokenMap = new HashMap<>();
        scrapTotalBrokenMap.put("name","报废设备");
        scrapTotalBrokenMap.put("data",scrapTotal);
        brokenList.add(scrapTotalBrokenMap);

        HashMap<String, Object> borrowTotalBrokenMap = new HashMap<>();
        borrowTotalBrokenMap.put("name","设备借用");
        borrowTotalBrokenMap.put("data",borrowTotal);
        brokenList.add(borrowTotalBrokenMap);

        HashMap<String, Object> allocationTotalBrokenMap = new HashMap<>();
        allocationTotalBrokenMap.put("name","设备调拨");
        allocationTotalBrokenMap.put("data",allocationTotal);
        brokenList.add(allocationTotalBrokenMap);
        resultMap.put("broken",brokenList);

        Map<String, String> reportCakeTotal = indexReportMapper.getReportCakeTotal(indexReport);//饼状图
        ArrayList<Object> cakeList = new ArrayList<>();
        HashMap<String, Object> borrowTotalCakeMap = new HashMap<>();
        borrowTotalCakeMap.put("name","借用数量");
        borrowTotalCakeMap.put("data",reportCakeTotal.get("borrowTotal"));
        cakeList.add(borrowTotalCakeMap);
        HashMap<String, Object> allocationTotalCakeMap = new HashMap<>();
        allocationTotalCakeMap.put("name","调拨数量");
        allocationTotalCakeMap.put("data",reportCakeTotal.get("allocationTotal"));
        cakeList.add(allocationTotalCakeMap);
        HashMap<String, Object> repairTotalCakeMap = new HashMap<>();
        repairTotalCakeMap.put("name","维修数量");
        repairTotalCakeMap.put("data",reportCakeTotal.get("repairTotal"));
        cakeList.add(repairTotalCakeMap);
        HashMap<String, Object> unknownTotalCakeMap = new HashMap<>();
        unknownTotalCakeMap.put("name","初始数量");
        unknownTotalCakeMap.put("data",reportCakeTotal.get("unknownTotal"));
        cakeList.add(unknownTotalCakeMap);
        HashMap<String, Object> scrapTotalCakeMap = new HashMap<>();
        scrapTotalCakeMap.put("name","报废数量");
        scrapTotalCakeMap.put("data",reportCakeTotal.get("scrapTotal"));
        cakeList.add(scrapTotalCakeMap);
        HashMap<String, Object> onlineTotalCakeMap = new HashMap<>();
        onlineTotalCakeMap.put("name","在线数量");
        onlineTotalCakeMap.put("data",reportCakeTotal.get("onlineTotal"));
        cakeList.add(onlineTotalCakeMap);
        resultMap.put("cake",cakeList);

        resultMap.put("date", dateList.toArray());
        return DataSetUtile.setSuccessResult(resultMap);
    }


}
