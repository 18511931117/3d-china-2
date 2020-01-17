package com.manage.idc.system.domain;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * sys_org
 * @author 
 */
@Data
@ApiModel("组织机构表")
public class SysOrg implements Serializable {
    /**
     * id
     */
    @ApiModelProperty("id")
    @JsonSerialize(using = ToStringSerializer.class)
    private Long id;

    /**
     * 1-有效,0-无效
     */
    @ApiModelProperty("1-有效,0-无效")
    private Integer isValid;

    /**
     * 机构组织名
     */
    @ApiModelProperty("机构组织名")
    private String name;

    /**
     * 父组织ID
     */
    @ApiModelProperty("父组织ID")
    @JsonSerialize(using = ToStringSerializer.class)
    private Long parentId;

    /**
     * 区域字典id
     */
    @ApiModelProperty("区域字典id")
    @JsonSerialize(using = ToStringSerializer.class)
    private String regionId;

    /**
     * 全编码，格式xxxx_xxxx_xxxx
     */
    @ApiModelProperty("全编码，格式xxxx_xxxx_xxxx")
    private String fullCode;

    @ApiModelProperty("是否删除 1:删除 0:未删除")
    private  Integer isDel;

    /**
     * 机构等级
     */
    @ApiModelProperty("机构等级")
    private Integer level;

    /**
     * 创建时间
     */
    @ApiModelProperty("创建时间")
    private Date createTime;

    /**
     * 更新时间
     */
    @ApiModelProperty("更新时间")
    private Date updateTime;

    @ApiModelProperty("地域名称")
    private String regionName;

    private Long pid;

    private static final long serialVersionUID = 1L;
}