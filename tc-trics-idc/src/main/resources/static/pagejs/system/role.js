  $("#myModal").on("show.bs.modal",function(){
        $.ajax({
            url:  ctxPath+"menu/getTree",
            type: "GET",
            data:{
            },
            cache:false,
            dataType: "json",
            success: function(data){
                if(data.code=="0"){
                    //buildTreeAdd(data.data)
                    $('#treeData').treeview({
                        data: data.data,
                        showCheckbox: 1,
                        onNodeChecked: function(event, node) { //选中节点
                            var selectNodes = getChildNodeIdArr(node); //获取所有子节点
                            if (selectNodes) { //子节点不为空，则选中所有子节点
                                $('#treeData').treeview('checkNode', [selectNodes, { silent: true }]);
                            }
                            var parentNode = $("#treeData").treeview("getNode", node.parentId);
                            setParentNodeCheck(node);
                        },
                        onNodeUnchecked: function(event, node) { //取消选中节点
                            var selectNodes = getChildNodeIdArr(node); //获取所有子节点
                            if (selectNodes) { //子节点不为空，则取消选中所有子节点
                                $('#treeData').treeview('uncheckNode', [selectNodes, { silent: true }]);
                            }
                        }
                    });
                }
            },
            error:function(err){
                var obj={
                    type:"showSweetAlert",
                    title:"提示",
                    content:"服务器内部出错",
                };
                method.msg_layer(obj);
            }
        });
    })
//
        $("#editModal").on("show.bs.modal",function(){

        })
//
        function getChildNodeIdArr(node) {
            var ts = [];
            if (node.nodes) {
                for (x in node.nodes) {
                    ts.push(node.nodes[x].nodeId);
                    if (node.nodes[x].nodes) {
                        var getNodeDieDai = getChildNodeIdArr(node.nodes[x]);
                        for (j in getNodeDieDai) {
                            ts.push(getNodeDieDai[j]);
                        }
                    }
                }
            } else {
                ts.push(node.nodeId);
            }
            return ts;
        }
