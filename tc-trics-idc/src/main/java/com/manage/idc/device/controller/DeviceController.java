package com.manage.idc.device.controller;

import com.github.pagehelper.PageInfo;
import com.manage.idc.common.annotation.Operation;
import com.manage.idc.common.entiy.PageRequest;
import com.manage.idc.common.entiy.ResultResponse;
import com.manage.idc.common.utils.DataSetUtile;
import com.manage.idc.device.domain.Res;
import com.manage.idc.device.domain.ext.ResExtend;
import com.manage.idc.device.domain.ext.ResQuery;
import com.manage.idc.device.service.DeviceService;
import com.manage.idc.system.mapper.LabelMapper;
import com.manage.idc.system.service.LabelService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
 * @Author: WangZiFan
 * @Date: 2019/10/17 9:35
 * @Description:
 */
@Controller
@Api(tags = "设备管理")
@RequestMapping("device")
public class DeviceController {

    @Autowired
    private DeviceService deviceService;


    @Autowired
    private LabelService labelService;

    @Autowired
    private LabelMapper labelMapper;


    /*
     * @Description: 跳转设备页面
     * @Author: WangZiFan
     * @Date: 2019/10/28 19:14
     * @param model
     * @return org.springframework.web.servlet.ModelAndView
     */
    @GetMapping("/toDevice")
    @ApiOperation(value = "跳转设备页面", httpMethod = "GET", response = ModelAndView.class)
    public ModelAndView toDevice(ModelAndView model){
        model.setViewName("device/device");
        return model;
    }
    @GetMapping("/test")
    @ApiOperation(value = "导入页面", httpMethod = "GET", response = ModelAndView.class)
    public ModelAndView test(ModelAndView model){
        model.setViewName("device/deviceBoot");
        return model;
    }

    @GetMapping("/toImport")
    @ApiOperation(value = "导入页面", httpMethod = "GET", response = ModelAndView.class)
    public ModelAndView toImport(ModelAndView model){
        model.setViewName("device/deviceImport");
        return model;
    }

    /*
     * @Description: 编辑页面
     * @Author: WangZiFan
     * @Date: 2019/11/1 15:15
     * @param model
     * @return org.springframework.web.servlet.ModelAndView
     */
    @GetMapping("/toEdit/{id}")
    @ApiOperation(value = "编辑页面", httpMethod = "GET", response = ModelAndView.class)
    public ModelAndView toEdit(@PathVariable String id,ModelAndView model){
        model.addObject("id",id);
        model.setViewName("device/deviceEdit");
        return model;
    }

    @GetMapping("/toInfo/{id}")
    @ApiOperation(value = "编辑页面", httpMethod = "GET", response = ModelAndView.class)
    public ModelAndView toInfo(@PathVariable String id,ModelAndView model){
        model.addObject("id",id);
        model.setViewName("device/deviceInfo");
        return model;
    }

    /*
     * @Description: 设备贴标页面
     * @Author: WangZiFan
     * @Date: 2019/10/30 10:51
     * @param model
     * @return org.springframework.web.servlet.ModelAndView
     */
    @GetMapping("/toDeviceBind")
    @ApiOperation(value = "设备贴标页面", httpMethod = "GET", response = ModelAndView.class)
    public ModelAndView toDeviceBind(ModelAndView model){
        model.setViewName("device/deviceBind");
        return model;
    }

    /*
     * @Description: 设备标签管理
     * @Author: WangZiFan
     * @Date: 2019/10/30 10:55
     * @param model
     * @return org.springframework.web.servlet.ModelAndView
     */
    @GetMapping("/toDeviceLabel")
    @ApiOperation(value = "设备标签管理", httpMethod = "GET", response = ModelAndView.class)
    public ModelAndView toDeviceLabel(ModelAndView model){
        model.setViewName("device/deviceLabel");
        return model;
    }

