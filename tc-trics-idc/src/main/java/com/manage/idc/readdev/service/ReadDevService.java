package com.manage.idc.readdev.service;

import com.manage.idc.common.entiy.ResultResponse;
import com.manage.idc.readdev.domain.SysDevUser;

public interface ReadDevService {

    ResultResponse login(SysDevUser user);

    void logout(SysDevUser user);

    String checkMassage(String tid, String roomId);
}
