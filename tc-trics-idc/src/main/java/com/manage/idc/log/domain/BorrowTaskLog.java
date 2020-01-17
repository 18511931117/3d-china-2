package com.manage.idc.log.domain;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import io.swagger.annotations.ApiModel;
import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * borrow_task_log
 * @author 
 */
@Data
@ApiModel("借用任务日志")
public class BorrowTaskLog implements Serializable {
    @JsonSerialize(using= ToStringSerializer.class)
    private Long id;

    private String taskName;

    private Integer taskType;

    private Integer state;
    @JsonSerialize(using= ToStringSerializer.class)
    private Long taskId;

    private Long startOrgId;

    private Date startTime;

    private Date endTime;
    @JsonSerialize(using= ToStringSerializer.class)
    private Long endOrgId;

    private String personName;

    private  Long orgId;

    private String startOrgName;

    private String endOrgName;
    private String remark;

    private static final long serialVersionUID = 1L;
}