package com.manage.idc.common.utils;

import com.google.gson.Gson;
import com.manage.idc.system.domain.Label;
import org.apache.commons.lang3.StringUtils;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.*;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * @Author: WangZiFan
 * @Date: 2019/10/18 17:03
 * @Description:
 */
public class ImportExeclUtil {

    private static final String XLS = "xls";
    private static final String XLSX = "xlsx";
    private static final DateFormat FORMAT = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");

    /**
     * 输出数据到自定义模版的Excel输出流
     *
     * @param excelTemplate 自定义模版文件
     * @param data          数据
     * @param outputStream  Excel输出流
     * @throws IOException 错误时抛出异常，由调用者处理
     */
    public static void writeDataToTemplateOutputStream(File excelTemplate, List<List<Object>> data, OutputStream outputStream) throws IOException {
        Workbook book = ImportExeclUtil.getWorkbookFromExcel(excelTemplate);
        ImportExeclUtil.writeDataToWorkbook(null, data, book, 0);
        ImportExeclUtil.writeWorkbookToOutputStream(book, outputStream);
    }

    /**
     * 从Excel文件获取Workbook对象
     *
     * @param excelFile Excel文件
     * @return Workbook对象
     * @throws IOException 错误时抛出异常，由调用者处理
     */
    public static Workbook getWorkbookFromExcel(File excelFile) throws IOException {
        try (
                InputStream inputStream = new FileInputStream(excelFile);
        ) {

            if (excelFile.getName().endsWith(XLS)) {
                return new HSSFWorkbook(inputStream);
            } else if (excelFile.getName().endsWith(XLSX)) {
                return new XSSFWorkbook(inputStream);
            } else {
                throw new IOException("文件类型错误");
            }
        }
    }

    /**
     * 把Workbook对象内容输出到Excel文件
     *
     * @param book Workbook对象
     * @param file Excel文件
     * @throws FileNotFoundException 找不到文件异常，文件已创建，实际不存在该异常
     * @throws IOException           输入输出异常
     */
    public static void writeWorkbookToFile(Workbook book, File file) throws FileNotFoundException, IOException {
        if (!file.exists()) {
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            file.createNewFile();
        }
        try (
                OutputStream outputStream = new FileOutputStream(file);
        ) {
            writeWorkbookToOutputStream(book, outputStream);
        }
    }

    /**
     * 把Workbook对象输出到Excel输出流
     *
     * @param book         Workbook对象
     * @param outputStream Excel输出流
     * @throws IOException 错误时抛出异常，由调用者处理
     */
    public static void writeWorkbookToOutputStream(Workbook book, OutputStream outputStream) throws IOException {
        book.write(outputStream);
    }

    /**
     * 输出数据到Workbook对象中指定页码
     *
     * @param title 标题，写在第一行，可传null
     * @param data  数据
     * @param book  Workbook对象
     * @param page  输出数据到Workbook指定页码的页面数
     */
    public static void writeDataToWorkbook(List<String> title, List<List<Object>> data, Workbook book, int page) {
        Sheet sheet = book.getSheetAt(page);

        Row row = null;
        Cell cell = null;

        // 设置表头
        if (null != title && !title.isEmpty()) {
            row = sheet.getRow(0);
            if (null == row) {
                row = sheet.createRow(0);
            }

            for (int i = 0; i < title.size(); i++) {
                cell = row.getCell(i);
                if (null == cell) {
                    cell = row.createCell(i);
                }
                cell.setCellValue(title.get(i));
            }
        }

        List<Object> rowData = null;
        for (int i = 0; i < data.size(); i++) {

            row = sheet.getRow(i + 1);
            if (null == row) {
                row = sheet.createRow(i + 1);
            }

            rowData = data.get(i);
            if (null == rowData) {
                continue;
            }
            for (int j = 0; j < rowData.size(); j++) {
                cell = row.getCell(j);
                if (null == cell) {
                    cell = row.createCell(j);
                }
                setValue(cell, rowData.get(j));
            }
        }
    }

    /**
     * 读取Excel文件第一页
     *
     * @param pathname 文件路径名
     * @return 第一页数据集合
     * @throws IOException 错误时抛出异常，由调用者处理
     */
    public static List readExcelFirstSheet(String pathname, List<String> propertys, Type type) throws IOException {
        File file = new File(pathname);
        return readExcelFirstSheet(file,propertys,type,null);

    }

