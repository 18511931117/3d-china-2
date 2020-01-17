/*
Array.prototype.remove = function(val) {
    var index = this.indexOf(val);
    if (index > -1) {
        this.splice(index, 1);
    }
};




layui.use('table', function(){
    var table = layui.table;
    var index = 1;

    var labelTid = [];
    table.render({
        elem: '#test'
        ,url: ctxPath+'cable/getPage'
        ,cols: [[
           /!* {type:'numbers'},*!/
            {type:'radio'},
            {field: 'id', title: 'ID',}
            , {field: 'assetId', title: '线缆编号'}
            , {field: 'cableType', title: '线缆类别',}
            , {field: 'serveInfo', title: '业务信息'}
            , {field: '操作', title: '操作', width: 240, toolbar: '#barDemo'}
        ]]
        ,where:{
            'notBind':'0',
        }
        ,page: true
    });
    table.render({
        elem: '#test2'
        ,url: ctxPath + 'label/getPage'
        ,cols: [[
            {type:'numbers'},
            {type: 'checkbox'},
            {field: 'id', title: 'ID',}
            , {field: 'barcode', title: '编号'}
            , {field: 'tid' , title: 'tid',}
            , {field: '操作', title: '操作', width: 240, toolbar: '#barDemo2'}
        ]]
        ,page: true
        ,where:{
            'labelType':'2',
            'isBinding':'0'
        },done: function(res, curr, count){
            $('.laytable-cell-numbers').html('');
        }
    });


    $("button[name='cable_searchButton']").on("click",function(){
        refreshCableTable()
    });


    function refreshCableTable() {
        table.reload("test",{
            page: {
                curr: 1 //重新从第 1 页开始
            },
            where: {
                room1Id: $(":input[name='roomSelect_search']").val(),
                cableType: $(":input[name='cableType_search']").val()
            }
        })
    }



    $("button[name='label_searchButton']").on("click",function(){
        refreshLabelTable()
    });


    function refreshLabelTable() {
        table.reload("test2",{
            page: {
                curr: 1 //重新从第 1 页开始
            },
            where: {
                startBarcode: $(":input[name='startBarcode_search']").val(),
                endBarcode: $(":input[name='endBarcode_search']").val()
            }
        })
    }


    //监听行工具事件
    table.on('tool(test)', function(obj){
        var data = obj.data;
        if(obj.event === 'export') {
            layer.msg("这是导出++")
        }
    });
    table.on('tool(test2)', function(obj){
        var data = obj.data;
        if(obj.event === 'export') {
            layer.msg("这是导出")
        }
    });



    table.on('checkbox(test2)', function(obj){
        if($(this).attr("lay-filter")=="layTableAllChoose"){
            if ($(this).is(":checked")) {
            }else{
                $("div[lay-filter=LAY-table-2] tbody tr td:first-child").children(".laytable-cell-numbers").html("");
                labelTid = [];
            }
        }else{
            if ($(this).is(":checked")) {
                var count = ""
                count = $("div[lay-filter=LAY-table-2] tbody .layui-form-checked").length
                if(count <= 2){
                    $(this).parent().parent().prev().children(".laytable-cell-numbers").html(count)
                    $(this).val();
                    $(this).attr("data-value", count);
                    labelTid[eval(count)-1] = obj.data.tid;
                }
            }else {
                labelTid.remove(obj.data.tid);
                var val = $(this).parent().parent().prev().children(".laytable-cell-numbers").html();
                $(this).parent().parent().prev().children(".laytable-cell-numbers").html("")
                //table2中的对应选中时重新排列
                var count = ""
                count = $("div[lay-filter=LAY-table-2] tbody .layui-form-checked").length
                var num = $("div[lay-filter=LAY-table-2] tbody tr td:first-child")
                for (var i = 0; i < count; i++) {
                    $("div[lay-filter=LAY-table-2] tbody .layui-form-checked").eq(i).parent().parent().prev().children(".laytable-cell-numbers").html(i + 1)
                }
            }
        }
    });

    $('#bind_button').click(function () {
        var checkStatus = table.checkStatus('test');
        if(checkStatus.data[0] == null){
            layui.layer.msg("请选择线缆!");
            return false
        }
        var cableId = checkStatus.data[0].id;
        if(cableId == '' || cableId == null || cableId == undefined){
            layui.layer.msg("请选择线缆!");
            return false
        }

        if(labelTid.length != 2){
            layui.layer.msg("请选择两个标签!");
            return false
        }

        $.ajax({
            url: ctxPath +"cable/bindLabel",
            type:'post',
            data:{'id':cableId,'tid':labelTid[0],'tid2':labelTid[1]},
            //这儿的三个参数其实就是XMLHttpRequest里面带的信息。
            success: function(data){
                if(data.code = '0'){
                    layui.layer.msg("绑定成功");
                     refreshCableTable();
                }else{
                    layui.layer.error("绑定失败!")
                }
            }
        })
    });
});
*/

