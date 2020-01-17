package com.manage.idc.common.entiy;

import lombok.Data;

@Data
public class SelectTreeEntity {
    /*
        id
     */
    private Integer id;
    /*
        名称
     */
    private String text;
    /*
        上级id
     */
    private String parent;

    /*
        数据Id
     */
    private String dataId;
    /*
        数据上级Id
     */
    private String parentId;
}
