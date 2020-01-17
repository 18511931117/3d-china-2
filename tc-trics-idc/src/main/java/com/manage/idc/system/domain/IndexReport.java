package com.manage.idc.system.domain;

import lombok.Data;

/**
 * @Description
 * @Author lyq_j
 * @DATE 2019/11/7 13:50
 **/
@Data
public class IndexReport {
    /**
     * 省市ID
     */
    private Long regionId;

    /**
     * 组织机构ID
     */
    private Long orgId;

    private String fullCode;


}