    /*
     * @Description: app端获取设备分页对象
     * @Author: WangZiFan
     * @Date: 2019/10/25 10:09
     * @param queryStr
     * @param pageRequest
     * @return com.manage.idc.common.entiy.ResultResponse
     */
    @GetMapping("/app/getDevicePage")
    @ApiOperation(value = "app端获取设备分页对象", httpMethod = "GET", response = ResultResponse.class)
    @ResponseBody
    public ResultResponse getAppDevicePage(ResQuery resQuery,PageRequest pageRequest){
        PageInfo<ResExtend> pageInfo = deviceService.getAppDevicePage(resQuery,pageRequest);
        return DataSetUtile.setPageSuccessResult(pageInfo);
    }



    /*
     * @Description: app端获取设备详细信息
     * @Author: WangZiFan
     * @Date: 2019/10/25 10:10
     * @param queryStr
     * @param pageRequest
     * @return com.manage.idc.common.entiy.ResultResponse
     */
    @GetMapping("/app/getDeviceInfo")
    @ApiOperation(value = "app端获取设备详细信息", httpMethod = "GET", response = ResultResponse.class)
    @ResponseBody
    public ResultResponse getAppDeviceInfo(Long id){
        List<Map<String,Object>> data = deviceService.getAppDeviceInfo(id);
        return DataSetUtile.setSuccessResult(data);
    }


    /*
     * @Description: 获取设备分页列表
     * @Author: WangZiFan
     * @Date: 2019/10/22 19:05
     * @param res
     * @param pageRequest
     * @return com.manage.idc.common.entiy.ResultResponse
     */
    @GetMapping("getDevicePage")
    @ResponseBody
    @ApiOperation(value = "获取设备分页列表", httpMethod = "GET", response = ResultResponse.class)
    public ResultResponse getDevicePage(ResQuery res, PageRequest pageRequest){
        PageInfo<Map<String,Object>> pageInfo = deviceService.getDevicePage(res,pageRequest);
        return DataSetUtile.setPageSuccessResult(pageInfo);
    }

    /*
     * @Description: 添加设备
     * @Author: WangZiFan
     * @Date: 2019/10/22 21:13
     * @param res
     * @return com.manage.idc.common.entiy.ResultResponse
     */
    @PostMapping("addDevice")
    @RequiresPermissions("device:addDevice")
    @Operation(operation = "添加设备")
    @ResponseBody
    @ApiOperation(value = "添加设备", httpMethod = "POST", response = ResultResponse.class)
    public ResultResponse addDevice(Res res){
        deviceService.addDevice(res);
        return DataSetUtile.setSuccessResult(null);
    }


    /*
     * @Description: 删除设备
     * @Author: WangZiFan
     * @Date: 2019/10/22 21:13
     * @param res
     * @return com.manage.idc.common.entiy.ResultResponse
     */
    @PostMapping("delDevice/{id}")
    @RequiresPermissions("device:delDevice")
    @ResponseBody
    @Operation(operation = "删除设备")
    @ApiOperation(value = "删除设备", httpMethod = "POST", response = ResultResponse.class)
    public ResultResponse delDevice(@PathVariable Long id){
        deviceService.delDevice(id);
        return DataSetUtile.setSuccessResult(null);
    }


    @PostMapping("batchDelDevice")
    @ResponseBody
    @Operation(operation = "批量删除设备")
    @RequiresPermissions("device:batchDelDevice")
    @ApiOperation(value = "批量删除设备", httpMethod = "POST", response = ResultResponse.class)
    public ResultResponse batchDelDevice(@RequestBody List<Long> ids){
        deviceService.batchDelDevice(ids);
        return DataSetUtile.setSuccessResult(null);
    }

    /*
     * @Description: 修改设备信息
     * @Author: WangZiFan
     * @Date: 2019/10/23 9:20
     * @param res
     * @return com.manage.idc.common.entiy.ResultResponse
     */
    @PostMapping("updateDevice")
    @RequiresPermissions("device:updateDevice")
    @ResponseBody
    @Operation(operation = "修改设备")
    @ApiOperation(value = "修改设备", httpMethod = "POST", response = ResultResponse.class)
    public ResultResponse updateDevice(ResExtend res){
        deviceService.updateDevice(res);
        return DataSetUtile.setSuccessResult(null);
    }

