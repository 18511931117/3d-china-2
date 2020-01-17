package com.manage.idc.cable.domain.ext;

import com.manage.idc.cable.domain.Cable;
import com.manage.idc.common.entiy.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
* Created by Mybatis Generator on 2019/10/24
*/
public class CableExt extends Cable {
    /*
        源端机房
     */
    private String room1Name;
    /*
        源端设备
     */
    private String res1Name;
    /*
        宿端设备
     */
    private String room2Name;
    /*
        宿端设备
     */
    private String res2Name;
    /*
        源端设备编号
     */
    private String res1Code;
    /*
        宿端设备编号
     */
    private String res2Code;
    /*
        源端机架名称
     */
    private String rack1Name;
    /*
        宿端机架名称
     */
    private String rack2Name;


    /*
        源端标签编号
     */
    private String barcode1;
    /*
        宿端标签编号
     */
    private String barcode2;


    private String ps;

    public String getPs() {
        return ps;
    }

    public void setPs(String ps) {
        this.ps = ps;
    }

    public String getBarcode1() {
        return barcode1;
    }

    public void setBarcode1(String barcode1) {
        this.barcode1 = barcode1;
    }

    public String getBarcode2() {
        return barcode2;
    }

    public void setBarcode2(String barcode2) {
        this.barcode2 = barcode2;
    }

    public String getRack1Name() {
        return rack1Name;
    }

    public void setRack1Name(String rack1Name) {
        this.rack1Name = rack1Name;
    }

    public String getRack2Name() {
        return rack2Name;
    }

    public void setRack2Name(String rack2Name) {
        this.rack2Name = rack2Name;
    }

    public String getRes2Code() {
        return res2Code;
    }

    public void setRes2Code(String res2Code) {
        this.res2Code = res2Code;
    }

    public String getRes1Code() {
        return res1Code;
    }

    public void setRes1Code(String res1Code) {
        this.res1Code = res1Code;
    }

    public String getRoom1Name() {
        return room1Name;
    }

    public void setRoom1Name(String room1Name) {
        this.room1Name = room1Name;
    }

    public String getRes1Name() {
        return res1Name;
    }

    public void setRes1Name(String res1Name) {
        this.res1Name = res1Name;
    }

    public String getRoom2Name() {
        return room2Name;
    }

    public void setRoom2Name(String room2Name) {
        this.room2Name = room2Name;
    }

    public String getRes2Name() {
        return res2Name;
    }

    public void setRes2Name(String res2Name) {
        this.res2Name = res2Name;
    }
}