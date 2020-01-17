/*
layui.use('table', function(){
var table = layui.table;


table.render({
    elem: '#test'
    ,url: ctxPath+'label/getPage'
    ,cols: [[
        {type: 'checkbox'},
        {field: 'id', title: 'ID',}
        , {field: 'barcode', title: '编号'}
        , {field: 'epc', title: 'EPC',}
        , {field: 'tid', title: 'tid'}
        , {field: 'uid', title: 'uid',} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
        , {field: 'isBinding', title: '状态',}
        , {field: '操作', title: '操作', width: 240, toolbar: '#barDemo'}
    ]],
    page: true
});

    //监听行工具事件
    table.on('tool(test)', function(obj){
        var data = obj.data;
        if(obj.event === 'del'){
            layer.confirm('是否删除该标签?', function(index){
                $.post(
                    ctxPath +"label/delLabel/"+data.id,
                    function(data){
                        if(data.code == '200'){
                            refreshTable();
                            layer.alert("删除成功!");
                        }else{
                            layer.alert("删除失败!");
                        }
                    }
                )
                //layer.close(index);
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
                barcode: $(":input[name='barcode_search']").val(),
            }
        })
    }
})*/


function del(val) {
    // if(confirm("是否确认删除该数据")){

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
                url: ctxPath +"label/delLabel/"+val,
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
                        // alert("删除失败!")
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

function addFunctionAlty(value, row, index) {
    var data=[]
    if(row.isBinding=='0'){
        data.push('<button id="unbind" type="button" class="btn bg-bold table-btn" onclick="del(&apos;'+value+'&apos;)">删除</button>')
    }
    return data.join('');
}

function getQuery(){
    return {'barcode':$(":input[name='barcode_search']").val()};
}

$(function () {
    var columns = [
         {field: 'barcode', title: '编号'}
        , {field: 'epc', title: 'EPC',}
        , {field: 'tid', title: 'tid'}
        , {field: 'uid', title: 'uid',} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
        , {field: 'isBinding', title: '状态',formatter:function (value, row, index) {
                if(value == '0'){
                    return "未绑定";
                }else{
                    return "已绑定";
                }
            }}
        ,{field:'id', title: '操作',formatter: addFunctionAlty}
    ];

    $("#test").on('load-success.bs.table',function () {

        $('.bootstrap-table tr td').each(function () {
            $(this).attr("title", $(this).text());
            $(this).css("cursor", 'pointer');
        });
    })

    loadTable($('#test'),columns,ctxPath+'label/getPage', getQuery());


    
    
    $("[name='search_btn']").click(function () {
        refreshfTable($("#test"),'1',getQuery());
    })
    
    $("[name='down_button']").click(function () {
        $("#downModel").submit();
    })


    $("[name='impl_button']").click(function () {
        if($("#file-0")[0].files[0] != null && $("#file-0")[0].files[0] != '' && $("#file-0")[0].files[0] != undefined) {
            var buttonEle = $(this);
            buttonEle.attr("disabled",true).attr("readonly",true);
            var fd = new FormData();
            fd.append("labelFile", $("#file-0")[0].files[0]);
            $.ajax({
                url: ctxPath + 'label/importLabel',
                type: 'post',
                processData: false,
                contentType: false,
                data: fd,
                success: function (data) {
                    if (data.code == '0') {
                        if (data.data == null || data.data.length == 0) {
                            var obj = {
                                type: "showSweetAlert",
                                title: "提示",
                                content: "<div>导入成功",
                            };
                            method.msg_layer(obj);
                            refreshfTable($("#test"), '1', getQuery());
                            $("#importModel").find("button[name='close']").click();
                        } else {
                            var obj = {
                                type: "showSweetAlert",
                                title: "提示",
                                content: "<div>导入成功，部分导入失败",
                            };
                            method.msg_layer(obj);
                            refreshfTable($("#test"), '1', getQuery());
                            $("#importModel").find("button[name='close']").click();
                            var column = [
                                {field: 'barcode', title: '编号'}
                                , {field: 'epc', title: 'EPC',}
                                , {field: 'tid', title: 'tid'}
                                , {field: 'uid', title: 'uid',}
                                , {field: 'ps', title: '失败原因',}
                            ];

                            $("#errorTable").bootstrapTable('destroy');
                            setDataloadPageTable($("#errorTable"), column, data.data);
                            $("button[name='errorData_button']").click();
                        }

                    } else {
                        var str = "";
                        if (data.message != '' && data.message != undefined && data.message != null) {
                            str = "<div>" + data.message;
                        } else {
                            str = "导入失败";
                        }
                        //alert("导入失败!")
                        var obj = {
                            type: "showSweetAlert",
                            title: "提示",
                            content: str,
                        };
                        method.msg_layer(obj);
                    }
                    buttonEle.removeAttr("disabled").removeAttr("readonly");
                }
            })
        }else{
            // alert("请选择导入文件!")
            var obj={
                type:"showSweetAlert",
                title:"提示",
                content:"<div>请选择导入文件",
            };
            method.msg_layer(obj);
        }
    })
})
