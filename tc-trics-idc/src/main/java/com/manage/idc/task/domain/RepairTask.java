package com.manage.idc.task.domain;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * repair_task
 * @author 
 */
@Data
@ApiModel("维修任务")
public class RepairTask extends TaskQueryVO implements Serializable {
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
     * 0-待执行,2-执行中,8-执行完毕
     */
    @ApiModelProperty("0-待执行,2-执行中,8-执行完毕")
    private Integer state;
    @JsonSerialize(using= ToStringSerializer.class)
    private Long orgId;

    /**
     * 备注
     */
    @ApiModelProperty("备注")
    private String remark;

    private Integer isDel;

    /**
     * 创建任务
     */
    @ApiModelProperty("创建任务")
    private Date createTime;
    @JsonSerialize(using= ToStringSerializer.class)
    private  Long userId;
    @JsonSerialize(using= ToStringSerializer.class)
    private  Long roomId;
    private  Long orgPid;

    private String resIds;

    private String ids;

    private String fullCode;
    private static final long serialVersionUID = 1L;
}