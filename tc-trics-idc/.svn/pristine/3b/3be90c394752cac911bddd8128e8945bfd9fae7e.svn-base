package com.manage.idc.task.domain.export;

import com.manage.idc.common.converter.TaskStateConverter;
import com.wuwenze.poi.annotation.Excel;
import com.wuwenze.poi.annotation.ExcelField;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @Description
 * @Author lyq_j
 * @DATE 2019/10/24 16:36
 **/
@Data
@Excel("报废任务详情")
public class ScrapTaskDescExportBase {
    /**
     * 设备编号
     */
    @ExcelField("设备编号")
    private String resCode;

    @ExcelField("设备名称")
    private String resName;

    /**
     * 设备分类编码
     */
    @ApiModelProperty("设备分类编码")
    @ExcelField("设备分类")
    private String resTypeCode;

    @ExcelField("机房")
    private String roomName;

    /**
     * 机架
     */
    @ExcelField("机架")
    private String rackName;
    /**
     * 机位
     */
    @ExcelField("机位")
    private String sheft;

    /**
     * 标签编号
     */
    @ExcelField("标签编号")
    private String labelCode;

    @ExcelField("所有人")
    private  String ownerName;

    /**
     * '0-待执行,2-执行中,8-执行完毕',
     */
    @ApiModelProperty("'0-待执行,2-执行中,8-执行完毕',")
    @ExcelField(value = "状态", writeConverter= TaskStateConverter.class)
    private Integer state;
}
