/*layui.use('table', function(){
    var table = layui.table;

    table.render({
        elem: '#test'
        ,url:'/rack/getPage'
        ,title: '用户数据表'
        ,cols: [[
            {type: 'checkbox'},
            {field: 'id', title: 'ID',}
            , {field: 'orgName', title: '机构'}
            , {field: 'roomName', title: '机房',}
            , {field: 'name', title: '名称'}
            , {field: 'assetId', title: '资产编号',} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
            , {field: 'row', title: '行列',}
            , {field: 'width', title: '宽度',}
            , {field: 'height', title: '高度',}
            , {field: 'capacity', title: '容量',}
            , {field: 'tid', title: 'tid',}
            , {field: '操作', title: '操作', width: 240, toolbar: '#barDemo'}
        ]],
        data: [
            {
                "id": 10000,
                "机构": "user-0",
                "机房": "user-0",
                "名称": "女",
                "资产编号": "城市-0",
                "行列": "签名-0",
                "宽度": "签名-0",
                "高度": "签名-0",
                "容量": 255,
                "tid": 255,

            },
        ]
        ,page: true
    });

    //监听行工具事件
    table.on('tool(test)', function(obj){
        var data = obj.data;
        //console.log(obj)
        if(obj.event === 'del'){
            layer.confirm('真的删除行么', function(index){
                obj.del();
                layer.close(index);
            });
        } else if(obj.event === 'edit'){
            layer.prompt({
                formType: 2
                ,value: data.email
            }, function(value, index){
                obj.update({
                    email: value
                });
                layer.close(index);
            });
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
                roomId: $(":input[name='roomSelect_search']").val(),
            }
        })
    }
});*/

function updateModel(val) {
    $.ajax({
        url: ctxPath +"rack/getPage?id="+val,
        type:'get',
        //这儿的三个参数其实就是XMLHttpRequest里面带的信息。
        success: function(data){
            if(data.code = '0'){
                var obj = data.rows[0];
                loadOrgTree($("#updateForm").find("[name='org_id']"),null,[obj.orgId]);
                loadRoomSelect($("#updateForm").find(":input[name='roomId']"),obj.roomId,obj.orgId);
                feedBackVal($("#updateForm"),obj);
                $("#updateModeButton").click();
            }
        }
    })
}

function del(val) {
    var obj={
        type:"showSweetAlert",
        title:"提示",
        content:"是否删除这条数据",
        btn:["关闭","确定"],
        callBack1:function () {
            console.log("取消")
        },
        callBack2:function () {
            $.ajax({
                url: ctxPath +"rack/delRack/"+val,
                type:'post',
                //这儿的三个参数其实就是XMLHttpRequest里面带的信息。
                success: function(data){
                    if(data.code = '0'){
                        var obj={
                            type:"showSweetAlert",
                            title:"提示",
                            content:data.message,
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


            $('.msg-layer-bg').css('display','none')
            $('.msg-layer').css('display','none')
            refreshfTable($("#test"),'1',getQuery());
        },
    };
    method.msg_layer(obj);



    // if(confirm("是否确认删除该数据")){

    // }
}

function getQuery(){
    return {'roomId':$(":input[name='roomSelect_search']").val(),'name':$(":input[name='name_search']").val()};
}

$(function () {

    $("#content3814").find("button[name='commit_btn']").click(function () {
            var data = $("#content3814").find("#updateForm").serializeObject();
            if(checkNull($("#content3814").find("#updateForm"),data)){
                var buttonEle = $(this);
                buttonEle.attr("disabled",true).attr("readonly",true);
                $.ajax({
                    url: ctxPath +"rack/updateRack",
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
                            $("#content3814").find("button[name='close']").click();
                            refreshfTable($("#test"),'1',getQuery());
                        }else{
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

   /* loadOrg($("select[name='orgId']"));*/
    loadOrgTree($("#add").find("[name='org_id']"),null);

    $("#add").find(":input[name='orgId']").change(function () {
        var orgId =$(this).val();
        var obj=$("#add").find(":input[name='roomId']");
        loadRoomOrgSelect(obj,null,orgId);
    })

    //loadDevTypeTree($("#add").find("[name='org_id']"));

    /*$("#add").find("select[name='orgId']").change(function () {
        loadRoomSelect($("#add").find(":input[name='roomId']"),'',$(this).val());
    })*/
    
    $("button[name='search_btn']").click(function () {
        refreshfTable($("#test"),"1",getQuery());
    })


    $("button[name='addButton']").click(function () {

        var data = $("#add").serializeObject();
        if(checkNull($("#add"),data)){
            var buttonEle = $(this);
            buttonEle.attr("disabled",true).attr("readonly",true);
            $.ajax({
                url: ctxPath +"rack/addRack",
                type:'post',
                data:data,
                //这儿的三个参数其实就是XMLHttpRequest里面带的信息。
                success: function(data){
                    if(data.code = '0'){
                        var obj={
                            type:"showSweetAlert",
                            title:"提示",
                            content:data.message,
                        };
                        method.msg_layer(obj);
                        $("#myModal").find("[name='close']").click();
                        refreshfTable($("#test"),"1",getQuery());
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
    
    loadRoomSelectAll($(":input[name='roomSelect_search']"));





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
        , {field: 'roomName', title: '机房',}
        , {field: 'name', title: '名称'}
        , {field: 'assetId', title: '资产编号',} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
        , {field: 'row', title: '行列',}
        , {field: 'width', title: '宽度',}
        , {field: 'height', title: '高度',}
        , {field: 'capacity', title: '容量',}
        ,{field:'id', title: '操作', class:'active1',formatter: addFunctionAlty,width: 145}
    ];

    loadTable($('#test'),columns,ctxPath+'rack/getPage', getQuery());
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