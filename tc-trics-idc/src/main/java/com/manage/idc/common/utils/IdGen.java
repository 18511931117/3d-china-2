package com.manage.idc.common.utils;

import org.apache.shiro.session.Session;
import org.apache.shiro.session.mgt.eis.SessionIdGenerator;
import org.springframework.util.IdGenerator;

import java.io.Serializable;
import java.util.UUID;

/**
 * 生成ID
 */
public class IdGen implements IdGenerator, SessionIdGenerator {

    private static SnowflakeIdWorker idWorker = SnowflakeIdWorker.getInstance(0, 0);

    /**
     * 获取UUID
     * @return
     */
    public static long getUUId(){
        return idWorker.nextId()*10+(int)(Math.random()*10);
    }

    /**
     * 带前缀的UUID
     * @param format
     * @return
     */
    public static String getUUId(String format){
        return String.valueOf(format + idWorker.nextId());
    }

    @Override
    public Serializable generateId(Session session) {
        return IdGen.getUUId();
    }

    @Override
    public UUID generateId() {
        return UUID.fromString(IdGen.getUUId()+"") ;
    }
}
