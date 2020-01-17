package com.manage.idc.cable.domain;

import com.manage.idc.common.entiy.BaseEntity;
import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
* Created by Mybatis Generator on 2019/10/24
*/
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Cable extends BaseEntity {

    private Integer isAppBind;
    private Integer isPrinted;
    /*
        是否有效
     */
    private Integer isValid;
    /*
        线缆类型
     */
    private String cableType;

    /*
        线缆编号
     */
    private String assetId;

    /*
        源端接口类型
     */
    private String intf1Type;

    /*
        源端组织机构
     */
    private Long org1Id;

    /*
        源端楼层
     */
    private String floor1;

    /*
        源端机房
     */
    private Long room1Id;

    /*
        源端机架编号
     */
    private Long rack1Id;

    /*
        源端机柜U位
     */
    private String rackU1;

    /*
        源端设备id
     */
    private Long res1Id;

    /*
        源端板卡/端口ID
     */
    private String port1Id;

    /*
        宿端楼层
     */
    private String floor2;

    /*
        宿端机房
     */
    private Long room2Id;

    /*
        宿端机架编号
     */
    private Long rack2Id;

    /*
        宿端U位
     */
    private String rackU2;

    /*
        宿端接口类型
     */
    private String intf2Type;

    /*
        宿端组织机构
     */
    private Long org2Id;

    /*
        宿端设备
     */
    private Long res2Id;

    /*
        宿端板卡/端口ID
     */
    private String port2Id;

    /*
        RFID标签
     */
    private String tid;

    /*
        业务信息
     */
    private String serveInfo;

    /*
        0-未知,1-在线,5-故障
     */
    private Integer status;

    /*
        0-未贴,1-已贴
     */
    private Integer isPasted;

    /*
        RFID标签
     */
    private String tid2;

}