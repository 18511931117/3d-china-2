package com.manage.idc.common.utils;

import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class StringUtile {

    private static final Map<String,String> months = new HashMap<String,String>();
    static {
        months.put("一月","01");
        months.put("二月","02");
        months.put("三月","03");
        months.put("四月","04");
        months.put("五月","05");
        months.put("六月","06");
        months.put("七月","07");
        months.put("八月","08");
        months.put("九月","09");
        months.put("十月","10");
        months.put("十一月","11");
        months.put("十二月","12");
    }

    public static boolean isDateTime(String timeStr) {
        String format = "((19|20)[0-9]{2})-(0?[1-9]|1[012])-(0?[1-9]|[12][0-9]|3[01]) "
                + "([01]?[0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9]";
        Pattern pattern = Pattern.compile(format);
        Matcher matcher = pattern.matcher(timeStr);
        if (matcher.matches()) {
            pattern = Pattern.compile("(\\d{4})-(\\d+)-(\\d+).*");
            matcher = pattern.matcher(timeStr);
            if (matcher.matches()) {
                int y = Integer.valueOf(matcher.group(1));
                int m = Integer.valueOf(matcher.group(2));
                int d = Integer.valueOf(matcher.group(3));
                if (d > 28) {
                    Calendar c = Calendar.getInstance();
                    c.set(y, m-1, 1);
                    int lastDay = c.getActualMaximum(Calendar.DAY_OF_MONTH);
                    return (lastDay >= d);
                }
            }
            return true;
        }
        return false;
    }


    public static String  dateFormat(String date){

        if(date==null){
            return null;
        }
        String[] dates = date.split("-");
        if(dates.length != 3 || months.get(dates[1])==null){
            throw new RuntimeException("格式错误");
        }
        return dates[2]+"-"+months.get(dates[1])+"-"+(dates[0].length()==1?("0"+dates[0]):dates[0]);
    }
}
