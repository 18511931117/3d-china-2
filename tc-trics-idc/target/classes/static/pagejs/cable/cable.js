$('input').each(function () {
    $(this).mouseover(function () {
        var val = $(this).val()
        $(this).attr("title",val)
    })
})


$(function () {

    $("#info").find(":input").each(function () {
        $(this).attr("disabled",true)
    })

    //机构下拉框
    loadOrg($("select[name='org1Id']"));
    loadOrg($("select[name='org2Id']"));
    //添加下拉框
    $("#add").find("select[name='org1Id']").change(function () {
        loadRoomSelect($("#add").find(":input[name='room1Id']"),'',$(this).val());
    })

    $("#add").find("select[name='org2Id']").change(function () {
        loadRoomSelect($("#add").find(":input[name='room2Id']"),'',$(this).val());
    })

    $("#add").find("select[name='room2Id']").change(function () {
        loadRackSelect($("#add").find(":input[name='rack2Id']"), $(this).val());
    })

    $("#add").find("select[name='room1Id']").change(function () {
        loadRackSelect($("#add").find(":input[name='rack1Id']"), $(this).val());
    })

    $("#add").find("select[name='rack1Id']").change(function () {
        loadDevSelect($("#add").find("select[name='res1Id']"), $(this).val());
    })

    $("#add").find("select[name='rack2Id']").change(function () {
        loadDevSelect($("#add").find("select[name='res2Id']"),$(this).val());
    })

    //查询下拉框
    $("#queryFrom").find("select[name='org1Id']").change(function () {
        loadRoomSelect($("#queryFrom").find(":input[name='room1Id']"),'',$(this).val());
    })
    $("#queryFrom").find("select[name='org2Id']").change(function () {
        loadRoomSelect($("#queryFrom").find(":input[name='room2Id']"),'',$(this).val());
    })
    $("#queryFrom").find("select[name='room1Id']").change(function () {
        loadRackSelect($("#queryFrom").find(":input[name='rack1Id']"),$(this).val());
    })
    $("#queryFrom").find("select[name='room2Id']").change(function () {
        loadRackSelect($("#queryFrom").find(":input[name='rack2Id']"), $(this).val());
    })
    $("#queryFrom").find("select[name='rack1Id']").change(function () {
        loadDevSelect($("#queryFrom").find("select[name='res1Id']"), $(this).val());
    });
    $("#queryFrom").find("select[name='rack2Id']").change(function () {
        loadDevSelect($("#queryFrom").find("select[name='res2Id']"), $(this).val());
    });

    //修改下拉框
    $("#updateForm").find("select[name='org1Id']").change(function () {
        loadRoomSelect($("#updateForm").find(":input[name='room1Id']"),'',$(this).val());
    })

    $("#updateForm").find("select[name='org2Id']").change(function () {
        loadRoomSelect($("#updateForm").find(":input[name='room2Id']"),'',$(this).val());
    })

    $("#updateForm").find("select[name='room2Id']").change(function () {
        loadRackSelect($("#updateForm").find(":input[name='rack2Id']"), $(this).val());
    })

    $("#updateForm").find("select[name='room1Id']").change(function () {
        loadRackSelect($("#updateForm").find(":input[name='rack1Id']"), $(this).val());
    })

    $("#updateForm").find("select[name='rack1Id']").change(function () {
        loadDevSelect($("#updateForm").find("select[name='res1Id']"), $(this).val());
    })

    $("#updateForm").find("select[name='rack2Id']").change(function () {
        loadDevSelect($("#updateForm").find("select[name='res2Id']"),$(this).val());
    })



/*
    $("#info").find("select[name='org1Id']").change(function () {
        loadRoomSelect($("#updateForm").find(":input[name='room1Id']"),'',$(this).val());
    })

    $("#info").find("select[name='org2Id']").change(function () {
        loadRoomSelect($("#updateForm").find(":input[name='room2Id']"),'',$(this).val());
    })

    $("#info").find("select[name='room2Id']").change(function () {
        loadRackSelect($("#updateForm").find(":input[name='rack2Id']"), $(this).val());
    })

    $("#info").find("select[name='room1Id']").change(function () {
        loadRackSelect($("#updateForm").find(":input[name='rack1Id']"), $(this).val());
    })

    $("#info").find("select[name='rack1Id']").change(function () {
        loadDevSelect($("#updateForm").find("select[name='res1Id']"), $(this).val());
    })

    $("#info").find("select[name='rack2Id']").change(function () {
        loadDevSelect($("#updateForm").find("select[name='res2Id']"),$(this).val());
    })
*/




    //列表按钮
    function addFunctionAlty(value, row, index) {
        var data = [
            '<button id="bind" type="button" class="btn bg-yellow table-btn"  onclick="infoModel(&apos;'+value+'&apos;)">详情</button>',
        ];
        if($("#editFlag").text() != null && $("#editFlag").text() != '' && $("#editFlag").text() != undefined){
            data.push('<button id="unbind" type="button" class="btn bg-yellow table-btn" onclick="updateModel(&apos;'+value+'&apos;)">编辑</button>');
        }
        if($("#delFlag").text() != null && $("#delFlag").text() != '' && $("#delFlag").text() != undefined){
            data.push('<button id="unbind" type="button" class="btn bg-bold table-btn" onclick="del(&apos;'+value+'&apos;)">删除</button>');
        }
        if(row.tid != null && row.tid != '' && row.tid != undefined && $("#untyingFlag").text() != null && $("#untyingFlag").text() != '' && $("#untyingFlag").text() != undefined){
            data.push('<button id="unbind" type="button" class="btn bg-bold table-btn" onclick="untying(&apos;'+value+'&apos;)">解绑</button>');
        }
        return data.join('');
    }

    //列表字段
    var columns =  [
        {checkbox: true}
        ,{field:'cableType',title: '产品类型',width:100,class:'colStyle', }
        ,{field:'assetId', title: '线缆编号',width:100,class:'colStyle',}
        ,{field:'intf1Type', title: '源端接口类型',width:100,class:'colStyle', }
        ,{field:'room1Name', title: '源端机房',width:100,class:'colStyle',}
        ,{field:'res1Name', title: '源端设备信息',width:100,class:'colStyle',} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
        ,{field:'intf2Type', title: '宿端接口类型',width:100,class:'colStyle',}
        ,{field:'room2Name', title: '宿端机房', width:100,class:'colStyle',}
        ,{field:'res2Name', title: '宿端设备信息',width:100,class:'colStyle',}
        ,{field:'serveInfo', title: '业务信息',width:100,class:'colStyle',}
        ,{field:'barcode1', title: '源端标签编号',width:100,class:'colStyle',formatter:paramsMatter9}
        ,{field:'barcode2', title: '宿端标签编号',width:100,class:'colStyle',formatter:paramsMatter0}
        ,{field:'id', title: '操作',class:'active1',formatter: addFunctionAlty, width: 215}
    ];

    $("#demo").on('load-success.bs.table',function () {

        $('.bootstrap-table tr td').each(function () {
            if($(this).hasClass("active1")){

            }else{
                $(this).attr("title", $(this).text());
                $(this).css("cursor", 'pointer');
            }
        });
    })


    function paramsMatter9(value, row, index) {
        var values = row.barcode1;
        if(values==undefined){
            values='--'
        }
        var span=document.createElement('span');
        span.setAttribute('title',values);
        span.innerHTML = values;
        return span.outerHTML;
    }
    function paramsMatter0(value, row, index) {
        var values = row.barcode2;
        if(values==undefined){
            values='--'
        }
        var span=document.createElement('span');
        span.setAttribute('title',values);
        span.innerHTML = values;
        return span.outerHTML;
    }




    loadTable($('#demo'),columns,ctxPath + 'cable/getPage', getQuery());
    $("#demo").on('post-body.bs.table',function(data){
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

    //添加提交
    $("[name = 'add_button']").click(function () {
        var data = $("#add").serializeObject();
        if(checkNull($("#add"),data)){
            var buttonEle = $(this);
            buttonEle.attr("disabled",true).attr("readonly",true);
            $.ajax({
                url: ctxPath +"cable/addCable",
                type:'post',
                data:data,
                //这儿的三个参数其实就是XMLHttpRequest里面带的信息。
                success: function(data){
                    if(data.code = '0'){
                        //  alert("添加成功");
                        var obj = {
                            type: "showSweetAlert",
                            title: "提示",
                            content: "<div>添加成功",
                        };
                        method.msg_layer(obj);
                        $("#openAddFilter").find("button[name='close']").click();
                        refreshfTable($("#demo"),'1',getQuery());
                    }else{
                        // alert("添加失败!")
                        var obj = {
                            type: "showSweetAlert",
                            title: "提示",
                            content: "<div>添加失败",
                        };
                        method.msg_layer(obj);
                    }
                    buttonEle.removeAttr("disabled").removeAttr("readonly");
                }
            })
        }
    })


    $("button[name='impl_button']").click(function () {
        var fd = new FormData();
        if($("#file-0")[0].files[0] != null && $("#file-0")[0].files[0] != '' && $("#file-0")[0].files[0] != undefined){
            fd.append("cableFile", $("#file-0")[0].files[0]);
            var buttonEle = $(this);
            buttonEle.attr("disabled",true).attr("readonly",true);
            $.ajax({
                url: ctxPath+'cable/importCable',
                type: 'post',
                processData: false,
                contentType: false,
                data: fd,
                success: function (data) {
                    if(data.code == '0'){
                        if(data.data == null || data.data.length == 0) {
                            var obj = {
                                type: "showSweetAlert",
                                title: "提示",
                                content: "<div>导入成功",
                            };
                            method.msg_layer(obj);
                            $("#importModel").find("button[name='close']").click();
                            refreshfTable($("#demo"),'1',getQuery());
                        }else{
                            var obj={
                                type:"showSweetAlert",
                                title:"提示",
                                content:"<div>导入成功，部分导入失败",
                            };
                            method.msg_layer(obj);
                            refreshfTable($("#demo"),'1',getQuery());
                            $("#importModel").find("button[name='close']").click();
                            var column =  [
                                {field:'cableType',title: '产品类型', }
                                ,{field:'intf1Type', title: '源端接口类型', }
                                ,{field:'room1Name', title: '源端机房'}
                                ,{field:'res1Code', title: '源端设备编号',} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
                                ,{field:'intf2Type', title: '宿端接口类型', }
                                ,{field:'room2Name', title: '宿端机房', }
                                ,{field:'res2Code', title: '宿端设备编号'}
                                ,{field:'serveInfo', title: '业务信息'}
                                ,{field:'ps', title: '失败原因'}
                            ];
                            $("#errorTable").bootstrapTable('destroy');
                            setDataloadPageTable($("#errorTable"),column,data.data);
                            $("button[name='errorData_button']").click();
                        }

                    }else{
                        var str = "";
                        if(data.message != '' && data.message != undefined && data.message != null){
                            str = "<div>"+data.message;
                        }else{
                            str = "导入失败";
                        }
                        //alert("导入失败!")
                        var obj={
                            type:"showSweetAlert",
                            title:"提示",
                            content:str,
                        };
                        method.msg_layer(obj);
                    }
                    buttonEle.removeAttr("disabled").removeAttr("readonly");
                }
            })
        }else{
           // alert("请选择导入文件!");
            var obj = {
                type: "showSweetAlert",
                title: "提示",
                content: "<div>请选择导入文件",
            };
            method.msg_layer(obj);
        }


    })


    $("button[name='export_button']").click(function () {
        var idlist = $('#demo').bootstrapTable('getAllSelections');
        if(idlist.length == 0){
           // alert("至少选择一条信息!");
            var obj = {
                type: "showSweetAlert",
                title: "提示",
                content: "<div>至少选择一条信息",
            };
            method.msg_layer(obj);
            return false
        }
        for (var i = 0; i< idlist.length;i++){
            $("#exportForm").append("<input type='hidden' name='ids' value='"+idlist[i].id+"'>");
        }
        $("#exportForm").submit();
        $("#exportForm").html("");
    });


    $("[name = 'down_button']").click(function () {
        $("#downModel").submit();
    })


    $("button[name='search_btn']").click(function () {
        refreshfTable($("#demo"),'1',getQuery ());
        $("#openFilter").find("#close").click();
    })


    //批量删除
    $("button[name='del_button']").click(function () {
        var idlist = $('#demo').bootstrapTable('getAllSelections');
        if(idlist.length == 0){
          //  alert("至少选择一条信息!");
            var obj = {
                type: "showSweetAlert",
                title: "提示",
                content: "<div>至少选择一条信息",
            };
            method.msg_layer(obj);
            return false
        }
        // if(confirm("是否确认删除选中项?")){

        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"<div>是否确认删除选中项",
            btn:["关闭","确定"],
            callBack1:function () {
                console.log("取消")
            },
            callBack2:function () {

                var ids = [];
                for (var i = 0; i< idlist.length;i++){
                    ids.push(idlist[i].id)
                }
                $.ajax({
                    url: ctxPath +"cable/batchDel",
                    type:'post',
                    contentType:"application/json",
                    dataType:"json",
                    data:JSON.stringify(ids) ,
                    success: function (data) {
                        if(data.code = '0'){
                            //  alert("删除成功!");
                            var obj={
                                type:"showSweetAlert",
                                title:"提示",
                                content:"<div>删除成功",
                                // btn:["关闭","确定"],
                                // callBack1:function () {
                                //     console.log("取消")
                                // },
                                // callBack2:function () {
                                //     // console.log("确定")
                                //     $('.msg-layer-bg').css('display','none')
                                //     $('.msg-layer').css('display','none')
                                //     refreshfTable($("#demo"),'1',getQuery);
                                //
                                // },
                            };
                            $('.msg-layer-bg').css('display','none')
                            $('.msg-layer').css('display','none')

                            method.msg_layer(obj);
                            refreshfTable($("#demo"),'1',getQuery());

                        }else{

                            var obj={
                                type:"showSweetAlert",
                                title:"提示",
                                content:"<div>删除失败",

                            };
                            method.msg_layer(obj);
                        }
                    }
                })


            },
        };
        method.msg_layer(obj);


            // var ids = [];
            // for (var i = 0; i< idlist.length;i++){
            //     ids.push(idlist[i].id)
            // }
            // $.ajax({
            //     url: ctxPath +"cable/batchDel",
            //     type:'post',
            //     contentType:"application/json",
            //     dataType:"json",
            //     data:JSON.stringify(ids) ,
            //     success: function (data) {
            //         if(data.code = '0'){
            //           //  alert("删除成功!");
            //             var obj={
            //                 type:"showSweetAlert",
            //                 title:"提示",
            //                 content:"<div>是否删除这条数据",
            //                 btn:["关闭","确定"],
            //                 callBack1:function () {
            //                     console.log("取消")
            //                 },
            //                 callBack2:function () {
            //                     // console.log("确定")
            //                     $('.msg-layer-bg').css('display','none')
            //                     $('.msg-layer').css('display','none')
            //                     refreshfTable($("#demo"),'1',getQuery);
            //
            //                 },
            //             };
            //             method.msg_layer(obj);
            //
            //         }else{
            //          //   alert("删除失败!");
            //             var obj={
            //                 type:"showSweetAlert",
            //                 title:"提示",
            //                 content:"<div>删除失败",
            //                 // btn:["关闭","确定"],
            //                 // callBack1:function () {
            //                 //     console.log("取消")
            //                 // },
            //                 // callBack2:function () {
            //                 //     // console.log("确定")
            //                 //     $('.msg-layer-bg').css('display','none')
            //                 //     $('.msg-layer').css('display','none')
            //                 //     refreshfTable($("#demo"),'1',getQuery);
            //                 //
            //                 // },
            //             };
            //             method.msg_layer(obj);
            //         }
            //     }
            // })
        // }
    })

    //修改提交
    $("#content3814").find("button[name='commit_button']").click(function () {
        var data = $("#content3814").find("#updateForm").serializeObject();
        if(checkNull($("#content3814").find("#updateForm"),data)){
            var buttonEle = $(this);
            buttonEle.attr("disabled",true).attr("readonly",true);
            $.ajax({
                url: ctxPath + "cable/updateCable",
                type: 'post',
                data: data,
                //这儿的三个参数其实就是XMLHttpRequest里面带的信息。
                success: function (data) {
                    if (data.code = '0') {
                        var obj={
                            type:"showSweetAlert",
                            title:"提示",
                            content:"<div>编辑成功",

                        };
                        method.msg_layer(obj);
                        $("#content3814").find("button[name='close']").click();
                        refreshfTable($("#demo"), '1');
                    } else {
                        var obj={
                            type:"showSweetAlert",
                            title:"提示",
                            content:"<div>编辑失败",

                        };
                        method.msg_layer(obj);
                    }
                    buttonEle.removeAttr("disabled").removeAttr("readonly");
                }
            })
        }

    })
})



function updateModel(val) {
    $.ajax({
        url: ctxPath +"cable/getPage?id="+val,
        type:'get',
        //这儿的三个参数其实就是XMLHttpRequest里面带的信息。
        success: function(data){
            if(data.code = '0'){
                loadOrg($("#updateForm").find(":input[name='org1Id']"),data.rows[0].org1Id);
                loadOrg($("#updateForm").find(":input[name='org2Id']"),data.rows[0].org2Id);
                loadRoomSelect($("#updateForm").find(":input[name='room1Id']"),data.rows[0].room1Id,data.rows[0].org1Id);
                loadRoomSelect($("#updateForm").find(":input[name='room2Id']"),data.rows[0].room2Id,data.rows[0].org2Id);
                loadRackSelect($("#updateForm").find(":input[name='rack2Id']"),data.rows[0].room2Id,data.rows[0].rack2Id);
                loadRackSelect($("#updateForm").find(":input[name='rack1Id']"),data.rows[0].room1Id,data.rows[0].rack1Id);
                loadDevSelect($("#updateForm").find("select[name='res1Id']"),data.rows[0].rack1Id,data.rows[0].res1Id);
                loadDevSelect($("#updateForm").find("select[name='res2Id']"),data.rows[0].rack2Id,data.rows[0].res2Id);
                feedBackVal($("#updateForm"),data.rows[0]);
                $("#updateModeButton").click();
            }
        }
    })
}

function del(val) {
    // if(confirm("是否确认删除该数据")){

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
                url: ctxPath +"cable/delCable/"+val,
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
                        $('#demo').bootstrapTable('remove', {
                            field: 'id',
                            values: val
                        });
                        // refreshfTable($("#demo"),'1');
                        method.msg_layer(obj);
                        refreshfTable($("#demo"),'1');

                    }else{
                        // alert("删除失败!")
                        var obj={
                            type:"showSweetAlert",
                            title:"提示",
                            content:"<div>删除失败",

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

//解绑
function untying(value){
    // if(confirm("是否确认解除绑定？")){
    var obj={
        type:"showSweetAlert",
        title:"提示",
        content:"<div>是否解绑这条数据",
        btn:["关闭","确定"],
        callBack1:function () {
            console.log("取消")
        },
        callBack2:function () {
            // console.log("确定")
            $.ajax({
                url: ctxPath +"cable/untyingLabel",
                type:'post',
                data:{'id':value},
                //这儿的三个参数其实就是XMLHttpRequest里面带的信息。
                success: function(data){
                    if(data.code = '0'){
                        //alert("解绑成功");
                        var obj={
                            type:"showSweetAlert",
                            title:"提示",
                            content:data.message,
                        };
                        $('.msg-layer-bg').css('display','none')
                        $('.msg-layer').css('display','none')
                        $('#demo').bootstrapTable('remove', {
                            field: 'id',
                            values: val
                        });
                        // refreshfTable($("#demo"),'1');
                        method.msg_layer(obj);
                        refreshfTable($("#demo"),'1');

                    }else{
                        //alert("解绑失败!")
                        var obj={
                            type:"showSweetAlert",
                            title:"提示",
                            content:"<div>解绑失败",

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

//查询条件
function getQuery(){
    return $("#queryFrom").serializeObject();
}


function infoModel(val) {
    $.ajax({
        url: ctxPath +"cable/getPage?id="+val,
        type:'get',
        //这儿的三个参数其实就是XMLHttpRequest里面带的信息。
        success: function(data){
            if(data.code = '0'){
                loadOrg($("#info").find(":input[name='org1Id']"),data.rows[0].org1Id);
                loadOrg($("#info").find(":input[name='org2Id']"),data.rows[0].org2Id);
                loadRoomSelect($("#info").find(":input[name='room1Id']"),data.rows[0].room1Id,data.rows[0].org1Id);
                loadRoomSelect($("#info").find(":input[name='room2Id']"),data.rows[0].room2Id,data.rows[0].org2Id);
                loadRackSelect($("#info").find(":input[name='rack2Id']"),data.rows[0].room2Id,data.rows[0].rack2Id);
                loadRackSelect($("#info").find(":input[name='rack1Id']"),data.rows[0].room1Id,data.rows[0].rack1Id);
                loadDevSelect($("#info").find("select[name='res1Id']"),data.rows[0].rack1Id,data.rows[0].res1Id);
                loadDevSelect($("#info").find("select[name='res2Id']"),data.rows[0].rack2Id,data.rows[0].res2Id);
                feedBackVal($("#info"),data.rows[0]);
                $("#infoButton").click();
            }
        }
    })
}