//
        function setParentNodeCheck(node) {
            var parentNode = $("#treeData").treeview("getNode", node.parentId);
            if (parentNode.nodes) {
                var checkedCount = 0;
                for (x in parentNode.nodes) {
                    if (parentNode.nodes[x].state.checked) {
                        checkedCount ++;
                    } else {
                        break;
                    }
                }
                if (checkedCount === parentNode.nodes.length) {
                    $("#treeData").treeview("checkNode", parentNode.nodeId);
                    setParentNodeCheck(parentNode);
                }
            }
        }

    $("#editRole").on("click",function () {

        var id =$("#id").val();

        var roleName=$("#name").val();
        if(roleName==""){
            //alert("请输入角色名称！！")
            var obj={
                type:"showSweetAlert",
                title:"提示",
                content:"请输入角色名称",

            };
            method.msg_layer(obj);
            $("#name").focus()
            return;
        }
        var remark = $("#remark").val();
        if(remark===""){
           // alert("请输入角色备注！！")
            var obj={
                type:"showSweetAlert",
                title:"提示",
                content:"请输入角色备注",

            };
            method.msg_layer(obj);
            $("#remark").focus()
            return;
        }

        var checkData = $('#editTree').treeview('getChecked');
        if(checkData==""){

            var obj={
                type:"showSweetAlert",
                title:"提示",
                content:"请选择角色权限",

            };
            method.msg_layer(obj);
            return;
        }
        var menuIds='';
        for (var j = 0; j < checkData.length; j++) {
            menuIds +=checkData[j].id+",";
        }
        menuIds = menuIds.substr(0, menuIds.length - 1);
        var buttonEle = $(this);
        buttonEle.attr("disabled",true).attr("readonly",true);

        $.ajax({
            url:  ctxPath+"role/update",
            type: "POST",
            data:{
                id:id,
                roleName:roleName,
                remark:remark,
                menuIds:menuIds
            },
            cache:false,
            dataType: "json",
            success: function(data){
              //  alert(data.message);
                var obj={
                    type:"showSweetAlert",
                    title:"提示",
                    content:data.message,

                };
                method.msg_layer(obj);
                if(data.code=="0"){
                    setTimeout(window.location.href=ctxPath+'role', 1500);
                }
                buttonEle.removeAttr("disabled").removeAttr("readonly");
            },
            error:function(err){
                var obj={
                    type:"showSweetAlert",
                    title:"提示",
                    content:'服务器内部错误',

                };
                method.msg_layer(obj);
                buttonEle.removeAttr("disabled").removeAttr("readonly");
            }
        });
    })

    $("#addRole").on("click",function () {
        var roleName=$("#rname").val();
        if(roleName==""){
            var obj={
                type:"showSweetAlert",
                title:"提示",
                content:'请输入角色名称',

            };
            method.msg_layer(obj);
            $("#rname").focus()
            return;
        }
        var remark=$("#rremark").val();
        if(remark==""){

            var obj={
                type:"showSweetAlert",
                title:"提示",
                content:'请输入角色备注',

            };
            method.msg_layer(obj);
            $("#remark").focus()
            return;
        }
        //获得选中的节点
        //var checkData = tree.getChecked('tree');
        var checkData = $('#treeData').treeview('getChecked');
        console.log(checkData)
        if(checkData==""){
           // alert("请选择角色权限！！")
            var obj={
                type:"showSweetAlert",
                title:"提示",
                content:'请选择角色权限',

            };
            method.msg_layer(obj);
            return;
        }
        var menuIds='';
        for (var j = 0; j < checkData.length; j++) {
            menuIds +=checkData[j].id+",";
        }
        menuIds = menuIds.substr(0, menuIds.length - 1);
        var buttonEle = $(this);
        buttonEle.attr("disabled",true).attr("readonly",true);
        $.ajax({
            url:  ctxPath+"role/add",
            type: "POST",
            data:{
                roleName:roleName,
                remark:remark,
                menuIds:menuIds
            },
            cache:false,
            dataType: "json",
            success: function(data){
               // alert(data.message);
                var obj={
                    type:"showSweetAlert",
                    title:"提示",
                    content:"操作成功",
                };

                 $("#myModal").hide()
                  $('.modal-backdrop').hide()
                $("#test").bootstrapTable("refresh", {
                    silent: true //静态刷新
                });
                method.msg_layer(obj);
                if(data.code=="0"){
                    setTimeout(window.ctxPath+'role', 1500);
                }
                buttonEle.removeAttr("disabled").removeAttr("readonly");
            },
            error:function(err){
                var obj={
                    type:"showSweetAlert",
                    title:"提示",
                    content:'服务器内部错误',
                };
                method.msg_layer(obj);
                buttonEle.removeAttr("disabled").removeAttr("readonly");
            }
        });
    })



  function getQuery(){
      return {'name':$(":input[name='name_search']").val()};
  }
