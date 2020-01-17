package com.manage.idc.log.domain;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * check_task_log
 * @author 
 */
@Data
@ApiModel("盘点任务日志")
public class CheckTaskLog implements Serializable {

    @JsonSerialize(using= ToStringSerializer.class)
    private Long id;

    /**
     * 任务类型
     */
    @ApiModelProperty("任务类型")
    private Integer taskType;

    private String taskName;

    /**
     * 任务状态
     */
    @ApiModelProperty("任务状态")
    private Integer state;

    /**
     * 所属机构
     */
    @ApiModelProperty("所属机构")
    @JsonSerialize(using= ToStringSerializer.class)
    private Long orgId;

    /**
     * 开始时间
     */
    @ApiModelProperty("开始时间")
    private Date startTime;

    /**
     * 结束时间
     */
    @ApiModelProperty("结束时间")
    private Date endTime;

    /**
     * 盘点任务ID
     */
    @ApiModelProperty("盘点任务ID")
    @JsonSerialize(using= ToStringSerializer.class)
    private Long taskId;

    private String orgName;
    private String remark;
    private static final long serialVersionUID = 1L;
}