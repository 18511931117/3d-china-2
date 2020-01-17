package com.manage.idc.system.domain;

import com.manage.idc.common.entiy.BaseEntity;
import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
* Created by Mybatis Generator on 2019/10/21
*/
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Room extends BaseEntity {

    private Integer isValid;

    private Long orgId;

    private String name;

    private Long regionId;

    private String domain;
}