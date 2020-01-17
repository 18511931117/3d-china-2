package com.manage.idc.system.domain;

import com.manage.idc.common.entiy.BaseEntity;
import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
* Created by Mybatis Generator on 2019/11/06
*/
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class AlarmsLogUser extends BaseEntity {
    private Long id;

    private Long alarmsLogId;

    private Long userId;

    private Integer isDel;

    private Integer feedBackFlag;

    private Date createdTime;
}