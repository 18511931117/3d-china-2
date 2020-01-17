package com.manage.idc.device.domain.ext;

import com.manage.idc.device.domain.Res;
import com.manage.idc.device.domain.ResExt;

import java.util.List;

/**
 * @Author: WangZiFan
 * @Date: 2019/10/22 19:02
 * @Description:
 */
public class ResExtend extends Res {
    private List<ResExt> resExts;


    private String resTypeName;
    private String statusName;
    /*
        机房名称
     */
    private String roomName;

    private String orgName;
    /*
        机架名称
     */
    private String rackName;
    /*
        标签编号
     */
    private String barcode;


    public String getStatusName() {
        return statusName;
    }

    public void setStatusName(String statusName) {
        this.statusName = statusName;
    }


    public String getBarcode() {
        return barcode;
    }

    public void setBarcode(String barcode) {
        this.barcode = barcode;
    }

    public List<ResExt> getResExts() {
        return resExts;
    }

    public void setResExts(List<ResExt> resExts) {
        this.resExts = resExts;
    }

    public String getResTypeName() {
        return resTypeName;
    }

    public void setResTypeName(String resTypeName) {
        this.resTypeName = resTypeName;
    }

    public String getRoomName() {
        return roomName;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }

    public String getOrgName() {
        return orgName;
    }

    public void setOrgName(String orgName) {
        this.orgName = orgName;
    }

    public String getRackName() {
        return rackName;
    }

    public void setRackName(String rackName) {
        this.rackName = rackName;
    }
}
