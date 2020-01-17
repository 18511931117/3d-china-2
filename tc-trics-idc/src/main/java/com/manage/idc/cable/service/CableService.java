package com.manage.idc.cable.service;

import com.github.pagehelper.PageInfo;
import com.manage.idc.cable.domain.Cable;
import com.manage.idc.cable.domain.ext.CableExt;
import com.manage.idc.cable.domain.ext.CableQuery;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.device.domain.ext.ResExtend;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
 * @Author: WangZiFan
 * @Date: 2019/10/24 16:07
 * @Description:
 */
public interface CableService {
    List<CableExt> importCable(MultipartFile cableFile) throws IOException;

    void exportCableModel(HttpServletResponse response) throws IOException;

    void delCable(Long id);

    void updateCable(Cable cable);

    void bindLabel(Cable cable);

    PageInfo<CableExt> getAppCablePage(CableQuery queryStr, PageRequest pageRequest);

    List<Map<String,Object>> getAppCableInfo(Long id);

    PageInfo<CableExt> getPage(CableQuery cable, PageRequest pageRequest);

    Cable getCable(Cable cable);

    void addCable(Cable cable);

    void batchDel(List<Long> ids);

    void exportCable(List<Long> ids,HttpServletResponse response) throws IOException ;

    String appBindLabel(Cable cable);

    void untyingLabel(Cable cable);

    void print(Cable cable);

    void confirm(Cable cable);

    void bindPcExport(List<Long> ids,HttpServletResponse response);

    void bindPhoneExport(List<Long> ids, HttpServletResponse response);
}
