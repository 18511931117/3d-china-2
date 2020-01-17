package com.manage.idc.App.domain;

import io.swagger.annotations.ApiModel;
import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * sys_app_feedback
 * @author 
 */
@Data
@ApiModel("")
public class SysAppFeedback implements Serializable {
    private Long id;

    private Long userId;
    private Long orgId;
    private String feedback;
    private Date createTime;

    private Date updateTime;



    private static final long serialVersionUID = 1L;
}