window.operateEvents = {
    // 角色修改
    'click #edit': function (e, value, row, index) {
            $("input[id='id']").val(row.id);
            $("input[id='name']").val(row.roleName);
            $("textarea[id='remark']").val(row.remark);
        $.ajax({
            url:  ctxPath+"menu/getTree",
            type: "GET",
            data:{
                roleId:row.id
            },
            cache:false,
            dataType: "json",
            success: function(data){
                if(data.code=="0"){
                    //buildTreeAdd(data.data)
                    $('#editTree').treeview({
                        data: data.data,
                        showCheckbox: 1,
                        onNodeChecked: function(event, node) { //选中节点
                            var selectNodes = getChildNodeIdArr(node); //获取所有子节点
                            if (selectNodes) { //子节点不为空，则选中所有子节点
                                $('#editTree').treeview('checkNode', [selectNodes, { silent: true }]);
                            }
                            var parentNode = $("#treeData").treeview("getNode", node.parentId);
                            setParentNodeCheck(node);
                        },
                        onNodeUnchecked: function(event, node) { //取消选中节点
                            var selectNodes = getChildNodeIdArr(node); //获取所有子节点
                            if (selectNodes) { //子节点不为空，则取消选中所有子节点
                                $('#editTree').treeview('uncheckNode', [selectNodes, { silent: true }]);
                            }
                        }
                    });
                }
            },
            error:function(err){
              // alert("服务器内部错误！")
                var obj={
                    type:"showSweetAlert",
                    title:"提示",
                    content:'服务器内部错误',
                };
                method.msg_layer(obj);
            }
        });
            //数据显示在模态框
            $('#editModal').modal('show')
    },
    // 角色删除
    'click #del': function (e, value, row, index) {
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"是否删除当前选中角色？",
            btn:["关闭","确定"],
            callBack1:function () {
                console.log("取消")
            },
            callBack2:function () {
                $.ajax({
                    url:  ctxPath+"role/delete",
                    type: "POST",
                    data:{
                        id:row.id
                    },
                    cache:false,
                    dataType: "json",
                    success: function(data){
                        //  alert(data.message);
                        var obj={
                            type:"showSweetAlert",
                            title:"提示",
                            content:data.message,
                        };
                        method.msg_layer(obj);
                        if(data.code=="0"){
                            //layer.close(index);
                            setTimeout(window.location.href=ctxPath+'role', 1500);
                        }
                    },
                    error:function(err){
                        var obj={
                            type:"showSweetAlert",
                            title:"提示",
                            content:'服务器内部错误',

                        };
                        method.msg_layer(obj);
                    }
                });
                $('.msg-layer-bg').css('display','none')
                $('.msg-layer').css('display','none')
            },
        };
        method.msg_layer(obj);
    }
};

function addFunctionAlty(value, row, index) {
    return [
        '<button id="edit" type="button" data-toggle="modal" class="btn bg-yellow table-btn">编辑</button>',
        '<button id="del" type="button" class="btn bg-bold table-btn">删除</button>'
    ].join('');
}

$('#test').bootstrapTable({
    url: ctxPath+'role/getPage',
    method: 'GET',
    uniqueId: 'id',                        // 绑定ID，不显示
    striped: false,                         //是否显示行间隔色
    cache: false,                          //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
    sortable: true,                        //是否启用排序
    sidePagination: "server",              //分页方式：client客户端分页，server服务端分页（*）
    undefinedText: '--',
    strictSearch: true,
    clickToSelect: true,                   // 点击选中行
    pagination: true,                      //是否显示分页
    pageNumber:1,                          //初始化加载第一页，默认第一页,并记录
    pageSize:10,//每页显示的数量
    pageList: [ 10, 20, 50, 100],//设置每页显示的数量
    paginationPreText:"上一页",
    paginationNextText:"下一页",
    paginationLoop:false,
    //得到查询的参数
    queryParams : function (params) {
        //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
        var temp = {
            limit: params.limit,                         //页面大小
            page: (params.offset / params.limit) + 1,   //页码
            sort: params.sort,      //排序列名
            sortOrder: params.order, //排位命令（desc，asc）
            roleName:$("#roleName").val()
        };
        return temp;
    },
    columns:
        [{checkbox: true,width: 50}
            ,{field:'id',title: 'ID', }
            ,{field:'roleName',title: '角色名称', }
            ,{field:'remark', title: '角色备注'}
            ,{field:'createTime', title: '创建时间', formatter:function (value, row, index) {
                var dateee = new Date(row.createTime).toJSON();
                var date = new Date(+new Date(dateee)+8*3600*1000).toISOString().replace(/T/g,' ').replace(/\.[\d]{3}Z/,'');
                return date;
            }}
            ,{field:'barcode', title: '操作',events: operateEvents,class:"active1",width:150,formatter: addFunctionAlty, }//表格中增加按钮
        ],
});

  $("#test").on('load-success.bs.table',function () {

      $('.bootstrap-table tr td').each(function () {
          if($(this).hasClass("active1")){

          }else{
              $(this).attr("title", $(this).text());
              $(this).css("cursor", 'pointer');
          }
      });
  })


//自定义checked
  $("#test").on('post-body.bs.table',function(data){
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



//任务模糊查询
$("#searchbtn").on("click",function () {
    $("#test").bootstrapTable("refresh", {
        silent: true //静态刷新
    });
})
