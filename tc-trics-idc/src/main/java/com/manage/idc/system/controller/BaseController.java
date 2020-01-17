package com.manage.idc.system.controller;

import com.manage.idc.system.domain.SysUser;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.subject.Subject;

/**
 * @Description shiro 控制
 * @Author lyq_j
 * @DATE 2019/10/14 13:52
 **/
public class BaseController {

    private Subject getSubject() {
        return SecurityUtils.getSubject();
    }

    protected void login(AuthenticationToken token) {
        getSubject().login(token);
    }
    protected SysUser getCurrentUser() {
        return (SysUser) getSubject().getPrincipal();
    }
}
