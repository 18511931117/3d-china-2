package com.manage.idc.system.domain.ext;

import com.manage.idc.common.entiy.BaseEntity;
import com.manage.idc.system.domain.ResExtCfg;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
* Created by Mybatis Generator on 2019/10/22
*/

public class ResExtCfgExt extends ResExtCfg {

    private String valTypeName;


    public String getValTypeName() {
        return valTypeName;
    }

    public void setValTypeName(String valTypeName) {
        this.valTypeName = valTypeName;
    }
}