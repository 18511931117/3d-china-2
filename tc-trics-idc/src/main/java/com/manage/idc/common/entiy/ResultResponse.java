package com.manage.idc.common.entiy;

import org.springframework.http.HttpStatus;

import java.util.HashMap;

/**
 * 结果集返回类
 */
public class ResultResponse extends HashMap<String, Object> {

    private static final long serialVersionUID = -8713837118340960775L;

    public ResultResponse total(Integer total) {
        this.put("total", total);
        return this;
    }

    public ResultResponse page(Object object) {
        this.put("data", object);
        return this;
    }

    public ResultResponse rows(Object object) {
        this.put("rows", object);
        return this;
    }

    public ResultResponse code(HttpStatus status) {
        this.put("code", status.value());
        return this;
    }

    public ResultResponse message(String message) {
        this.put("message", message);
        return this;
    }

    public ResultResponse data(Object data) {
        this.put("data", data);
        return this;
    }

    public ResultResponse success() {
        this.code(HttpStatus.OK);
        this.message("操作成功！");
        return this;
    }

    public ResultResponse fail() {
        this.code(HttpStatus.INTERNAL_SERVER_ERROR);
        return this;
    }

    @Override
    public ResultResponse put(String key, Object value) {
        super.put(key, value);
        return this;
    }

}
