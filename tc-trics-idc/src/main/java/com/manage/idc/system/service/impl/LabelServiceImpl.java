package com.manage.idc.system.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.manage.idc.common.entiy.IdcConstant;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.common.utils.*;
import com.manage.idc.system.domain.Label;
import com.manage.idc.system.domain.ext.LabelQuery;
import com.manage.idc.system.mapper.LabelMapper;
import com.manage.idc.system.service.LabelService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.*;
import java.util.concurrent.CopyOnWriteArrayList;

/**
 * @Author: WangZiFan
 * @Date: 2019/10/17 19:41
 * @Description:
 */
@Service
public class LabelServiceImpl implements LabelService {
    @Autowired
    private LabelMapper labelMapper;

    /*
     * @Description: 获取分页对象
     * @Author: WangZiFan
     * @Date: 2019/10/18 11:49
     * @param null
     * @return
     */
    @Override
    public PageInfo<Label> getPage(LabelQuery label, PageRequest pageRequest) {
        if(null != pageRequest && pageRequest.getPage() != null &&  pageRequest.getLimit() != null){
            PageHelper.startPage(pageRequest.getPage(),pageRequest.getLimit());
        }
        List<Label> list = labelMapper.selectByCondition(DataSetUtile.setQueryMap(label,pageRequest,null));
        return new PageInfo<>(list);
    }

    /*
     * @Description: excal导入标签
     * @Author: WangZiFan
     * @Date: 2019/10/18 16:54
     * @param multipartFile
     * @return void
     */
    @Override
    @Transactional
    public List<Label> importLabel(MultipartFile labelFile) throws IOException {
        File file = FileToUtile.multipartFileToFile(labelFile);

        String[] propertys={"barcode","epc","tid","uid"};

        String[] titleCheck={"条码","epc","tid","uid"};
        //解析excal
        List<Label> lists = ImportExeclUtil.readExcelFirstSheet(file, Arrays.asList(propertys),Label.class,Arrays.asList(titleCheck));

        FileToUtile.deleteFile(file);

        if(lists == null){
            return null;
        }
        int row = 0;

        StringBuffer backInfo = new StringBuffer("");

        List<Label> remList = new ArrayList<>();

        for (Label label:
        lists) {
            row ++;
            Label check = new Label();
            check.setTid(label.getTid());
            check.setBarcode(label.getBarcode());
            check.setUid(label.getUid());
            check.setEpc(label.getEpc());




            List<Label> labels = labelMapper.selectByOrCondition(DataSetUtile.setQueryMap(check, null, null));
            if(labels != null && labels.size()>0){
               // backInfo.append("第"+row+"行:条码["+label.getBarcode()+"]Tid["+label.getTid()+"]Uid["+label.getUid()+"]Epc["+label.getEpc()+"]<br/>");
                Label label1 = labels.get(0);
                String ps = "";
                if(label1.getEpc().equals(label.getEpc())){
                    ps += "[EPC已存在]";
                }

                if(label1.getTid().equals(label.getTid())){
                    ps += "[TID已存在]";
                }
                if(StringUtils.isNotEmpty(label1.getUid()) && StringUtils.isNotEmpty(label.getUid())){
                    if(label1.getUid().equals(label.getUid())){
                        ps += "[UID已存在]";
                    }
                }
                label.setPs(ps);
                remList.add(label);
                continue;
            }
        }

        lists.removeAll(remList);

        //切割list
        CopyOnWriteArrayList<List> lists1 = ListUtile.divisionList(lists);


        for (int i = 0;i<lists1.size();i++){
            labelMapper.batchInsert(lists1.get(i));
        }
        /*for (List dataList:insertList) {
            labelMapper.batchInsert(new ArrayList(dataList));
        }*/

        return remList;
    }

    /*
     * @Description: 删除标签
     * @Author: WangZiFan
     * @Date: 2019/10/19 14:30
     * @param id
     * @return com.manage.idc.common.entiy.ResultResponse
     */
    @Override
    @Transactional
    public void delLabel(Long id) {
        Label label = new Label();
        label.setId(id);
        label.setIsDel(IdcConstant.SYSTEM_ISDEL.DEL);
        label.setUpdatedTime(new Date());
        labelMapper.updateByPrimaryKey(label);
    }

    /*
     * @Description:导出标签模板
     * @Author: WangZiFan
     * @Date: 2019/10/24 20:17
     * @param response
     * @return void
     */
    @Override
    public void exportLabelModel(HttpServletResponse response) throws IOException {
        String fileName = "标签导入模板";


        String[] title={"条码","epc","tid","uid"};


        ExportPOIUtils.start_download(response,fileName,null,title,null);
    }

    /*
     * @Description: TODO
     * @Author: WangZiFan
     * @Date: 2019/10/26 14:14
     * @param labelType
     * @param startBarcode
     * @param endBarcode
     * @param request
     * @return com.github.pagehelper.PageInfo<com.manage.idc.system.domain.Label>
     */
    @Override
    public PageInfo<Label> getNotBindLabelPage(String labelType, Long startBarcode, Long endBarcode, PageRequest pageRequest) {
        Map<String, Object> map = new HashMap<>();
        map.put("labelType",labelType);
        map.put("startBarcode",startBarcode);
        map.put("endBarcode",endBarcode);

        if(null != pageRequest){
            PageHelper.startPage(pageRequest.getLimit(),pageRequest.getPage());
        }

        List<Label> labels = labelMapper.selectNotBindLabel(DataSetUtile.setQueryMap(map, pageRequest, null));
        return new PageInfo<>(labels);
    }

    /*
     * @Description: 修改标签
     * @Author: WangZiFan
     * @Date: 2019/11/2 11:44
     * @param label
     * @return void
     */
    @Override
    @Transactional
    public void updateLabel(Label label) {
        label.setUpdatedTime(new Date());
        labelMapper.updateByPrimaryKey(label);
    }


    @Override
    @Transactional
    public void updateByTid(Label label) {
        label.setUpdatedTime(new Date());
        labelMapper.updateByTid(label);
    }
}
