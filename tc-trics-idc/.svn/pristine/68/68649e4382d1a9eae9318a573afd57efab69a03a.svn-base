package com.manage.idc.common.utils;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/**
 * @Author: WangZiFan
 * @Date: 2019/10/19 10:43
 * @Description:
 */
public class ListUtile {
    public static CopyOnWriteArrayList<List> divisionList(List dataList){
        CopyOnWriteArrayList<List> listArrayList = new CopyOnWriteArrayList<List>();
        if(null!=dataList&&dataList.size()>0){
            int pointsDataLimit = 100;//限制条数
            Integer size = dataList.size();
            //判断是否有必要分批
            if(pointsDataLimit<size){
                int part = size/pointsDataLimit;//分批数
                System.out.println("共有 ： "+size+"条，！"+" 分为 ："+part+"批");
                for (int i = 0; i < part; i++) {
                List listPage = new ArrayList(dataList.subList(0, pointsDataLimit));
                listArrayList.add(listPage);
                System.out.println(listPage);
                //剔除
                dataList.subList(0, pointsDataLimit).clear();
            }
                if(!dataList.isEmpty()){
                    listArrayList.add(dataList);
                }
            }else{
                listArrayList.add(dataList);
            }
        }else{
            System.out.println("没有数据!!!");
        }
        return listArrayList;
    }
}
