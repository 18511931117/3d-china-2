/*

var editObj=null,ptable=null,treeGrid=null,tableId='treeTable',layer=null;
layui.config({
    base: '../js/design/extend/'
}).extend({
    treeGrid:'treeGrid'
}).use(['jquery','treeGrid','layer'], function(){
    var $=layui.jquery;
    treeGrid = layui.treeGrid;//很重要
    layer=layui.layer;
    ptable=treeGrid.render({
        id:tableId
        ,elem: '#'+tableId
        ,url: ctxPath+'resType/getList'
        ,cellMinWidth: 100
        ,idField:'id'//必須字段
        ,treeId:'id'//树形id字段名称
        ,treeUpId:'pid'//树形父id字段名称
        ,treeShowName:'resTypeName'//以树形式显示的字段
        ,heightRemove:[".dHead",10]//不计算的高度,表格设定的是固定高度，此项不生效
        ,height:'400px'
        ,isFilter:false
        ,iconOpen:false//是否显示图标【默认显示】
        ,isOpenDefault:true//节点默认是展开还是折叠【默认展开】
        ,loading:true
        ,method:'get'
        ,isPage:false
        ,cols: [[
             {type:'checkbox',sort:true}
            ,{field:'level', title: '级别'}
            ,{field:'resTypeName', title: '分类名称'}
            ,{field:'fullCode', title: '编号'}
            ,{field:'pid', title: 'pid',edit:'text'}
            ,{width:100,title: '操作', align:'center'
                ,templet: function(d){
                    var html='';
                    var addBtn='<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="add">添加</a>';
                    var delBtn='<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>';
                    var editBtn='<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="edit">编辑</a>';
                    return editBtn+addBtn+delBtn;
                }
            }
        ]]
    });

    treeGrid.on('tool('+tableId+')',function (obj) {
        if(obj.event === 'del'){//删除行
            del(obj);
        }else if(obj.event==="add"){//添加行
            layer.open({
                //layer提供了5种层类型。可传入的值有：0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
                type:2,
                title:"添加设备分类",
                area: ['80%','80%'],
                content: ctxPath+'resType/toAddResType?id='+obj.data.id+'&fullCode='+obj.data.fullCode+'&resTypeName='+obj.data.resTypeName+'&level='+obj.data.level
                ,btn: ['保存','关闭']
                ,yes: function(index, layero){
                    var body = layui.layer.getChildFrame('body', index);
                    body.find("#add").find(":input[name='fullCode']").val(body.find("#add").find(":input[name='fullCode']").val() + "_" + body.find("#add").find(":input[name='resTypeCode']").val())
                    $.ajax({
                        url: ctxPath +"resType/addResType",
                        type:'post',
                        data:body.find("#add").serialize(),
                        //这儿的三个参数其实就是XMLHttpRequest里面带的信息。
                        success: function(data){
                            if(data.code = '0'){
                                layui.layer.msg("添加成功");
                                layui.layer.close(index);
                            }else{
                                layui.layer.error("添加失败!")
                            }
                        }
                    })
                }
                ,btn2: function(index, layero){
                    layui.layer.close(index);
                }
            });
        }else if(obj.event==="edit"){//编辑行
            layer.open({
                //layer提供了5种层类型。可传入的值有：0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
                type:2,
                title:"修改设备分类",
                area: ['80%','80%'],
                content: ctxPath+'resType/toEdit/'+obj.data.id
                ,btn: ['保存','关闭']
                ,yes: function(index, layero){
                    var body = layui.layer.getChildFrame('body', index);
                    body.find("#add").find(":input[name='fullCode']").val(body.find("#add").find(":input[name='fullCode']").val() + "_" + body.find("#add").find(":input[name='resTypeCode']").val())
                    $.ajax({
                        url: ctxPath +"resType/updateResType",
                        type:'post',
                        data:body.find("#add").serialize(),
                        //这儿的三个参数其实就是XMLHttpRequest里面带的信息。
                        success: function(data){
                            if(data.code = '0'){
                                layui.layer.msg("编辑成功");
                                layui.layer.close(index);
                            }else{
                                layui.layer.error("编辑失败!")
                            }
                        }
                    })
                }
                ,btn2: function(index, layero){
                    layui.layer.close(index);
                }
            });
        }
    });
});

function del(obj) {
    layer.confirm("你确定删除数据吗？如果存在下级节点则一并删除，此操作不能撤销！", {icon: 3, title:'提示'},
        function(index){//确定回调
            $.ajax({
                url: ctxPath +"resType/delResType/"+obj.data.id,
                type:'post',
                //这儿的三个参数其实就是XMLHttpRequest里面带的信息。
                success: function(data){
                    if(data.code = '0'){
                        layui.layer.msg("删除成功");
                    }else{
                        layui.layer.error("删除失败!")
                    }
                }
            })
            layer.close(index);
        },function (index) {//取消回调
            layer.close(index);
        }
    );
}


*/

