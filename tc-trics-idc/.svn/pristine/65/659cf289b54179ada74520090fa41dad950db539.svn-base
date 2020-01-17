package com.manage.idc.task.service.impl;

import com.manage.idc.device.domain.Res;
import com.manage.idc.device.mapper.ResMapper;
import com.manage.idc.task.domain.AllocationTask;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;

/**
 * @Description
 * @Author lyq_j
 * @DATE 2019/11/6 15:31
 **/
@Service
@Transactional
public class BaseTaskServiceImpl {

    @Autowired
    private ResMapper resMapper;
    /**
     * 更新设备状态
     * @return
     */
    public void updateResStatus(Long id,String status){
        //更新设备信息
        Res res = new Res();
        res.setStatus(status); //在线
        res.setId(id);
        resMapper.updateByPrimaryKey(res);
    }

    /**
     * 更新设备状态
     * @return
     */
    public void updateResStatus(Long id, String status, AllocationTask allocationTask,Long regionId){
        //更新设备信息
        Res res = new Res();
        res.setId(id);
        res.setStatus(status); //在线
        res.setRoomId(allocationTask.getEndRoomId()); //机房
        res.setRackId(0L); //机架
        res.setSheft("");   //机位
        res.setOwner("");
        res.setOperator("");
        res.setRegionId(regionId);
        res.setUpdatedTime(new Date());
        res.setOrgId(allocationTask.getEndOrgId());
        resMapper.updateByPrimaryKey(res);
    }
}