    /**
     * 读取Excel文件第一页
     *
     * @param file Excel文件
     * @return 第一页数据集合
     * @throws IOException 错误时抛出异常，由调用者处理
     */
    public static List readExcelFirstSheet(File file, List<String> propertys, Type type, List<String> titleCheck) throws IOException {
        try (
                InputStream inputStream = new FileInputStream(file);
        ) {

            if (file.getName().endsWith(XLS)) {
                return readXlsFirstSheet(inputStream,propertys,type,titleCheck);
            } else if (file.getName().endsWith(XLSX)) {
                return readXlsxFirstSheet(inputStream,propertys,type,titleCheck);
            } else {
                throw new IOException("文件类型错误");
            }
        }

    }

    /**
     * 读取xls格式Excel文件第一页
     *
     * @param inputStream Excel文件输入流
     * @return 第一页数据集合
     * @throws IOException 错误时抛出异常，由调用者处理
     */
    public static List readXlsFirstSheet(InputStream inputStream, List<String> propertys, Type type, List<String> titleCheck) throws IOException {
        Workbook workbook = new HSSFWorkbook(inputStream);
        return readExcelFirstSheet(workbook,propertys,type,titleCheck);
    }

    /**
     * 读取xlsx格式Excel文件第一页
     *
     * @param inputStream Excel文件输入流
     * @return 第一页数据集合
     * @throws IOException 错误时抛出异常，由调用者处理
     */
    public static List readXlsxFirstSheet(InputStream inputStream, List<String> propertys, Type type, List<String> titleCheck) throws IOException {
        Workbook workbook = new XSSFWorkbook(inputStream);
        return readExcelFirstSheet(workbook,propertys,type,titleCheck);
    }

    /**
     * 读取Workbook第一页
     *
     * @param book Workbook对象
     * @return 第一页数据集合
     */
    public static List readExcelFirstSheet(Workbook book, List<String> propertys, Type type, List<String> titleCheck) {
        return readExcel(book, 0,propertys,type,titleCheck);
    }

    /**
     * 读取指定页面的Excel
     *
     * @param book Workbook对象
     * @param page 页码
     * @return 指定页面数据集合
     */
    public static List readExcel(Workbook book, int page, List<String> propertys, Type type, List<String> titleCheck) {
        List list = new ArrayList<>();
        Sheet sheet = book.getSheetAt(page);
        for (int i = 0; i <= sheet.getLastRowNum(); i++) {
            Row row = sheet.getRow(i);
            if(i == 0){
                for (int j = 0; j < propertys.size(); j++) {
                    if(!titleCheck.get(j).toString().equals(row.getCell(j).toString())){return null;}
                }
            }else{
                // 如果当前行为空，则加入空，保持行号一致
                if (null == row) {
                    continue;
                }else if (row.getCell(0) == null || row.getCell(1) == null){
                    continue;
                }else if(StringUtils.isEmpty(row.getCell(0).toString())&&StringUtils.isEmpty(row.getCell(1).toString())){
                    continue;
                }
                HashMap<String, Object> map = new HashMap<>();
                for (int j = 0; j < propertys.size(); j++) {
                    if(row.getCell(j) != null){
                        if("barcode".equals(propertys.get(j))){
                            DecimalFormat df = new DecimalFormat("0");
                            map.put(propertys.get(j),df.format(row.getCell(j).getNumericCellValue()));
                        }else{
                            Cell cell = row.getCell(j);
                            int cellType = cell.getCellType();
                            if(cellType == 0){
                                DecimalFormat df = new DecimalFormat("0.00");
                                map.put(propertys.get(j),df.format(row.getCell(j).getNumericCellValue()));
                            }else{

                            }
                            //double numericCellValue = cell.getNumericCellValue();
                            map.put(propertys.get(j),row.getCell(j).toString());
                        }

                    }
               /* Cell cell = row.getCell(j);
                columns.add(getValue(cell));*/
                }

                //生成id
                map.put("id",IdGen.getUUId()+"");
                Gson gson = new Gson();
                if(type == Map.class){
                    Map<String,String> o = gson.fromJson(gson.toJson(map), type);
                    list.add(o);
                }else{
                    Object o = gson.fromJson(gson.toJson(map), type);
                    list.add(o);
                }


            }

        }

        return list;
    }




    /**
     * 设置单元格值
     *
     * @param cell  单元格
     * @param value 值
     */
    private static void setValue(Cell cell, Object value) {
        if (null == cell) {
            return;
        }

        if (null == value) {
            cell.setCellValue((String) null);
        } else if (value instanceof Boolean) {
            cell.setCellValue((Boolean) value);
        } else if (value instanceof Date) {
            cell.setCellValue(FORMAT.format((Date) value));
        } else if (value instanceof Double) {
            cell.setCellValue((Double) value);
        } else {
            cell.setCellValue(value.toString());
        }

    }
}
