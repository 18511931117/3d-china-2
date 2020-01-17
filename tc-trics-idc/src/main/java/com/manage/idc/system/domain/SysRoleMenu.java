package com.manage.idc.system.domain;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import lombok.Data;

import java.io.Serializable;

/**
 * sys_role_menu
 * @author 
 */
@Data
public class SysRoleMenu implements Serializable {
    /**
     * 权限id
     */
    @JsonSerialize(using = ToStringSerializer.class)
    private Long menuId;

    /**
     * 角色id
     */
    private Long roleId;


    private Integer isDel;

    private static final long serialVersionUID = 1L;


}