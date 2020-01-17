package com.manage.idc.system.domain;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * sys_dept
 *
 * @author
 */
@Data
public class SysDept implements Serializable {
    /**
     * 部门id
     */
    private Integer id;

    /**
     * 上级部门id
     */
    private Integer parentId;

    /**
     * 部门名称
     */
    private String name;

    /**
     * 排序
     */
    private String sort;

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * 更新时间
     */
    private Date updateTime;

    private static final long serialVersionUID = 1L;


}