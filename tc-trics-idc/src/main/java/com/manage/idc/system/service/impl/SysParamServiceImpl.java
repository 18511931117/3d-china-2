package com.manage.idc.system.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.manage.idc.common.entiy.IdcConstant;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.common.utils.DataSetUtile;
import com.manage.idc.common.utils.IdGen;
import com.manage.idc.system.domain.SysParam;
import com.manage.idc.system.domain.SysUser;
import com.manage.idc.system.mapper.SysParamMapper;
import com.manage.idc.system.service.SysParamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * @Description
 * @Author lyq_j
 * @DATE 2019/10/22 15:37
 **/
@Service
@Transactional
public class SysParamServiceImpl implements SysParamService {

    @Autowired
    private SysParamMapper sysParamMapper;

    @Override
    public SysParam selectOne(SysParam sysParam) {
        return sysParamMapper.selectOne(sysParam);
    }

    @Override
    @Transactional
    public void add(SysParam sysParam) {
        sysParam.setId(IdGen.getUUId());
        sysParam.setCreateTime(new Date());
        sysParam.setUpdateTime(new Date());
        sysParam.setIsDel(IdcConstant.SYSTEM_ISDEL.NOT_DEL);
        sysParamMapper.insertSelective(sysParam);
    }

    @Override
    @Transactional
    public void delete(SysParam sysParam) {
        sysParam.setIsDel(IdcConstant.SYSTEM_ISDEL.DEL);
        sysParamMapper.update(sysParam);
    }

    @Override
    @Transactional
    public void update(SysParam sysParam) {
        sysParam.setUpdateTime(new Date());
        sysParamMapper.update(sysParam);
    }

    @Override
    public PageInfo<SysParam> getPage(SysParam sysParam, PageRequest pageRequest) {
        sysParam.setIsDel(IdcConstant.SYSTEM_ISDEL.NOT_DEL);
        if(null != pageRequest && pageRequest.getLimit() != null && pageRequest.getPage() != null){
            PageHelper.startPage(pageRequest.getPage(),pageRequest.getLimit());
        }
        List<SysParam> list = sysParamMapper.selectByCondition(DataSetUtile.setQueryMap(sysParam, pageRequest, null));
        return new PageInfo<>(list);
    }

    @Override
    public SysParam getParamById(SysParam sysParam) {
        return sysParamMapper.getParamById(sysParam);
    }
}
