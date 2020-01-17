package com.manage.idc.common.entiy;

/**
 * @Description 常量
 * @Author lyq_j
 * @DATE 2019/10/14 14:28
 **/
public class IdcConstant {
    // 前端页面路径前缀
    public static final String VIEW_PREFIX = "idc/views/";

    // 验证码 Session Key
    public static final String CODE_PREFIX = "idc_captcha_";

    // 系统参数
    public static interface SYSTEM_ISDEL {
        //未删除
        Integer NOT_DEL = 0;

        //已删除
        Integer DEL = 1;
    }


    public static interface ALARMS_STATE {
        //解除
        Integer RELIEVE = 0;

        //未解除
        Integer NOT_RELIEVE = 1;

        Integer NORMAL = 2;
    }


    public static interface ALARMS_LOG_FEEBBACK_FLAG {
        //无权限
        Integer NOT = 0;

        //有权限
        Integer IS = 1;

    }


    public static interface DEV_USER_LOGIN {
        //未删除
        Integer NOT_LOGIN = 0;

        //已删除
        Integer LOGIN = 1;
    }

    public static interface SYSTEM_ISBIND {
        //未绑定
        Integer NOT_BIND = 0;

        //未绑定
        Integer BIND = 1;
    }


    public static interface SYSTEM_PASTED {
        Integer NOT_PASTED = 0;

        Integer PASTED = 1;
    }


    public static interface SYSTEM_PRINT {
        Integer NOT_PRINT = 0;

        Integer PRINT = 1;
    }
}
