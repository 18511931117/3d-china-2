package com.manage.idc.common.entiy;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @Author: WangZiFan
 * @Date: 2019/10/18 10:21
 * @Description:
 */
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class PageRequest {
    /*
        当前页条数
     */
    private Integer limit;
    /*
        当前页
     */
    private Integer page;
    /*
        排序列名
     */
    private String sort;
    /*
        排序方式
     */
    private String sortOrder;
}
