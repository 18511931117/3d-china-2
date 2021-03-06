package com.manage.idc.task.domain;

import lombok.Data;

import java.util.List;

/**
 * @Description
 * @Author lyq_j
 * @DATE 2019/10/29 14:15
 **/
@Data
public class TaskQueryVO {
    /**
     * app端搜索
     */
    private String queryName;
    /**
     * 机构名称
     */
    private String orgName;
    /**
     * 添加任务设备ID集合
     */
    private  String resIds;

    /**
     * 任务责任人
     */
    private String ownerName;

    /**
     * 任务机房名称
     */
    private String roomName;

    /**
     * 盘点设备去除id集合
     */
    private String deviceIds;

    /**
     * 盘点任务机房ID集合
     */
    private List<Long>  roomIds;

    /**
     * 盘点任务部门ID集合
     */
    private List<Long> orgIds;

    private String ids;


}
