package com.manage.idc.log.domain;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * allocation_task_log
 * @author 
 */
@Data
@ApiModel("调拨任务日志")
public class AllocationTaskLog implements Serializable {
    @JsonSerialize(using= ToStringSerializer.class)
    private Long id;

    /**
     * 任务名称
     */
    @ApiModelProperty("任务名称")
    private String taskName;

    /**
     * 任务类型
     */
    @ApiModelProperty("任务类型")
    private Integer taskType;

    /**
     * 任务ID
     */
    @ApiModelProperty("任务ID")
    @JsonSerialize(using= ToStringSerializer.class)
    private Long taskId;

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
    private Long startOrgId;

    /**
     * 目标机构
     */
    @ApiModelProperty("目标机构")
    @JsonSerialize(using= ToStringSerializer.class)
    private Long endOrgId;

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
     * 执行人
     */
    @ApiModelProperty("执行人")
    private String personName;

    private String startOrgName;

    private String endOrgName;
    @JsonSerialize(using= ToStringSerializer.class)
    private Long orgId;
    private String remark;
    private static final long serialVersionUID = 1L;
}