function updateModel(val) {
    $.ajax({
        url: ctxPath +"resType/getList?id="+val,
        type:'get',
        //这儿的三个参数其实就是XMLHttpRequest里面带的信息。
        success: function(data){
            if(data.code = '0'){
                var obj = data.rows[0];
                feedBackVal($("#updateForm"),obj);
                loadDevTypeTree($("#updateForm").find("[name='panId']"),[obj.pid]);
                $("#updateModeButton").click();
            }
        }
    })
}


function delType(val) {

    var obj={
        type:"showSweetAlert",
        title:"提示",
        content:"<div>是否删除这条数据",
        btn:["关闭","确定"],
        callBack1:function () {
            console.log("取消")
        },
        callBack2:function () {
            // console.log("确定")
            $.ajax({
                url: ctxPath +"resType/delResType/"+val,
                type:'post',
                //这儿的三个参数其实就是XMLHttpRequest里面带的信息。
                success: function(data){
                    if(data.code = '0'){
                        // alert("删除成功!");
                        var obj={
                            type:"showSweetAlert",
                            title:"提示",
                            content:"删除成功",

                        };
                        flush();
                        method.msg_layer(obj);

                    }else{
                        //  alert("删除失败!");
                        var obj={
                            type:"showSweetAlert",
                            title:"提示",
                            content:"删除失败",

                        };
                        method.msg_layer(obj);
                    }
                }
            })
            $('.msg-layer-bg').css('display','none')
            $('.msg-layer').css('display','none')
            refreshfTable($("#demo"),'1');
        },
    };
    method.msg_layer(obj);



}

function flush() {
    location.reload();
}


var $table = $('#table');


