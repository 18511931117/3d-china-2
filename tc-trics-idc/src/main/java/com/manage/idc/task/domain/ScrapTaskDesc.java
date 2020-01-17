package com.manage.idc.task.domain;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import com.manage.idc.task.domain.export.ScrapTaskDescExportBase;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * scrap_task_desc
 * @author 
 */
@Data
@ApiModel("报废任务详情")
public class ScrapTaskDesc extends ScrapTaskDescExportBase implements Serializable {
    @JsonSerialize(using= ToStringSerializer.class)
    private Long id;

    /**
     * 设备id
     */
    @ApiModelProperty("设备id")
    private Long resId;

    /**
     * 机房id
     */
    @ApiModelProperty("机房id")
    private Long roomId;


    /**
     * 标签id
     */
    @ApiModelProperty("标签id")
    private Long labelId;

    /**
     * 0-待执行,2-执行中,8-执行完毕
     */
    @ApiModelProperty("0-待执行,2-执行中,8-执行完毕")
    private Integer state;

    /**
     * 创建时间
     */
    @ApiModelProperty("创建时间")
    private Date createTime;

    /**
     * 调拨任务ID
     */
    @ApiModelProperty("调拨任务ID")
    private Long taskId;

    private Integer isDel;
    /**
     * app端搜索
     */
    private String queryName;
    /*
        存放机房位置
     */
    private Long roomId2;

    private String orgName;

    private String taskName;


    private static final long serialVersionUID = 1L;
}