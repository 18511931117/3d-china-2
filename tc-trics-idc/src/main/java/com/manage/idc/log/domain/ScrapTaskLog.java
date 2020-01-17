package com.manage.idc.log.domain;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import io.swagger.annotations.ApiModel;
import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * scrap_task_log
 * @author 
 */
@Data
@ApiModel("报废任务日志")
public class ScrapTaskLog implements Serializable {
    @JsonSerialize(using= ToStringSerializer.class)
    private Long id;

    private String taskName;

    private Integer taskType;

    private Integer state;
    @JsonSerialize(using= ToStringSerializer.class)
    private Long orgId;
    @JsonSerialize(using= ToStringSerializer.class)
    private Long taskId;

    private String remark;

    private Date startTime;

    private Date endTime;

    private String personName;

    private String orgName;

    private static final long serialVersionUID = 1L;
}