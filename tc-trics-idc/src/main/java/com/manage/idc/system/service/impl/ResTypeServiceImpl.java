package com.manage.idc.system.service.impl;

import com.manage.idc.common.entiy.IdcConstant;
import com.manage.idc.common.entiy.Tree;
import com.manage.idc.common.utils.IdGen;
import com.manage.idc.system.domain.ResType;
import com.manage.idc.system.mapper.ResTypeMapper;
import com.manage.idc.system.service.ResTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * @Author: WangZiFan
 * @Date: 2019/10/17 16:48
 * @Description:
 */
@Service
public class ResTypeServiceImpl implements ResTypeService {
    @Autowired
    private ResTypeMapper resTypeMapper;

    /*
     * @Description: 根据条件获取列表
     * @Author: WangZiFan
     * @Date: 2019/10/19 14:49
     * @param resType
     * @return java.util.List<com.manage.idc.system.domain.ResType>
     */
    @Override
    public List<ResType> getList(ResType resType) {
        return resTypeMapper.getList(resType);
    }

    /*
     * @Description: 添加设备类型
     * @Author: WangZiFan
     * @Date: 2019/10/19 15:03
     * @param resType
     * @return void
     */
    @Override
    @Transactional
    public void addRresType(ResType resType) {
        resType.setId(IdGen.getUUId());

        ResType type = new ResType();
        type.setId(resType.getPid());

        type = resTypeMapper.selectOne(type);


        resType.setFullCode(type.getFullCode()+"_"+resType.getResTypeCode());
        resType.setCreatedTime(new Date());
        resType.setUpdatedTime(new Date());
        resType.setLevel(type.getLevel()+1);
        resTypeMapper.insert(resType);
    }
    /*
     * @Description: 删除设备类型
     * @Author: WangZiFan
     * @Date: 2019/10/19 15:26
     * @param id
     * @return void
     */
    @Override
    @Transactional
    public void delRresType(Long id) {
        ResType resType = new ResType();
        resType.setUpdatedTime(new Date());
        resType.setId(id);
        resType.setIsDel(IdcConstant.SYSTEM_ISDEL.DEL);
        resTypeMapper.updateByPrimaryKey(resType);
    }

    /*
     * @Description: 修改设备信息
     * @Author: WangZiFan
     * @Date: 2019/10/19 15:29
     * @param resType
     * @return void
     */
    @Override
    @Transactional
    public void updateResType(ResType resType) {
        resType.setUpdatedTime(new Date());
        resTypeMapper.updateByPrimaryKey(resType);
    }


    @Override
    public List<Tree> getTree() {
        return resTypeMapper.getTree();
    }
}
