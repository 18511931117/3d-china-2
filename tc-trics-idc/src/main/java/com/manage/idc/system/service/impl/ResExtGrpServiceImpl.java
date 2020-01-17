package com.manage.idc.system.service.impl;

import com.manage.idc.common.utils.ChineseToEnglish;
import com.manage.idc.common.utils.DataSetUtile;
import com.manage.idc.common.utils.IdGen;
import com.manage.idc.common.utils.RandomUtile;
import com.manage.idc.system.domain.ResExtGrp;
import com.manage.idc.system.domain.ext.ResExtGrpExt;
import com.manage.idc.system.mapper.ResExtGrpMapper;
import com.manage.idc.system.service.ResExtGrpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @Author: WangZiFan
 * @Date: 2019/10/22 9:14
 * @Description:
 */
@Service
public class ResExtGrpServiceImpl implements ResExtGrpService {
    @Autowired
    private ResExtGrpMapper resExtGrpMapper;
    /*
     * @Description: 添加设备扩展信息分组
     * @Author: WangZiFan
     * @Date: 2019/10/22 9:49
     * @param resExtGrp
     * @return void
     */
    @Override
    @Transactional
    public void addResExtGrp(ResExtGrp resExtGrp) {
        resExtGrp.setId(IdGen.getUUId());

        String firstSpell = new ChineseToEnglish().getAllFirstLetter(resExtGrp.getExtGrpName());

        //List<ResExtGrp> resExtGrps = resExtGrpMapper.selectAll();

        resExtGrp.setExtGrpCode(firstSpell + RandomUtile.getRandomString(4));
        List<ResExtGrpExt> list = resExtGrpMapper.getList(DataSetUtile.setQueryMap(new ResExtGrp(), null, null));
        resExtGrp.setSeq(list.size()+1);
        resExtGrpMapper.insert(resExtGrp);
    }

    /*
     * @Description: 获取设备扩展信息分组列表
     * @Author: WangZiFan
     * @Date: 2019/10/22 10:17
     * @param
     * @return java.util.List<com.manage.idc.system.domain.ext.ResExtGrpExt>
     */
    @Override
    public List<ResExtGrpExt> getList(ResExtGrp resExtGrp) {
        return resExtGrpMapper.getList(DataSetUtile.setQueryMap(resExtGrp,null,null));
    }
}
