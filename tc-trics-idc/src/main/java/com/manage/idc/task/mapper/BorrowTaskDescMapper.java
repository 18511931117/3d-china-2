package com.manage.idc.task.mapper;

import com.manage.idc.task.domain.AllocationTaskDesc;
import com.manage.idc.task.domain.BorrowTaskDesc;
import org.apache.ibatis.annotations.Mapper;

import java.util.ArrayList;
import java.util.List;

@Mapper
public interface BorrowTaskDescMapper {
    int deleteByPrimaryKey(Long id);

    int insert(BorrowTaskDesc record);

    int insertSelective(BorrowTaskDesc record);

    BorrowTaskDesc selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(BorrowTaskDesc record);

    int updateByPrimaryKey(BorrowTaskDesc record);

    void updateByTaskId(BorrowTaskDesc borrowTaskDesc);

    List<BorrowTaskDesc> selectByCheckTaskId(Long id);

    List<BorrowTaskDesc> getBorrowTaskDesc(BorrowTaskDesc borrowTaskDesc);

    List<Long> getByTaskIdResIdList(Long taskId);


    BorrowTaskDesc selectOne(BorrowTaskDesc desc);

    List<BorrowTaskDesc> selectByExport(ArrayList<Long> ids);
}