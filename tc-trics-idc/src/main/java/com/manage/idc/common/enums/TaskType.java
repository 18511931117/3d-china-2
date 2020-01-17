package com.manage.idc.common.enums;

public enum TaskType {
    RES_LABEL("设备贴标", 1), RES_CHECK("设备盘点", 2), RES_ALLOCATION("设备调拨", 3), RES_BORROW("设备借用", 4), RES_REPAIR("设备维修", 5),RES_SCRAP("设备报废",6);
    private String typeName;
    private Integer type;

    TaskType(String typeName, Integer type) {
        this.typeName = typeName;
        this.type = type;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public static void main(String[] args) {
        Integer type = TaskType.RES_ALLOCATION.getType();
        System.out.println(type);
    }
}
