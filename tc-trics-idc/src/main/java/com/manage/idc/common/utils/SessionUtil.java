package com.manage.idc.common.utils;

import com.google.gson.Gson;
import com.manage.idc.system.domain.SysUser;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.UnavailableSecurityManagerException;
import org.apache.shiro.session.Session;
import org.springframework.context.annotation.Configuration;

@Configuration
public class SessionUtil {

    public static SysUser getUser(){
        Object obj = null;
        Gson gson = new Gson();
        try{
            obj = SecurityUtils.getSubject().getPrincipal();
        }catch (UnavailableSecurityManagerException e){
            return null;
        }

        if (obj == null){
            return null;
        }
        //因为springboot热部署会自己实现一个类加载器，导致类型转换失败
        if (obj instanceof SysUser){
            return (SysUser) obj;
        }else{
            String s = gson.toJson(obj);
            return gson.fromJson(s,SysUser.class);
        }
    }



    public static Session getSession(){
        return SecurityUtils.getSubject().getSession();
    }
}
