/*Array.prototype.remove = function(val) {
    var index = this.indexOf(val);
    if (index > -1) {
        this.splice(index, 1);
    }
};*/

/*layui.use('table', function(){
    var table = layui.table;
    var index = 1

    var devId = [];
    var labelTid = [];


    $('#bind_button').click(function () {
        if(devId.length != labelTid.length){
            layui.layer.msg("删除失败!");
        }

        var resl = [];
        var res = new Object();
        for (var i = 0;i< devId.length; i++){
            resl.push({'id':devId[i],'tid':labelTid[i]});
        }

        $.ajax({
            url: ctxPath +"device/bindLabel",
            type:'post',
            contentType:"application/json",
            dataType:"json",
            data:JSON.stringify(resl),
            //这儿的三个参数其实就是XMLHttpRequest里面带的信息。
            success: function(data){
                if(data.code = '0'){
                    layui.layer.msg("解绑成功");
                    //refreshTable();
                }else{
                    layui.layer.error("解绑失败!")
                }
            }
        })
    });


    table.render({
        elem: '#test'
        ,url: ctxPath+'device/getNotBindDevice'
        ,cols: [[
            {type:'numbers'},
            {type: 'checkbox'},
            {field: 'id', title: 'ID',}
            , {field: 'name', title: '设备名称'}
            , {field: 'roomName', title: '所属机房',}
            , {field: 'rackName', title: '机架'}
            , {field: 'sheft', title: '机位'}
            , {field: '操作', title: '操作', width: 240, toolbar: '#barDemo'}
        ]]
        ,page: true
        ,done: function(res, curr, count){
            $('.laytable-cell-numbers').html('');
        }
    });
    table.render({
        elem: '#test2'
        ,url: ctxPath + 'label/getPage'
        ,cols: [[
            {type:'numbers'},
            {type: 'checkbox'},
            {field: 'id', title: 'ID',}
            , {field: 'barcode', title: '编号'}
            , {field: 'tid' , title: 'Tid',}
            , {field: '操作', title: '操作', width: 240, toolbar: '#barDemo2'}
        ]]
        ,page: true
        ,where:{
            'labelType':'1',
            'isBinding':'0'
        }
        ,done: function(res, curr, count){
            $('.laytable-cell-numbers').html('');
        }
    });
    //监听行工具事件
    table.on('tool(test)', function(obj){

        var data = obj.data;
        //console.log(obj)
        if(obj.event === 'export') {
            layer.msg("这是导出++")
        }
    });
    table.on('tool(test2)', function(obj){
        var data = obj.data;
        //console.log(obj)
        if(obj.event === 'export') {
            layer.msg("这是导出")
        }
    });
    var devId = [];
    table.on('checkbox(test)', function(obj){

        var bean = obj.data;
        if($(this).attr("lay-filter")=="layTableAllChoose"){
            if ($(this).is(":checked")) {
                var num = $("div[lay-filter=LAY-table-1] tbody tr td:first-child").length
                var checkStatus = table.checkStatus('test');
                for (var i = 0; i < num; i++) {
                    $("div[lay-filter=LAY-table-1] tbody tr td:first-child").eq(i).children(".laytable-cell-numbers").html(i + 1);
                    devId[i] = checkStatus.data[i].id;
                }
            }else{
                $("div[lay-filter=LAY-table-1] tbody tr td:first-child").children(".laytable-cell-numbers").html("");
                devId = [];
            }
        }else{
            if ($(this).is(":checked")) {
                var count = ""
                count = $("div[lay-filter=LAY-table-1] tbody .layui-form-checked").length
                $(this).parent().parent().prev().children(".laytable-cell-numbers").html(count)
                $(this).val();
                $(this).attr("data-value", count);
                devId[eval(count)-1] = bean.id;
            }else {
                devId.remove(bean.id);
                var val = $(this).parent().parent().prev().children(".laytable-cell-numbers").html();
                $(this).parent().parent().prev().children(".laytable-cell-numbers").html("")
                //table2中的对应选中时重新排列
                var count = ""
                count = $("div[lay-filter=LAY-table-1] tbody .layui-form-checked").length
                var num = $("div[lay-filter=LAY-table-1] tbody tr td:first-child")

                var checkLength = $("div[lay-filter=LAY-table-2] tbody .layui-form-checked").length
                var checkval = $("div[lay-filter=LAY-table-2] tbody .layui-form-checked")
                for (var i = 0; i < checkLength; i++) {
                    if (checkval.eq(i).parent().parent().prev().children(".laytable-cell-numbers").html() == val) {
                        checkval.eq(i).parent().parent().prev().children(".laytable-cell-numbers").html("")
                        checkval.eq(i).removeClass("layui-form-checked")
                        checkval.eq(i).prev().attr("checked",false)
                    }
                }
                //当钱table中的数组重排
                for (var i = 0; i < count; i++) {
                    $("div[lay-filter=LAY-table-1] tbody .layui-form-checked").eq(i).parent().parent().prev().children(".laytable-cell-numbers").html(i + 1)
                    $("div[lay-filter=LAY-table-2] tbody .layui-form-checked").eq(i).parent().parent().prev().children(".laytable-cell-numbers").html(i + 1)

                }
            }
        }
    });

    table.on('checkbox(test2)', function(obj){
        if($(this).attr("lay-filter")=="layTableAllChoose"){
            var checkStatus = table.checkStatus('test2');
            if ($(this).is(":checked")) {
                var num = $("div[lay-filter=LAY-table-2] tbody tr td:first-child").length
                console.log(num)
                for (var i = 0; i < num; i++) {
                    $("div[lay-filter=LAY-table-2] tbody tr td:first-child").eq(i).children(".laytable-cell-numbers").html(i + 1)
                    labelTid[i] = checkStatus.data[i].tid;
                }
            }else{
                $("div[lay-filter=LAY-table-2] tbody tr td:first-child").children(".laytable-cell-numbers").html("");
                labelTid[i] = [];
            }
        }else{
            if ($(this).is(":checked")) {
                var count = ""
                count = $("div[lay-filter=LAY-table-2] tbody .layui-form-checked").length
                console.log(count)
                $(this).parent().parent().prev().children(".laytable-cell-numbers").html(count)
                $(this).val();
                $(this).attr("data-value", count)

                labelTid[eval(count)-1] = obj.data.tid;
            }else {
                var val = $(this).parent().parent().prev().children(".laytable-cell-numbers").html();
                $(this).parent().parent().prev().children(".laytable-cell-numbers").html("")
                //table2中的对应选中时重新排列
                var count = ""
                count = $("div[lay-filter=LAY-table-2] tbody .layui-form-checked").length

                var num = $("div[lay-filter=LAY-table-2] tbody tr td:first-child")
                console.log(count)
                for (var i = 0; i < count; i++) {
                    $("div[lay-filter=LAY-table-2] tbody .layui-form-checked").eq(i).parent().parent().prev().children(".laytable-cell-numbers").html(i + 1)
                }

                labelTid.remove(obj.data.tid);
            }
        }

    });

});*/
var devBind = [];