    /*
     * @Description: 获取设备基本信息分页
     * @Author: WangZiFan
     * @Date: 2019/10/23 9:35
     * @param res
     * @param pageRequest
     * @return com.manage.idc.common.entiy.ResultResponse
     */
    @GetMapping("getDeviceBaseInfoPage")
    @ResponseBody
    @ApiOperation(value = "获取设备基本信息分页", httpMethod = "GET", response = ResultResponse.class)
    public ResultResponse getDeviceBaseInfoPage(ResExtend res, PageRequest pageRequest){
        PageInfo<ResExtend> pageInfo = deviceService.getDeviceBaseInfoPage(res,pageRequest);
        return DataSetUtile.setPageSuccessResult(pageInfo);
    }


    /*
     * @Description: 获取设备贴标列表
     * @Author: WangZiFan
     * @Date: 2019/10/24 15:51
     * @param pageRequest
     * @return com.manage.idc.common.entiy.ResultResponse
     */
    @GetMapping("getDeviceLabelingPage")
    @ResponseBody
    @ApiOperation(value = "获取设备贴标列表", httpMethod = "GET", response = ResultResponse.class)
    public ResultResponse getDeviceLabelingPage(PageRequest pageRequest){
        PageInfo<ResExtend> pageInfo = deviceService.getDeviceLabelingPage(pageRequest);
        return DataSetUtile.setPageSuccessResult(pageInfo);
    }


    @GetMapping("getNotBindDevice")
    @ResponseBody
    @ApiOperation(value = "获取获取未绑定的设备", httpMethod = "GET", response = ResultResponse.class)
    public ResultResponse getNotBindDevice(ResQuery resQuery,PageRequest pageRequest){
        PageInfo<ResExtend> pageInfo = deviceService.getNotBindDevice(resQuery,pageRequest);
        return DataSetUtile.setPageSuccessResult(pageInfo);
    }

