package com.manage.idc.system.domain.ext;

import com.manage.idc.common.entiy.BaseEntity;
import com.manage.idc.system.domain.Label;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
* Created by Mybatis Generator on 2019/10/17
*/

public class LabelQuery extends Label {
    private String startBarcode;

    private String endBarcode;

    private String isUid;

    public String getIsUid() {
        return isUid;
    }

    public void setIsUid(String isUid) {
        this.isUid = isUid;
    }

    public String getStartBarcode() {
        return startBarcode;
    }

    public void setStartBarcode(String startBarcode) {
        this.startBarcode = startBarcode;
    }

    public String getEndBarcode() {
        return endBarcode;
    }

    public void setEndBarcode(String endBarcode) {
        this.endBarcode = endBarcode;
    }
}