$('input').each(function () {
    $(this).mouseover(function () {
        var val = $(this).val()
        $(this).attr("title",val)
    })
})




var cableBind = [];

var cableId;

function clickLabelCheckbox(id) {

        if($("#check"+id).prop("checked")){
            cableBind.push(id);
            $("#bind"+id).text(cableBind.length);
        }else{
            removeAaary(cableBind,id);
            for (var i = 0;i<cableBind.length;i++){
                $("#bind"+cableBind[i]).text(i+1);
            }
            $("#bind"+id).html("");
        }
    if(cableBind.length == 2){
        $("#test2").find(":input[type='checkbox']").each(function () {
            if(!$(this).prop("checked")){
                $(this).attr("disabled",true)
            }
        })
    }else{
        $("#test2").find(":input[type='checkbox']").each(function () {
                $(this).attr("disabled",false);
        })
    }
}


$("button[name='label_searchButton']").click(function () {
    refreshfTable($('#test2'),"1",getLabelQuery())
})


function clickCheckbox(id) {
    cableId = id;
}


$("#bind_button").click(function () {
    if(cableId == '' || cableId == null || cableId == undefined){
      //  alert("至少选择一条线缆");
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"<div>至少选择一条线缆",
        };
        method.msg_layer(obj);
        return false;
    }

    if(cableBind.length < 2){
       // alert("请选择两个标签");
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"<div>请选择两个标签",
        };
        method.msg_layer(obj);
        return false;
    }

    var obj={
        type:"showSweetAlert",
        title:"提示",
        content:"是否确认绑定已选择的线缆和标签?",
        btn:["关闭","确定"],
        callBack1:function () {
            console.log("取消")
        },
        callBack2:function () {
            $.ajax({
                url: ctxPath +"cable/bindLabel",
                type:'post',
                data:{'id':cableId,'tid':cableBind[0],'tid2':cableBind[1]},
                //这儿的三个参数其实就是XMLHttpRequest里面带的信息。
                success: function(data){
                    if(data.code = '0'){
                        //  alert("绑定成功");
                        var obj={
                            type:"showSweetAlert",
                            title:"提示",
                            content:"<div>绑定成功",
                        };
                        method.msg_layer(obj);
                        refreshfTable($('#test'),"1",getQuery());
                        refreshfTable($('#test2'),"1",getLabelQuery());
                        cableBind = [];
                        cableId = '';
                    }else{
                        // alert("绑定失败!");
                        var obj={
                            type:"showSweetAlert",
                            title:"提示",
                            content:"<div>绑定失败",
                        };
                        method.msg_layer(obj);
                    }
                }
            })
            $('.msg-layer-bg').css('display','none')
            $('.msg-layer').css('display','none')
        },
    };
    method.msg_layer(obj);


    // if(confirm("是否确认绑定已选择的线缆和标签？")){

    // }
})