    /*
     * @Description: 导出设备模板
     * @Author: WangZiFan
     * @Date: 2019/10/23 18:40
     * @param response
     * @return void
     */
    @GetMapping("exportDeviceModel")
    @Operation(operation = "导出设备模板")
    @ApiOperation(value = "导出设备模板", httpMethod = "GET")
    /*@RequiresPermissions("device:exportDeviceModel")*/
    public void exportDeviceModel(HttpServletResponse response){
        try {
            deviceService.exportDeviceModel(response);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /*
     * @Description: 导入设备
     * @Author: WangZiFan
     * @Date: 2019/10/24 13:51
     * @param devFile
     * @return com.manage.idc.common.entiy.ResultResponse
     */
    @PostMapping("importDevice")
    @RequiresPermissions("device:importDevice")
    @Operation(operation = "导入设备")
    @ResponseBody
    @ApiOperation(value = "导入设备", httpMethod = "POST", response = ResultResponse.class)
    public ResultResponse importDevice(MultipartFile devFile){
        List<Map<String,Object>> b = null;
        try {
            b = deviceService.importDevice(devFile);
            if(null == b){
                return DataSetUtile.setImportError("上传模板与解析模板不符，请下载最新模板。");
            }
        } catch (Exception e) {
            e.printStackTrace();
            return DataSetUtile.setErrorResult(e);
        }
        return DataSetUtile.setSuccessResult(b);
    }


    @PostMapping("exportDevice")
    @ResponseBody
    @Operation(operation = "导出设备")
    @RequiresPermissions("device:exportDevice")
    @ApiOperation(value = "导出设备", httpMethod = "POST", response = ResultResponse.class)
    public void exportDevice(@RequestParam(name="ids",required = false) List<Long> ids,HttpServletResponse response){
        try {
            deviceService.exportDevice(ids,response);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /*
     * @Description: 设备标签绑定
     * @Author: WangZiFan
     * @Date: 2019/10/24 15:26
     * @param res
     * @return com.manage.idc.common.entiy.ResultResponse
     */
    @PostMapping("bindLabel")
    @RequiresPermissions("device:bindLabel")
    @Operation(operation = "设备绑定标签")
    @ResponseBody
    @ApiOperation(value = "设备绑定标签", httpMethod = "POST", response = ResultResponse.class)
    public ResultResponse bindLabel(@RequestBody List<Res> resList){
        for (Res res:
        resList) {
            deviceService.bindLabel(res);
        }
        return DataSetUtile.setSuccessResult(null);
    }



    @PostMapping("app/bindLabel")
    @ResponseBody
    @ApiOperation(value = "App设备绑定标签", httpMethod = "POST", response = ResultResponse.class)
    public ResultResponse appBindLabel(Res res){
        res.setIsAppBind(1);
        String s = deviceService.appBindLabel(res);
        if(s == null){
            return DataSetUtile.setSuccessResult(null);
        }else{
            return DataSetUtile.setErrorResultMessage(s);
        }
    }



    /*
     * @Description: 设备解绑标签
     * @Author: WangZiFan
     * @Date: 2019/10/24 15:26
     * @param res
     * @return com.manage.idc.common.entiy.ResultResponse
     */
    @PostMapping("untyingLabel")
    @RequiresPermissions("device:untyingLabel")
    @ResponseBody
    @ApiOperation(value = "设备解绑标签", httpMethod = "POST", response = ResultResponse.class)
    public ResultResponse untyingLabel(Res res){
        deviceService.untyingLabel(res);
        return DataSetUtile.setSuccessResult(null);
    }



    @GetMapping("print")
    @ResponseBody
    @RequiresPermissions("device:print")
    @ApiOperation(value = "打印", httpMethod = "GET", response = ResultResponse.class)
    public ResultResponse print(Res res){
        deviceService.print(res);
        return DataSetUtile.setSuccessResult(null);
    }


    @GetMapping("confirm")
    @ResponseBody
    @ApiOperation(value = "确认贴标", httpMethod = "GET", response = ResultResponse.class)
    public ResultResponse confirm(Res res){
        deviceService.confirm(res);
        return DataSetUtile.setSuccessResult(null);
    }


    @PostMapping("batchPrint")
    @ResponseBody
    @RequiresPermissions("device:batchPrint")
    @ApiOperation(value = "批量打印", httpMethod = "POST", response = ResultResponse.class)
    public ResultResponse batchPrint(@RequestBody List<Res> resList){
        for (Res res:
        resList) {
            deviceService.print(res);
        }
        return DataSetUtile.setSuccessResult(null);
    }

    @PostMapping("batchConfirm")
    @ResponseBody
    @RequiresPermissions("device:batchConfirm")
    @ApiOperation(value = "批量确认贴标", httpMethod = "POST", response = ResultResponse.class)
    public ResultResponse batchConfirm(@RequestBody List<Res> resList){
        for (Res res:
                resList) {
            deviceService.confirm(res);
        }
        return DataSetUtile.setSuccessResult(null);
    }



    @PostMapping("bindPcExport")
    @ResponseBody
    @RequiresPermissions("device:bindPcExport")
    @ApiOperation(value = "pc绑定导出", httpMethod = "POST", response = ResultResponse.class)
    public void bindPcExport(@RequestParam(name="ids",required = false) List<Long> ids,HttpServletResponse response){
        deviceService.bindPcExport(ids,response);
    }


    @PostMapping("bindPhoneExport")
    @ResponseBody
    @RequiresPermissions("device:bindPhoneExport")
    @ApiOperation(value = "手持机绑定导出", httpMethod = "POST", response = ResultResponse.class)
    public void bindPhoneExport(@RequestParam(name="ids",required = false) List<Long> ids,HttpServletResponse response){
        deviceService.bindPhoneExport(ids,response);
    }

}
