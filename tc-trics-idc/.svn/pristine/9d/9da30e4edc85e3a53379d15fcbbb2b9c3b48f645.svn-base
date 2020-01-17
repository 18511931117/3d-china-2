package com.manage.idc.system.domain;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;

/**
 * sys_user_role
 * @author 
 */
@Data
@ApiModel("用户角色关联表")
public class SysUserRole implements Serializable {
    /**
     * 用户id
     */
    @ApiModelProperty("用户id")
    @JsonSerialize(using = ToStringSerializer.class)
    private Long userId;

    /**
     * 角色id
     */
    @ApiModelProperty("角色id")
    private Long roleId;

    /**
     * 是否删除 1：删除 0：删除
     */
    @ApiModelProperty("是否删除 1：删除 0：删除")
    private Integer isDel;

    private static final long serialVersionUID = 1L;
}