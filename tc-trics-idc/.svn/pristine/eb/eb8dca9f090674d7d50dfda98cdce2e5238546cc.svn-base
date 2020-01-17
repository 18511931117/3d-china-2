package com.manage.idc.task.domain;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * borrow_task
 * @author 
 */
@Data
@ApiModel("借用任务")
public class BorrowTask implements Serializable {
    @JsonSerialize(using= ToStringSerializer.class)
    private Long id;

    /**
     * 任务名称
     */
    @ApiModelProperty("任务名称")
    private String taskName;

    /**
     * 备注
     */
    @ApiModelProperty("备注")
    private String remark;

    /**
     * 任务类型  1-设备贴标,2-设备盘点,3-设备调拨,4-设备借用,5-设备维修,11-线缆贴标'
     */
    @ApiModelProperty("任务类型  1-设备贴标,2-设备盘点,3-设备调拨,4-设备借用,5-设备维修,11-线缆贴标'")
    private Integer taskType;

    /**
     * '0-待执行,2-执行中,8-执行完毕'
     */
    @ApiModelProperty("'0-待执行,2-执行中,8-执行完毕'")
    private Integer state;

    /**
     * 所属机构
     */
    @ApiModelProperty("所属机构")
    private Long startOrgId;

    /**
     * 目标机构
     */
    @ApiModelProperty("目标机构")
    private Long endOrgId;

    /**
     * 所有者负责人
     */
    @ApiModelProperty("所有者负责人")
    private String startName;

    /**
     * 目标机构负责人
     */
    @ApiModelProperty("目标机构负责人")
    private String endName;

    private Integer isDel;

    private Date createTime;

    private Date endTime;
    /**
     * 借用部门机房ID
     */
    private Long startRoomId;

    /**
     * 借出部门机房ID
     */
    private Long endRoomId;

    /**
     * 设备ID 集合
     */
    private  String resIds;

    private Long orgId;

    private String startOrgName;

    private String endOrgName;

    private String startRoomName;

    private String endRoomName;

    private String ids;

    private String queryName;

    private String fullCode;


    private static final long serialVersionUID = 1L;
}