function addFunctionAlty(value, row, index) {

    var data = [];
    if(row.pid!=0){
        if($("#editFlag").text() != null && $("#editFlag").text() != '' && $("#editFlag").text() != undefined){
            data.push( '<button id="unbind" type="button" class="btn bg-yellow table-btn" onclick="updateModel(&apos;'+value+'&apos;)">编辑</button>');
        }
        if($("#delFlag").text() != null && $("#delFlag").text() != '' && $("#delFlag").text() != undefined){
            data.push('<button id="unbind" type="button" class="btn bg-bold table-btn" onclick="delType(&apos;'+value+'&apos;)">删除</button>');
        }
    }


    return data.join('');
}
$(function() {

    /*function nodeChecked(event, node) {
        if (nodeCheckedSilent) {
            return;
        }
        nodeCheckedSilent = true;
        checkAllParent(node);
        checkAllSon(node);
        nodeCheckedSilent = false;
    }

    var nodeUncheckedSilent = false;

    function nodeUnchecked(event, node) {
        if (nodeUncheckedSilent)
            return;
        nodeUncheckedSilent = true;
        uncheckAllParent(node);
        uncheckAllSon(node);
        nodeUncheckedSilent = false;
    }

    //选中全部父节点
    function checkAllParent(node) {
        $('#searchTree').treeview('checkNode', node.nodeId, {
            silent: true
        });
        var parentNode = $('#searchTree').treeview('getParent', node.nodeId);
        if (!("nodeId" in parentNode)) {
            return;
        } else {
            checkAllParent(parentNode);
        }
    }
    //取消全部父节点
    function uncheckAllParent(node) {
        $('#searchTree').treeview('uncheckNode', node.nodeId, {
            silent: true
        });
        var siblings = $('#searchTree').treeview('getSiblings', node.nodeId);
        var parentNode = $('#searchTree').treeview('getParent', node.nodeId);
        if (!("nodeId" in parentNode)) {
            return;
        }
        var isAllUnchecked = true; //是否全部没选中
        for (var i in siblings) {
            if (siblings[i].state.checked) {
                isAllUnchecked = false;
                break;
            }
        }
        if (isAllUnchecked) {
            uncheckAllParent(parentNode);
        }

    }

    //级联选中所有子节点
    function checkAllSon(node) {
        $('#searchTree').treeview('checkNode', node.nodeId, {
            silent: true
        });
        if (node.nodes != null && node.nodes.length > 0) {
            for (var i in node.nodes) {
                checkAllSon(node.nodes[i]);
            }
        }
    }
    //级联取消所有子节点
    function uncheckAllSon(node) {
        $('#searchTree').treeview('uncheckNode', node.nodeId, {
            silent: true
        });
        if (node.nodes != null && node.nodes.length > 0) {
            for (var i in node.nodes) {
                uncheckAllSon(node.nodes[i]);
            }
        }
    }*/


    /*$.get(
        ctxPath +"org/getOrgSelectTree",
        function(data) {
            if (data.code == '200') {
                var bean = data.data;
                traverse(bean,['6358710346454138885']);

                traversePid(bean,['6358622539329044485']);
                console.log(bean);
                $('#searchTree').treeview({
                    showCheckbox: true,
                    data: bean,
                    /!*onNodeChecked: nodeChecked,
                    onNodeUnchecked: nodeUnchecked*!/
                });
                //$("#searchTree").treeview('selectNode',[{id:'6358622539329044485',state:{selected:true}},{silent:true}]);
            }
        }
        )*/






    $("[name='addButton']").click(function () {
        var data = $("#add").serializeObject();
        if(checkNull($("#add"),data)){
            var buttonEle = $(this);
            buttonEle.attr("disabled",true).attr("readonly",true);
            $.ajax({
                url: ctxPath +"resType/addResType",
                type:'post',
                data:data,
                //这儿的三个参数其实就是XMLHttpRequest里面带的信息。
                success: function(data){
                    if(data.code = '0'){
                        var obj={
                            type:"showSweetAlert",
                            title:"提示",
                            content:"添加成功",

                        };
                        method.msg_layer(obj);
                        flush();
                    }else{
                        //  alert("添加失败");
                        var obj={
                            type:"showSweetAlert",
                            title:"提示",
                            content:"添加失败",
                        };
                        method.msg_layer(obj);
                    }
                    buttonEle.removeAttr("disabled").removeAttr("readonly");
                }
            })
        }
    })
    $("[name='commit_btn']").click(function () {
        var data = $("#updateForm").serializeObject();
        if(checkNull($("#updateForm"),data)){
            var buttonEle = $(this);
            buttonEle.attr("disabled",true).attr("readonly",true);
            $.ajax({
                url: ctxPath +"resType/updateResType",
                type:'post',
                data:data,
                //这儿的三个参数其实就是XMLHttpRequest里面带的信息。
                success: function(data){
                    if(data.code = '0'){
                        var obj={
                            type:"showSweetAlert",
                            title:"提示",
                            content:"修改成功",
                        };
                        method.msg_layer(obj);
                        flush();
                    }else{
                        // alert("修改失败");
                        var obj={
                            type:"showSweetAlert",
                            title:"提示",
                            content:"修改失败",
                        };
                        method.msg_layer(obj);
                    }
                    buttonEle.removeAttr("disabled").removeAttr("readonly");
                }
            })
        }
    })

    loadDevTypeTree($("#add").find("[name='panId']"));

    $.ajax({
        url: ctxPath+'resType/getList',
        type:'get',
        //这儿的三个参数其实就是XMLHttpRequest里面带的信息。
        success: function(data){
            if(data.code = '0'){
                $table.bootstrapTable({
                    //url:ctxPath+'resType/getList',
                    data:data.rows,
                    idField: 'id',
                    dataType:'jsonp',
                    columns: [
                        { field: 'check',  checkbox: true, formatter: function (value, row, index) {
                                if (row.check == true) {
                                    //设置选中
                                    return {  checked: true };
                                }
                            }
                        },
                        { field: 'resTypeName',  title: '分类名称'},
                        /*{field: 'id', title: '编号', sortable: true, align: 'center'},*/
                        /*{field: 'pid', title: '所属上级'},*/
                        /*{ field: 'status',  title: '状态', sortable: true,  align: 'center', formatter: 'statusFormatter'  },
                        { field: 'permissionValue', title: '权限值'  },*/
                        { field: 'id', title: '操作', align: 'center', events : operateEvents, formatter: addFunctionAlty,width:145 },
                    ],

                    // bootstrap-table-treegrid.js 插件配置 -- start

                    //在哪一列展开树形
                    treeShowField: 'resTypeName',
                    //指定父id列
                    parentIdField: 'pid',

                    onResetView: function(data) {
                        $table.treegrid({
                            initialState: 'collapsed',// 所有节点都折叠
                            treeColumn: 1,
                            onChange: function() {
                                $table.bootstrapTable('resetWidth');
                            }
                        });

                        //只展开树形的第一级节点
                        $table.treegrid('getRootNodes').treegrid('expand');

                    },
                    onCheck:function(row){
                        var datas = $table.bootstrapTable('getData');
                        // 勾选子类
                        selectChilds(datas,row,"id","pid",true);

                        // 勾选父类
                        selectParentChecked(datas,row,"id","pid")

                        // 刷新数据
                        $table.bootstrapTable('load', datas);
                    },

                    onUncheck:function(row){
                        var datas = $table.bootstrapTable('getData');
                        selectChilds(datas,row,"id","pid",false);
                        $table.bootstrapTable('load', datas);
                    },
                    // bootstrap-table-treetreegrid.js 插件配置 -- end
                });

            }else{
                //  alert("解绑失败!")
                var obj={
                    type:"showSweetAlert",
                    title:"提示",
                    content:"解绑失败",
                    // btn:["关闭","确定"],
                    // callBack1:function () {
                    //     console.log("取消")
                    // },
                    // callBack2:function () {
                    //     // console.log("确定")
                    //     $('.msg-layer-bg').css('display','none')
                    //     $('.msg-layer').css('display','none')
                    //     refreshfTable($("#demo"),'1');
                    // },
                };
                method.msg_layer(obj);
            }
        }
    })

});

