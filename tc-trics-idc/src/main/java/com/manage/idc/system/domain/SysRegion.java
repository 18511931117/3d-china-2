package com.manage.idc.system.domain;

import com.manage.idc.common.entiy.BaseEntity;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * sys_region
 * @author 
 */
@Data
@ApiModel("行政区域表")
public class SysRegion extends BaseEntity implements Serializable  {
    /**
     * id
     */
   /* @ApiModelProperty("id")
    private Long id;*/

    /**
     * 1-有效,0-无效
     */
    @ApiModelProperty("1-有效,0-无效")
    private Integer isValid;

    /**
     * 城市等级
     */
    @ApiModelProperty("城市等级")
    private Integer level;

    @ApiModelProperty("城市名称")
    private String name;

    @ApiModelProperty("城市上级ID")
    private Long parentId;

    /**
     * 级别，0-国,1:省份province,2:市city,3:区县district
     */
    @ApiModelProperty("级别，0-国,1:省份province,2:市city,3:区县district")
    private String rank;

    /**
     * 地区编码
     */
    @ApiModelProperty("地区编码")
    private String regionCode;

    private String yzCode;

    @ApiModelProperty("是否删除 1：删除  0:未删除")
    private Integer isDel;

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

    private static final long serialVersionUID = 1L;

}