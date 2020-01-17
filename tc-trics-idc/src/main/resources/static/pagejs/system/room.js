/*
layui.use('table', function(){
    var table = layui.table;

    table.render({
        elem: '#test'
        ,url:'/room/getPage'
        ,cols: [[
            {type: 'checkbox'},
            {field: 'id', title: 'ID',}
            , {field: 'orgName', title: '机构'}
            , {field: 'name', title: '机房名称',}
            , {field: 'domain', title: '绑定域名'}
            , {field: '操作', title: '操作', width: 240, toolbar: '#barDemo'}

        ]]
        ,page: true
    });

    //监听行工具事件
    table.on('tool(test)', function(obj){
        var data = obj.data;
        if(obj.event === 'del'){
            layer.confirm('真的删除行么', function(index){
                obj.del();
                layer.close(index);
            });
        } else if(obj.event === 'edit'){
           location.href = ctxPath+'room/toEdit/'+data.id
        }
    });

    $("button[name='search_btn']").on("click",function(){
        refreshTable()
    });

    function refreshTable() {
        table.reload("test",{
            page: {
                curr: 1 //重新从第 1 页开始
            },
            where: {
                name: $(":input[name='name_search']").val(),
            }
        })
    }
});*/

function getQuery(){
    return {'name':$(":input[name='name_search']").val()};
}



function updateModel(val) {
    $.ajax({
        url: ctxPath +"room/getPage?id="+val,
        type:'get',
        //这儿的三个参数其实就是XMLHttpRequest里面带的信息。
        success: function(data){
            if(data.code = '0'){
                /*var treePro = {
                    levels: 1,//设置初始化展开几级菜单
                    showBorder:true,                //是否显示边框
                    showCheckbox:false,              //是否显示多选框
                    data: [],
                    onNodeSelected:function  (event, node){
                        var orgId = node.id;
                        $("#updateForm").find(":input[name='orgId']").val(orgId);
                        loadRoomSelect($("#updateForm").find(":input[name='roomId']"),'',orgId);
                        $("#updateForm").find(":input[name='rackId']").html("<option value=''>请先选择机房</option>");
                    },
                    onNodeUnselected :function (event, node) {
                        $("#updateForm").find(":input[name='orgId']").val("");
                        $("#updateForm").find(":input[name='roomId']").html("<option value=''>请先选择机构</option>");
                    }
                };*/
                //loadRegion($("#updateForm").find(":input[name='regionId']"),data.rows[0].regionId);
                //$("#updateForm").find(":input[name='regionId']").val(data.rows[0].regionId);

                /*$("#updateForm").find(":input[name='regionId']").change(function () {
                    loadOrgTree($("#updateForm").find("[name='orgSelectTree']"),$(this).val());
                })*/
                loadOrgTree($("#updateForm").find("[name='orgSelectTree']"),data.rows[0].regionId,[data.rows[0].orgId]);

                //$("#updateForm").find("[name='orgSelectTree']").treeview('checkAll', { silent: true });

                feedBackVal($("#updateForm"),data.rows[0]);
                $("#updateModeButton").click();
            }
        }
    })
}

$("button[name='search_btn']").click(function () {
    refreshfTable($("#test"),'1',getQuery());
})


$("button[name='commit_btn']").click(function () {
    var data = $("#updateForm").serializeObject();
    if(checkNull($("#updateForm"),data)){
        var buttonEle = $(this);
        buttonEle.attr("disabled",true).attr("readonly",true);
        $.ajax({
            url: ctxPath +"room/updateRoom",
            type:'post',
            data:data,
            //这儿的三个参数其实就是XMLHttpRequest里面带的信息。
            success: function(data){
                if(data.code = '0'){
                    // alert("修改成功");
                    var obj={
                        type:"showSweetAlert",
                        title:"提示",
                        content:"<div>修改成功",

                    };
                    method.msg_layer(obj);
                    $("#content3814").find("[name='close']").click();
                    refreshfTable($("#test"),'1',getQuery());
                }else{
                    //alert("添加失败")
                    var obj={
                        type:"showSweetAlert",
                        title:"提示",
                        content:"<div>添加失败",

                    };
                    method.msg_layer(obj);
                }
                buttonEle.removeAttr("disabled").removeAttr("readonly");
            }
        })
    }
})

