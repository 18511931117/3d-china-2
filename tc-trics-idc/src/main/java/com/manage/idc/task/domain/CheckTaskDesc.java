package com.manage.idc.task.domain;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import com.manage.idc.task.domain.export.CheckTaskDescExportBase;
import com.wuwenze.poi.annotation.Excel;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.io.Serializable;
import java.util.Date;

import lombok.Data;

/**
 * check_task_desc
 *
 * @author
 */
@Data
@Excel("盘点任务详情")
@ApiModel("盘点任务详情表")
public class CheckTaskDesc extends CheckTaskDescExportBase implements Serializable {
    /**
     * 主键id
     */
    @ApiModelProperty("主键id")
    @JsonSerialize(using= ToStringSerializer.class)
    private Long id;

    /**
     * 设备id
     */
    @ApiModelProperty("设备id")
    private Long resId;

    private Long roomId;

    /**
     * 标签id
     */
    @ApiModelProperty("标签id")
    private Long labelId;

    /**
     * 盘点任务ID
     */
    @ApiModelProperty("盘点任务ID")
    private Long taskId;


    /**
     * 是否删除 1：删除 0：未删除
     */
    @ApiModelProperty("是否删除 1：删除 0：未删除")
    private Integer isDel;

    @ApiModelProperty("创建时间")
    private Date createTime;

    private Long orgId;

    /**
     * 组织机构名称
     */
    private String orgName;

    private String tid;

    /**
     * app端搜索
     */
    private String queryName;

    private String model;


    private static final long serialVersionUID = 1L;
}