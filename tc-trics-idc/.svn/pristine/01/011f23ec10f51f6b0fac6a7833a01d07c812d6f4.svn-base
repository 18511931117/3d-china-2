package com.manage.idc.device.service;

import com.github.pagehelper.PageInfo;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.device.domain.Res;
import com.manage.idc.device.domain.ext.ResExtend;
import com.manage.idc.device.domain.ext.ResQuery;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
 * @Author: WangZiFan
 * @Date: 2019/10/17 9:46
 * @Description:
 */
public interface DeviceService {
    void addDevice(Res res);

    PageInfo<Map<String,Object>> getDevicePage(ResQuery res, PageRequest pageRequest);

    void delDevice(Long id);

    void updateDevice(ResExtend res);

    PageInfo<ResExtend> getDeviceBaseInfoPage(ResExtend res, PageRequest pageRequest);

    void exportDeviceModel(HttpServletResponse response) throws IOException;

    List<Map<String,Object>> importDevice(MultipartFile devFile) throws IOException;

    void bindLabel(Res res);

    PageInfo<ResExtend> getDeviceLabelingPage(PageRequest pageRequest);

    PageInfo<ResExtend> getAppDevicePage(ResQuery res, PageRequest pageRequest);

    List<Map<String, Object>> getAppDeviceInfo(Long id);

    void untyingLabel(Res res);

    void exportDevice(List<Long> id,HttpServletResponse response) throws IOException;

    PageInfo<ResExtend> getNotBindDevice(ResQuery resQuery,PageRequest pageRequest);

    void batchDelDevice(List<Long> ids);

    String appBindLabel(Res res);

    void print(Res res);

    void confirm(Res res);

    void bindPcExport(List<Long> ids, HttpServletResponse response);

    void bindPhoneExport(List<Long> ids, HttpServletResponse response);
}
