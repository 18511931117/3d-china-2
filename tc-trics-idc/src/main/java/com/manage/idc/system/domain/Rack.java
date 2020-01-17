package com.manage.idc.system.domain;

import com.manage.idc.common.entiy.BaseEntity;
import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
* Created by Mybatis Generator on 2019/10/17
*/
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Rack extends BaseEntity {

    private Integer isValid;

    private Long roomId;

    private Long roomAreaId;

    private Integer row;

    private Integer column;

    private String name;

    private String assetId;

    private Long tid;

    private String width;

    private String height;

    private String capacity;

    private String remark;

    private Long orgId;

    private Long regionId;


}