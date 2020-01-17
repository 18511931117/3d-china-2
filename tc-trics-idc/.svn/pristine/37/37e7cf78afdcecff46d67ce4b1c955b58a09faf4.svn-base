package com.manage.idc.log.domain;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import com.manage.idc.common.converter.TimeConverter;
import com.wuwenze.poi.annotation.Excel;
import com.wuwenze.poi.annotation.ExcelField;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.io.Serializable;
import java.util.Date;

import lombok.Data;

/**
 * operation_log
 *
 * @author
 */
@Data
@ApiModel("操作日志表")
@Excel("操作日志")
public class SystemLog implements Serializable {
    @JsonSerialize(using= ToStringSerializer.class)
    @ApiModelProperty("id")
    private Long id;
    @ApiModelProperty("组织机构id")
    @JsonSerialize(using= ToStringSerializer.class)
    private Long orgId;
    @ApiModelProperty("用户id")
    @JsonSerialize(using= ToStringSerializer.class)
    private Long userId;
    @ApiModelProperty("组织机构名称")
    @ExcelField("组织")
    private String orgName;
    @ExcelField("操作路由")
    private String path;
    @ExcelField("操作方法")
    private String method;
    @ApiModelProperty("IP")
    @ExcelField("操作ip")
    private String ip;
    @ExcelField("操作内容")
    private String input;
    @ExcelField("登录用户")
    @ApiModelProperty("操作人")
    private String userName;
    @ApiModelProperty("更新时间")
    private Date updateTime;
    @ApiModelProperty("创建时间")
    @ExcelField(value = "操作时间", writeConverter = TimeConverter.class)
    private Date createTime;
    private static final long serialVersionUID = 1L;

    private String ids;
}