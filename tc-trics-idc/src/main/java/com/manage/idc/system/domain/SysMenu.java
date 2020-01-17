package com.manage.idc.system.domain;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * sys_menu
 * @author 
 */
@Data
public class SysMenu implements Serializable {
    /**
     * 权限id
     */
    @JsonSerialize(using = ToStringSerializer.class)
    private Long id;

    /**
     * 排序
     */
    private String num;

    /**
     * 权限名称
     */
    private String name;

    /**
     * 父编号
     */
    @JsonSerialize(using = ToStringSerializer.class)
    private Long parentId;

    /**
     * 权限字符串,menu例子：role:*，button例子：role:create,role:update,role:delete,role:view
     */
    private String permission;

    /**
     * 资源类型   1:菜单    2：按钮
     */
    private String type;

    /**
     * 请求URL
     */
    private String url;

    private Long roleId;

    private Long orgId;

    private String fullCode;

    private Date createTime;

    private static final long serialVersionUID = 1L;


}