function del(val){
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
            $('.msg-layer-bg').css('display','none')
            $('.msg-layer').css('display','none')
            $('#test').bootstrapTable('remove', {
                field: 'id',
                values: val
            });
            // refreshfTable($("#demo"),'1');
        },
    };
    method.msg_layer(obj);
}
function delLabel(val){
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
            $('.msg-layer-bg').css('display','none')
            $('.msg-layer').css('display','none')
            $('#test2').bootstrapTable('remove', {
                field: 'id',
                values: val
            });
            // refreshfTable($("#demo"),'1');
        },
    };
    method.msg_layer(obj);
}



function getQuery(){
    return {'room1Id':$(":input[name='roomId']").val(),'cableType':$(":input[name='cableType']").val(),'isBind':'0'};
}


function getLabelQuery(){
   // return {'startBarcode':$(":input[name='startBarcode_search']").val().replace(/\b(0+)/gi,""),'endBarcode':$(":input[name='endBarcode_search']").val().replace(/\b(0+)/gi,""),'isBinding':'0','isUid':'1'};
    return {'startBarcode':$(":input[name='startBarcode_search']").val().replace(/\b(0+)/gi,""),'endBarcode':$(":input[name='endBarcode_search']").val().replace(/\b(0+)/gi,""),'isBinding':'0','isUid':'1'};
}


$("button[name='cable_searchButton']").click(function () {
    refreshfTable($('#test'),"1",getQuery())
})


$("button[name='label_searchButton']").click(function () {
    refreshfTable($('#test2'),"1",getLabelQuery())
})


$(function () {
    loadRoomSelect($(":input[name='roomId']"));

    function addFunctionAlty(value, row, index) {
        return [
            '<button id="unbind" type="button" class="btn bg-bold table-btn"  onclick="del(&apos;'+value+'&apos;)">删除</button>',
        ].join('');
    }


    function addLabelFunctionAlty(value, row, index) {
        return [
            '<button id="unbind" type="button" class="btn bg-bold table-btn"  onclick="delLabel(&apos;'+value+'&apos;)">删除</button>',
        ].join('');
    }


    var columns =  [
        {field:'id',title: '选择',width: 50,formatter:function (value, row, index) {
                return "<input type='radio' name='check' id='check"+value+"' value='"+value+"' onclick='clickCheckbox(&apos;"+value+"&apos;)'>";
            }}
        , {field: 'assetId', title: '线缆编号',width:80,class:'colStyle',}
        , {field: 'cableType', title: '线缆类别',width:80,class:'colStyle',}
        , {field: 'serveInfo', title: '业务信息',width:80,class:'colStyle',}
        ,{field:'id', title: '操作',width:60,formatter: addFunctionAlty}
    ];


    $("#test").on('load-success.bs.table',function () {

        $('.bootstrap-table tr td').each(function () {
            $(this).attr("title", $(this).text());
            $(this).css("cursor", 'pointer');
        });
    })

    loadTable($('#test'),columns,ctxPath+'cable/getPage', getQuery());

    var columns =  [
        {field: 'tid',title: '绑定',width: 50,formatter:function (value, row, index) {
                return "<span id='bind"+value+"'></span>";
            }},
        {field:'tid',title: '选择',width: 50,formatter:function (value, row, index) {
                return "<input type='checkbox' id='check"+value+"' value='"+value+"' onclick='clickLabelCheckbox(&apos;"+value+"&apos;)'>";
            }}
        , {field: 'barcode', title: '编号',width:80,class:'colStyle',}
        , {field: 'tid' , title: 'tid',width:80,class:'colStyle',}
        , {field: 'uid' , title: 'uid',width:80,class:'colStyle',}
        ,{field:'id', title: '操作',width:80,formatter: addLabelFunctionAlty}
    ];
    $("#test2").on('load-success.bs.table',function () {

        $('.bootstrap-table tr td').each(function () {
            $(this).attr("title", $(this).text());
            $(this).css("cursor", 'pointer');
        });
    })



    loadTable($('#test2'),columns,ctxPath+'label/getPage', getLabelQuery());
})