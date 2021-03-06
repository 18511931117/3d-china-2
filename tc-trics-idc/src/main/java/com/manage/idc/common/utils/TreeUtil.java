package com.manage.idc.common.utils;



import com.manage.idc.common.entiy.Tree;
import com.manage.idc.common.entiy.TreeState;
import com.manage.idc.system.domain.SysMenu;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class TreeUtil {

    protected TreeUtil() {

    }

    public static <T> Tree<T> buildMenuTree(List<Tree<T>> nodes) {
        if (nodes == null) {
            return null;
        }
        List<Tree<T>> topNodes = new ArrayList<>();
        nodes.forEach(children -> {
            String pid = children.getParentId();
            if (pid == null || "0".equals(pid)) {
                topNodes.add(children);
                return;
            }
            for (Tree<T> parent : nodes) {
                String id = parent.getId();
                if (id != null && id.equals(pid)) {
                    parent.getChildren().add(children);
                    parent.getNodes().add(children);
                    return;
                }
            }
        });

        Tree<T> root = new Tree<>();
        root.setId("0");
        root.setParentId("");
        root.setChecked(true);
        root.setChildren(topNodes);
        Map<String, Object> state = new HashMap<>(16);
        //root.setState(state);
        return root;
    }


    public static List<Tree<SysMenu>> convertMenus(List<SysMenu> menus,List<Long> menuIds) {
        List<Tree<SysMenu>> trees = new ArrayList<>();
        menus.forEach(menu -> {
            Tree<SysMenu> tree = new Tree<>();
            tree.setId(String.valueOf(menu.getId()));
            tree.setParentId(String.valueOf(menu.getParentId()));
            tree.setTitle(menu.getName());
            tree.setText(menu.getName());
            tree.setIcon(null);
            tree.setUrl(menu.getUrl());
            tree.setData(menu);
            if(menuIds!=null &&menuIds.contains(menu.getId())){
                TreeState state = tree.getState();
                state.setSelected(true);
                state.setChecked(true);
            }
            trees.add(tree);
        });
        return trees;
    }
}