package com.manage.idc.common.entiy;

import com.manage.idc.system.domain.SysMenu;
import lombok.Data;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;


@Data
public class Tree<T> implements Serializable {

    private static final long serialVersionUID = 7681873362531265829L;

    private String id;
    private String icon;
    private String url;
    private String title;
    private String text;
    //private Map<String, Object> state;

    private TreeState state = new TreeState();
    private boolean checked = false;
    private List<Tree<T>> children = new ArrayList<>();
    private List<Tree<T>> nodes = new ArrayList<>();
    private String parentId;
    private T data;

}