$table.on('post-body.bs.table',function(data){
    $(this).find("input:checkbox").each(function (i) {
        var $check = $(this);
        if ($check.attr("id") && $check.next("label")) {
            return;
        }
        $check.next().remove();
        var name = $check.attr("name");
        var id = name + "-" + i;
        var $label = $('<label for="'+ id +'"></label>');
        $check.attr("id", id).parent().addClass("checkbox-custom").append($label);
    });
});



// 格式化按钮
function operateFormatter(value, row, index) {
    return [
        '<button type="button" class="RoleOfadd btn-small  btn-primary" style="margin-right:15px;"><i class="fa fa-plus" ></i>&nbsp;新增</button>',
        '<button type="button" class="RoleOfedit btn-small   btn-primary" style="margin-right:15px;"><i class="fa fa-pencil-square-o" ></i>&nbsp;修改</button>',
        '<button type="button" class="RoleOfdelete btn-small   btn-primary" style="margin-right:15px;"><i class="fa fa-trash-o" ></i>&nbsp;删除</button>'
    ].join('');

}
// 格式化类型
function typeFormatter(value, row, index) {
    if (value === 'menu') {  return '菜单';  }
    if (value === 'button') {  return '按钮'; }
    if (value === 'api') {  return '接口'; }
    return '-';
}
// 格式化状态
function statusFormatter(value, row, index) {
    if (value === 1) {
        return '<span class="label label-success">正常</span>';
    } else {
        return '<span class="label label-default">锁定</span>';
    }
}

//初始化操作按钮的方法
window.operateEvents = {
    'click .RoleOfadd': function (e, value, row, index) {
        add(row.id);
    },
    'click .RoleOfdelete': function (e, value, row, index) {
        del(row.id);
    },
    'click .RoleOfedit': function (e, value, row, index) {
        update(row.id);
    }
};

function selectChilds(datas,row,id,pid,checked) {
    for(var i in datas){
        if(datas[i][pid] == row[id]){
            datas[i].check=checked;
            selectChilds(datas,datas[i],id,pid,checked);
        };
    }
}

function selectParentChecked(datas,row,id,pid){
    for(var i in datas){
        if(datas[i][id] == row[pid]){
            datas[i].check=true;
            selectParentChecked(datas,datas[i],id,pid);
        };
    }
}

function test() {
    var selRows = $table.bootstrapTable("getSelections");
    if(selRows.length == 0){
        alert("请至少选择一行");
        return;
    }

    var postData = "";
    $.each(selRows,function(i) {
        postData +=  this.id;
        if (i < selRows.length - 1) {
            postData += "， ";
        }
    });
    alert("你选中行的 id 为："+postData);

}

function add(id) {
    alert("add 方法 , id = " + id);
}
function del(id) {
    alert("del 方法 , id = " + id);
}
function update(id) {
    alert("update 方法 , id = " + id);
}