package com.manage.idc.system.domain;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * sys_param
 * @author 
 */
@Data
@ApiModel("系统参数表")
public class SysParam implements Serializable {
    @JsonSerialize(using = ToStringSerializer.class)
    private Long id;
    @JsonSerialize(using = ToStringSerializer.class)
    private String sysKey;

    private String sysValue;

    private String type;
    private String sysName;

    /**
     * 是否删除 1：删除 0：未删除
     */
    @ApiModelProperty("是否删除 1：删除 0：未删除")
    private Integer isDel;

    private Date updateTime;

    private Date createTime;

    private static final long serialVersionUID = 1L;
}