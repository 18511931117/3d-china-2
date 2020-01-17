package com.manage.idc.common.utils;

import java.util.Random;

/**
 * @Author: WangZiFan
 * @Date: 2019/10/23 20:24
 * @Description:
 */
public class RandomUtile {
    public static String getRandomString(int bit){
        StringBuffer sb = new StringBuffer();
        Random random = new Random();

        for (int i=0;i<bit;i++)
        {
            sb.append(random.nextInt(10));
        }

        return sb.toString();
    }
}
