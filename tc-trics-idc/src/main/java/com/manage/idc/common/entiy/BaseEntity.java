package com.manage.idc.common.entiy;


import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import lombok.Data;

import java.util.Date;

/**
 * @Author: WangZiFan
 * @Date: 2019/10/16 16:53
 * @Description:
 */
@Data
public class BaseEntity {
    /*
        主键
     */
    @JsonSerialize(using= ToStringSerializer.class)
    private Long id;
    /*
        创建日期
     */
    private Date createdTime;
    /*
        更新日期
     */
    private Date updatedTime;

    /*
        是否删除
     */
    private Integer isDel;

    private String fullCode;
}
