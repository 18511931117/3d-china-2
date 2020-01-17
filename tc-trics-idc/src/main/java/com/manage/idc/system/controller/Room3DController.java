package com.manage.idc.system.controller;

import io.swagger.annotations.Api;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @Description
 * @Author lyq_j
 * @DATE 2019/11/13 15:29
 **/
@Controller
@RequestMapping("3dRoom")
@Api(tags = "3D机房")
public class Room3DController {
    @RequestMapping("")
    public ModelAndView roleIdex(ModelAndView model){
        model.setViewName("system/3DRoom");
        return model;
    }
}
