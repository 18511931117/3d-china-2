package com.manage.idc.system.service;

import com.github.pagehelper.PageInfo;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.system.domain.Label;
import com.manage.idc.system.domain.Room;
import com.manage.idc.system.domain.ext.LabelQuery;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @Author: WangZiFan
 * @Date: 2019/10/17 16:48
 * @Description:
 */
public interface LabelService {
    /*
     * @Description: 获取分页对象
     * @Author: WangZiFan
     * @Date: 2019/10/18 11:49
     * @param PageInfo
     * @return
     */
    PageInfo<Label> getPage(LabelQuery label, PageRequest pageRequest);
    /*
     * @Description: excal导入标签
     * @Author: WangZiFan
     * @Date: 2019/10/18 16:53
     * @param multipartFile
     * @return com.manage.idc.common.entiy.ResultResponse
     */
    List<Label> importLabel(MultipartFile multipartFile) throws IOException;
    /*
     * @Description: 删除标签
     * @Author: WangZiFan
     * @Date: 2019/10/19 14:30
     * @param id
     * @return com.manage.idc.common.entiy.ResultResponse
     */
    void delLabel(Long id);

    void exportLabelModel(HttpServletResponse response) throws IOException;

    PageInfo<Label> getNotBindLabelPage(String labelType, Long startBarcode, Long endBarcode, PageRequest request);

    void updateLabel(Label label);

    void updateByTid(Label label);
}
