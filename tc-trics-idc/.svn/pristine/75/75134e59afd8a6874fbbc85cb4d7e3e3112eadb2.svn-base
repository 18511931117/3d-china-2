package com.manage.idc.common.converter;

import com.manage.idc.common.entiy.IdcConstant;
import com.manage.idc.common.enums.TaskState;
import com.manage.idc.common.utils.DateUtil;
import com.wuwenze.poi.convert.WriteConverter;
import com.wuwenze.poi.exception.ExcelKitWriteConverterException;
import lombok.extern.slf4j.Slf4j;

import java.text.ParseException;

/**
 * @Description
 * @Author lyq_j
 * @DATE 2019/10/23 16:38
 **/
@Slf4j
public class TaskStateConverter implements WriteConverter {
    @Override
    public String convert(Object value) throws ExcelKitWriteConverterException {
        if (value == null)
            return "";
        else {
            if (value.equals(TaskState.NO_STAR_TASK.getState().toString())) {
                return "待执行";
            } else if (value.equals(TaskState.CONDUCT_TASK.getState().toString())) {
                return "执行中";
            } else if (value.equals(TaskState.SUCCESS_TASK.getState().toString())) {
                return "已完成";
            }else if(value.equals(TaskState.NOT_ALREADY_PAN.getState().toString())){
                return "未盘";
            }else if(value.equals(TaskState.ALREADY_PAN.getState().toString())){
                return "已盘";
            }
        }
        return "";
    }
}
