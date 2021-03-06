package com.manage.idc.system.service.impl;

import com.manage.idc.common.entiy.IdcConstant;
import com.manage.idc.common.utils.ChineseToEnglish;
import com.manage.idc.common.utils.IdGen;
import com.manage.idc.common.utils.RandomUtile;
import com.manage.idc.system.domain.ResExtCfg;
import com.manage.idc.system.mapper.ResExtCfgMapper;
import com.manage.idc.system.service.ResExtCfgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.List;

/**
 * @Author: WangZiFan
 * @Date: 2019/10/22 11:34
 * @Description:
 */
@Service
public class ResExtCfgServiceImpl implements ResExtCfgService {
    @Autowired
    private ResExtCfgMapper resExtCfgMapper;

    /*
     * @Description: 获取扩展查询条件集合
     * @Author: WangZiFan
     * @Date: 2019/11/1 11:17
     * @param resExtCfg
     * @return java.util.List<com.manage.idc.system.domain.ResExtCfg>
     */
    @Override
    public List<ResExtCfg> getList(ResExtCfg resExtCfg) {
        return resExtCfgMapper.selectAll(resExtCfg);
    }

    /*
     * @Description: 添加资产信息扩展配置
     * @Author: WangZiFan
     * @Date: 2019/10/22 11:36
     * @param resExtCfg
     * @return void
     */
    @Override
    @Transactional
    public void addResExtCfg(ResExtCfg resExtCfg) {
        resExtCfg.setId(IdGen.getUUId());
        String firstSpell = new ChineseToEnglish().getAllFirstLetter(resExtCfg.getItemName());
        //List<ResExtCfg> list = resExtCfgMapper.selectByExtGrpCode(resExtCfg.getExtGrpCode());
        resExtCfg.setItemCode(resExtCfg.getExtGrpCode()+"_"+firstSpell+ RandomUtile.getRandomString(4));


        List<ResExtCfg> resExtCfgs = resExtCfgMapper.selectByExtGrpCode(resExtCfg.getExtGrpCode());

        int count =(resExtCfgs != null ? (resExtCfgs.size() + 1) : 1);

        resExtCfg.setSeq(count);


        resExtCfgMapper.insert(resExtCfg);
    }
    /*
     * @Description: 修改资产信息配置
     * @Author: WangZiFan
     * @Date: 2019/10/22 16:56
     * @param resExtCfg
     * @return void
     */
    @Override
    @Transactional
    public void updateResExtCfg(ResExtCfg resExtCfg) {
        resExtCfg.setUpdatedTime(new Date());
        resExtCfgMapper.updateByPrimaryKey(resExtCfg);
    }
    /*
     * @Description: 删除资产信息配置
     * @Author: WangZiFan
     * @Date: 2019/10/22 17:20
     * @param id
     * @return void
     */
    @Override
    @Transactional
    public void delResExtCfg(Long id) {
        ResExtCfg resExtCfg = new ResExtCfg();
        resExtCfg.setId(id);
        resExtCfg.setIsDel(IdcConstant.SYSTEM_ISDEL.DEL);
        resExtCfg.setUpdatedTime(new Date());
        resExtCfgMapper.updateByPrimaryKey(resExtCfg);
    }



}
