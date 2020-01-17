package com.manage.idc.common.enums;

public enum UserType {
    USER_PC("PC",1),USER_SCJ("手持机",2),USER_DXQ("读写器",3);
    private String stateName;
    private Integer state;

    UserType(String stateName, Integer state) {
        this.stateName = stateName;
        this.state = state;
    }

    public String getStateName() {
        return stateName;
    }

    public void setStateName(String stateName) {
        this.stateName = stateName;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }
}
