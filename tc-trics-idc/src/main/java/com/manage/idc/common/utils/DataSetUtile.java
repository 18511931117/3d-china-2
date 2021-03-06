package com.manage.idc.common.utils;


import com.github.pagehelper.PageInfo;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.common.entiy.ResultResponse;
import com.manage.idc.system.domain.SysUser;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * @Author: WangZiFan
 * @Date: 2019/10/18 11:21
 * @Description:
 */
public class DataSetUtile {
    /*
     * @Description: 查询条件
     * @Author: WangZiFan
     * @Date: 2019/10/18 15:40
     * @param null
     * @return
     */
    public static Map<String,Object> setQueryMap(Object data, PageRequest pageRequest, SysUser sysUser){
        Map<String, Object> map = new HashMap<>();
        if(null != data){
            map.put("data",data);
        }

        if(pageRequest != null){
            map.put("sort",pageRequest.getSort());
            map.put("sortOrder",pageRequest.getSortOrder());
        }

        if(sysUser != null){
            map.put("fullCode",sysUser.getFullCode());
        }
        return map;
    }

    /*
     * @Description: 成功分页数据返回
     * @Author: WangZiFan
     * @Date: 2019/10/18 15:40
     * @param PageInfo
     * @return ResultResponse
     */
    public static ResultResponse setPageSuccessResult(PageInfo data){
        return new ResultResponse().total((int) data.getTotal()).rows(data.getList()).success().put("code","0");
    }

    /*
     * @Description: 获取通用成功返回
     * @Author: WangZiFan
     * @Date: 2019/10/18 16:51
     * @param data
     * @return com.manage.idc.common.entiy.ResultResponse
     */
    public static ResultResponse setSuccessResult(Object data){
        return new ResultResponse().data(data).success().put("code","0");
    }
    /*
     * @Description: 通用错误返回
     * @Author: WangZiFan
     * @Date: 2019/10/19 14:28
     * @param e
     * @return com.manage.idc.common.entiy.ResultResponse
     */
    public static ResultResponse setErrorResult(Exception e) {
        return new ResultResponse().fail().message(e.getMessage());
    }
    /*
     * @Description: 导入错误信息
     * @Author: WangZiFan
     * @Date: 2019/10/23 21:01
     * @param s
     * @return com.manage.idc.common.entiy.ResultResponse
     */
    public static ResultResponse setImportError(String s) {
        return new ResultResponse().fail().message(s);
    }

    public static ResultResponse setErrorResultMessage(String message) {
        return new ResultResponse().message(message).fail();
    }
}
