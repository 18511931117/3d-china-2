package com.manage.idc.system.domain;

import com.manage.idc.common.entiy.BaseEntity;
import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
* Created by Mybatis Generator on 2019/10/22
*/
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ResExtCfg extends BaseEntity {
    /*
        是否有效
     */
    private Integer isValid;
    /*
        设备类型编码
     */
    private String resTypeCode;

    /*
        分组编码
     */
    private String extGrpCode;

    /*
        条目编码
     */
    private String itemCode;

    /*
        条目名称
     */
    private String itemName;

    /*
        顺序
     */
    private Integer seq;

    /*
        值类型
     */
    private String valType;

    /*
        备注
     */
    private String remark;
    /*
        是否为查询字段
     */
    private String isQuery;

    private String valTypeName;




}