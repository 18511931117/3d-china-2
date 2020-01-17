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
public class Label extends BaseEntity {

    private Integer isValid;
    /*
        是否绑定
     */
    private Integer isBinding;
    /*
        是否打印
     */
    private Integer isPrinted;
    /*
        已贴，未贴
     */
    private Integer isPasted;
    /*
        标签分类
     */
    private Integer labelType;
    /*
        标签编号
     */
    private String barcode;
    /*
        epc
     */
    private String epc;
    /*
        tid
     */
    private String tid;
    /*
        uid
     */
    private String uid;

    /*
        原因
     */
    private String ps;
}