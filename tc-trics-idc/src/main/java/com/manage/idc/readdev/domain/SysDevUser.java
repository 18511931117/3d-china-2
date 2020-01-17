package com.manage.idc.readdev.domain;

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
public class SysDevUser extends BaseEntity {
    private Long id;

    private String username;

    private String password;

    private Long orgId;

    private Integer isDel;

    private Date createdTime;

    private Date updatedTime;

    private Long roomId;

    private Integer loginStatus;

    private Long sendTime;

    private String roomName;
}