function del(val) {

    var obj={
        type:"showSweetAlert",
        title:"提示",
        content:"<div>是否删除这条数据",
        btn:["关闭","确定"],
        callBack1:function () {
            console.log("取消")
        },
        callBack2:function () {
            $.ajax({
                url: ctxPath +"room/delRoom/"+val,
                type:'post',
                //这儿的三个参数其实就是XMLHttpRequest里面带的信息。
                success: function(data){
                    if(data.code = '0'){
                        var obj={
                            type:"showSweetAlert",
                            title:"提示",
                            content:"删除成功",

                        };
                        $('.msg-layer-bg').css('display','none')
                        $('.msg-layer').css('display','none')

                        method.msg_layer(obj);
                        refreshfTable($("#test"),'1',getQuery());
                    }else{
                        var obj={
                            type:"showSweetAlert",
                            title:"提示",
                            content:"删除失败",
                        };
                        method.msg_layer(obj);
                    }
                }
            })
        },
    };
    method.msg_layer(obj);


    // }
}



$(function () {
    $("button[name='add_btn']").click(function () {
        var data = $("#addModel").find("#addForm").serializeObject();
        if(checkNull($("#addModel").find("#addForm"),data)){
            var buttonEle = $(this);
            buttonEle.attr("disabled",true).attr("readonly",true);
            $.ajax({
                url: ctxPath +"room/addRoom",
                type:'post',
                data:data,
                //这儿的三个参数其实就是XMLHttpRequest里面带的信息。
                success: function(data){
                    if(data.code = '0'){
                        var obj={
                            type:"showSweetAlert",
                            title:"提示",
                            content:"<div>添加成功",
                        };
                        method.msg_layer(obj);
                        $("#addModel").find("[name='close']").click();
                        refreshfTable($("#test"),'1',getQuery());
                    }else{
                        var obj={
                            type:"showSweetAlert",
                            title:"提示",
                            content:"<div>添加失败",
                        };
                        method.msg_layer(obj);
                    }
                    buttonEle.removeAttr("disabled").removeAttr("readonly");
                }
            })
        }

    })


    /*$("#addForm").find(":input[name='regionId']").change(function () {
        /!*var treePro = {
            levels: 1,//设置初始化展开几级菜单
            showBorder:true,                //是否显示边框
            showCheckbox:false,              //是否显示多选框
            data: [],
            onNodeSelected:function  (event, node){
                var orgId = node.id;
                $("#addForm").find(":input[name='orgId']").val(orgId);
                loadRoomSelect($("#addDevForm").find(":input[name='roomId']"),'',orgId);
                $("#addForm").find(":input[name='rackId']").html("<option value=''>请先选择机房</option>");
            },
            onNodeUnselected :function (event, node) {
                $("#addForm").find(":input[name='orgId']").val("");
                $("#addForm").find(":input[name='roomId']").html("<option value=''>请先选择机构</option>");
            }
        };*!/
        loadOrgTree($("#addForm").find("[name='orgSelectTree']"),$(this).val());
    })*/



    //loadRegione("regionId");

    /*var treePro = {
        levels: 1,//设置初始化展开几级菜单
        showBorder:true,                //是否显示边框
        showCheckbox:false,              //是否显示多选框
        data: [],
        onNodeSelected:function  (event, node){
            var orgId = node.id;
            $("#addForm").find(":input[name='orgId']").val(orgId);
            loadRoomSelect($("#addDevForm").find(":input[name='roomId']"),'',orgId);
            $("#addForm").find(":input[name='rackId']").html("<option value=''>请先选择机房</option>");
        },
        onNodeUnselected :function (event, node) {
            $("#addForm").find(":input[name='orgId']").val("");
            $("#addForm").find(":input[name='roomId']").html("<option value=''>请先选择机构</option>");
        }
    };*/

    loadOrgTree($("#addForm").find("[name='orgSelectTree']"));
    function addFunctionAlty(value, row, index) {
        var data = [];
        if($("#editFlag").text() != null && $("#editFlag").text() != '' && $("#editFlag").text() != undefined){
            data.push( '<button id="unbind" type="button" class="btn bg-yellow table-btn" onclick="updateModel(&apos;'+value+'&apos;)">编辑</button>');
        }
        if($("#delFlag").text() != null && $("#delFlag").text() != '' && $("#delFlag").text() != undefined){
            data.push('<button id="unbind" type="button" class="btn bg-bold table-btn" onclick="del(&apos;'+value+'&apos;)">删除</button>');
        }
        return data.join('');
    }


    var columns =  [
        {checkbox: true,width: 50}
        , {field: 'orgName', title: '机构'}
        , {field: 'name', title: '机房名称',}
        , {field: 'domain', title: '绑定域名'}
        ,{field:'id', title: '操作',class:'active1',formatter: addFunctionAlty,width: 145}
    ];
    loadTable($('#test'),columns,ctxPath+'room/getPage', getQuery());
})

$("#test").on('load-success.bs.table',function () {

    $('.bootstrap-table tr td').each(function () {
        if($(this).hasClass("active1")){

        }else{
            $(this).attr("title", $(this).text());
            $(this).css("cursor", 'pointer');
        }
    });
})

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