var cableBind = [];


$("#bind_button").click(function () {
    if(devBind.length == 0){
      //  alert("至少选择一个设备");
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"<div>至少选择一个设备",
            btn:["关闭","确定"],
        };
        method.msg_layer(obj);
        return false;
    }

    if(cableBind.length == 0){
      //  alert("至少选择一标签");
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"<div>至少选择一个标签",
            btn:["关闭","确定"],
        };
        method.msg_layer(obj);
        return false;
    }

    if(devBind.length != cableBind.length){
       // alert("设备与标签数量不一致");
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"<div>设备与标签数量不一致",
            btn:["关闭","确定"],
        };
        method.msg_layer(obj);
        return false;
    }

    // if(confirm("是否确认绑定已选择的设备和标签？")){

    var obj={
        type:"showSweetAlert",
        title:"提示",
        content:"是否确认绑定已选择的设备和标签?",
        btn:["关闭","确定"],
        callBack1:function () {
            //console.log("取消")
        },
        callBack2:function () {
            // console.log("确定")
            var resl = [];
            var res = new Object();
            for (var i = 0;i< devBind.length; i++){
                resl.push({'id':devBind[i],'tid':cableBind[i]});
            }
            $.ajax({
                url: ctxPath +"device/bindLabel",
                type:'post',
                contentType:"application/json",
                dataType:"json",
                data:JSON.stringify(resl),
                //这儿的三个参数其实就是XMLHttpRequest里面带的信息。
                success: function(data){
                    if(data.code = '0'){
                        devBind = [];
                        cableBind = [];
                       // alert("绑定成功");
                        var obj={
                            type:"showSweetAlert",
                            title:"提示",
                            content:"<div>绑定成功",
                            btn:["关闭","确定"],
                            callBack1:function () {
                                //console.log("取消")
                            },
                            callBack2:function () {
                                $('.msg-layer-bg').css('display','none')
                                $('.msg-layer').css('display','none')
                            }
                        };
                        method.msg_layer(obj);

                        refreshfTable($('#test'),"1",getQuery())
                        refreshfTable($('#test2'),"1",getLabelQuery())
                    }else{
                       // alert("绑定失败!")
                        var obj={
                            type:"showSweetAlert",
                            title:"提示",
                            content:"<div>绑定失败",
                            btn:["关闭","确定"],
                            callBack1:function () {
                                //console.log("取消")
                            },
                            callBack2:function () {
                                $('.msg-layer-bg').css('display','none')
                                $('.msg-layer').css('display','none')
                            }
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
    // $('#test2').bootstrapTable('remove', {
    //     field: 'id',
    //     values: val
    // });




    // }
});


function getQuery(){
    return {'roomId':$(":input[name='roomId']").val(),'resTypeCode':$(":input[name='resTypeCode']").val(),'isBind':'0'};
}


function getLabelQuery(){
    //return {'startBarcode':$(":input[name='startBarcode']").val().replace(/\b(0+)/gi,""),'endBarcode':$(":input[name='endBarcode']").val().replace(/\b(0+)/gi,""),'isBinding':'0','isUid':'0'};
    return {'startBarcode':$(":input[name='startBarcode']").val(),'endBarcode':$(":input[name='endBarcode']").val(),'isBinding':'0','isUid':'0'};
}


$("button[name='label_seach_button']").click(function () {
    refreshfTable($('#test2'),"1",getLabelQuery());
})




function clickCheckbox(id) {
    if($("#check"+id).prop("checked")){
        devBind.push(id);
        $("#bind"+id).text(devBind.length);
    }else{
        removeAaary(devBind,id);
        for (var i = 0;i<devBind.length;i++){
            $("#bind"+devBind[i]).text(i+1);
        }
        $("#bind"+id).html("");
    }
}




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
}
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
    // $('#test2').bootstrapTable('remove', {
    //     field: 'id',
    //     values: val
    // });
}


$(function () {

    loadRoomSelect($(":input[name='roomId']"));
    loadDevTypeSelect($(":input[name='resTypeCode']"));






    $("button[name='dev_seach_button']").click(function () {
        refreshfTable($('#test'),"1",getQuery())
    })


    $("button[name='label_searchButton']").click(function () {
        refreshfTable($('#test2'),"1",getLabelQuery())
    })




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


    var columns =[
        {field: 'id',title: '绑定',width: 50,formatter:function (value, row, index) {
                return "<span id='bind"+value+"'></span>";
            }},
        {field:'id',title: '选择',width: 50,formatter:function (value, row, index) {
                return "<input type='checkbox' id='check"+value+"' value='"+value+"' onclick='clickCheckbox(&apos;"+value+"&apos;)'>";
            }}
        , {field: 'name', title: '设备名称',width:80,class:'colStyle', }
        , {field: 'roomName', title: '所属机房',width:80,class:'colStyle',}
        , {field: 'rackName', title: '机架' ,width:80, class:'colStyle',}
        , {field: 'sheft', title: '机位',width:50}
        ,{field:'id', title: '操作',formatter: addFunctionAlty,width:67}
    ];
    $("#test").on('load-success.bs.table',function () {

        $('.bootstrap-table tr td').each(function () {
            $(this).attr("title", $(this).text());
            $(this).css("cursor", 'pointer');
        });
    })


    loadTable($('#test'),columns,ctxPath+'device/getDevicePage', getQuery());

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


   var labelColumns = [
           {field: 'tid',title: '绑定',width: 40,formatter:function (value, row, index) {
                   return "<span id='bind"+value+"'></span>";
               }},
           {field:'tid',title: '选择',width: 40,formatter:function (value, row, index) {
               return "<input type='checkbox' id='check"+value+"' value='"+value+"' onclick='clickLabelCheckbox(&apos;"+value+"&apos;)'>";
           }}
            ,{field: 'barcode', title: '编号' , width:60,class:'colStyle',}
            , {field: 'tid' , title: 'Tid',width:100,class:'colStyle',}
            ,{field:'id', title: '操作',formatter: addLabelFunctionAlty,width:67}
        ];



    $("#test2").on('load-success.bs.table',function () {

        $('.bootstrap-table tr td').each(function () {
            $(this).attr("title", $(this).text());
            $(this).css("cursor", 'pointer');
        });
    })

    loadTable($('#test2'),labelColumns,ctxPath + 'label/getPage', getLabelQuery());

    $("#test2").on('post-body.bs.table',function(data){
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

})


