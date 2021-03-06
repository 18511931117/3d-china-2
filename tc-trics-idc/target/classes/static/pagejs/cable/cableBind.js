/*


layui.use('table', function(){
    var table = layui.table;
   table.render({
        elem: '#test'
        ,url:ctxPath + 'cable/getPage'
        ,cols: [[
            {type: 'checkbox'},
            {field: 'id', title: 'ID',}
            , {field: 'assetId', title: '线缆编号'}
            , {field: 'cableType', title: '线缆分类',}
            , {field: 'serveInfo', title: '业务信息'}
            , {field: 'res1Name', title: '源端设备'}
            , {field: 'res2Name', title: '宿端设备'}
            , {field: 'barcode1', title: '源端标签编号'}
            , {field: 'barcode2', title: '宿端标签编号'}
            , {field: 'isPasted', title: '状态'}
            , {field: '操作', title: '操作', width: 240, toolbar: '#barDemo'}
        ]]
        ,page: true,
        where:{
            'isBind':'1'
        }
    });

    //监听行工具事件
    table.on('tool(test)', function(obj){
        var data = obj.data;
        if(obj.event === 'del'){
            layer.confirm('真的删除行么', function(index){
                obj.del();
                layer.close(index);
            });
        } else if(obj.event === 'print'){
            Print('#wrap', {
                onStart: function () {
                    console.log('onStart', new Date())
                },
                onEnd: function () {
                    console.log('onEnd', new Date())
                }
            })
        }
    });





});


layui.use('table', function(){
    var table = layui.table;

    table.render({
        elem: '#test2'
        ,url:'/cable/getPage'
        ,cols: [[
            {type: 'checkbox'},
            {field: 'id', title: 'ID',}
            , {field: 'assetId', title: '线缆编号'}
            , {field: 'cableType', title: '线缆分类',}
            , {field: 'serveInfo', title: '业务信息'}
            , {field: 'res1Name', title: '源端设备'}
            , {field: 'res2Name', title: '宿端设备'}
            , {field: 'barcode1', title: '源端标签编号'}
            , {field: 'barcode2', title: '宿端标签编号'}
            , {field: 'isPasted', title: '状态'}
            , {field: '操作', title: '操作', width: 240, toolbar: '#barDemo2'}
        ]]
        ,page: true,
        where:{
            'isBind':'1'
        }
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
        }
    });
});*/


$('input').each(function () {
    $(this).mouseover(function () {
        var val = $(this).val()
        $(this).attr("title",val)
    })
})




//

$("button[name='pc_ex']").click(function () {
    var idlist = $('#test').bootstrapTable('getAllSelections');
    if(idlist.length<1){
       // alert("至少选择一条!");
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"<div>至少选择一条",

        };
        method.msg_layer(obj);
        return false;
    }
    for (var i = 0;i<idlist.length;i++){
        $("#pc_exForm").append("<input type='hidden' name='ids' value='"+idlist[i].id+"'>");
    }
    $("#pc_exForm").submit();
    $("#pc_exForm").html("");
})


$("button[name='phone_ex']").click(function () {
    var idlist = $('#test2').bootstrapTable('getAllSelections');
    if(idlist.length<1){
       // alert("至少选择一条!");
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"<div>至少选择一条",

        };
        method.msg_layer(obj);
        return false;
    }
    for (var i = 0;i<idlist.length;i++){
        $("#phone_exForm").append("<input type='hidden' name='ids' value='"+idlist[i].id+"'>");
    }
    $("#phone_exForm").submit();
    $("#phone_exForm").html("");
})


function getQuery() {
    var data = $("#formTestFilter").serializeObject();
    data['isBind'] = '1';
    data['isPasted'] = '0';
    return data;
}

function getPhoneQuery() {
    var data = $("#formTestFilter").serializeObject();
    data['isBind'] = '0';
    return data;
}


function addFunctionAlty(value, row, index) {
    var html=[]
    // $("#operatePCDiv").find("button").each(function(){
    //     console.log(this.outerHTML)
    //     html.push(this.outerHTML)
    // });
    html.push('<button id="bind" type="button" class="btn bg-yellow table-btn" onclick="printQrPc(&apos;'+row.id+'&apos;)">打印</button>')
        if(value == '1'){
            html.push('<button id="unbind" type="button" class="btn bg-yellow table-btn" onclick="confimPc(&apos;'+row.id+'&apos;)">确认贴标</button>');
        }

    html.push("<div id='pcDown1"+row.id+"' class='qrcodeCanvas' style='width: 300px;height: 100px;overflow:hidden;border: 1px solid #666666;margin: 10px'>" +
        "<div style='float: left;width: 200px;height: 100%'>" +
        "<p style='font-size: 12px;margin: 2px' name='textAssetId'>线缆编号："+row.assetId+"</p>" +
        "<p style='font-size: 12px;margin: 2px' name='textBarcode'>源端标签编号："+row.barcode1+"</p>" +
        "</div>" +
        "<div style='width: 98px;height: 98px;float: left' class='pcqrcode' id='pcQrcode1"+row.id+"' value='"+row.assetId+"'>" +
        "</div>" +
        "</div>");

    html.push("<div id='pcDown2"+row.id+"' class='qrcodeCanvas' style='width: 300px;height: 100px;overflow:hidden;border: 1px solid #666666;margin: 10px'>" +
        "<div style='float: left;width: 200px;height: 100%'>" +
        "<p style='font-size: 12px;margin: 2px' name='textAssetId'>线缆编号："+row.assetId+"</p>" +
        "<p style='font-size: 12px;margin: 2px' name='textBarcode'>宿端标签编号："+row.barcode2+"</p>" +
        "</div>" +
        "<div style='width: 98px;height: 98px;float: left' class='pcqrcode' id='pcQrcode2"+row.id+"' value='"+row.assetId+"'>" +
        "</div>" +
        "</div>");
    return html.join('');
}


function addPhoneFunctionAlty(value, row, index) {
    var html=[]
    // $("#operatePhoneDiv").find("button").each(function(){
    //     console.log(this.outerHTML)
    //     html.push(this.outerHTML)
    // });
    html.push('<button id="bind1" type="button" class="btn bg-yellow table-btn" onclick="printQrPhone(&apos;'+row.id+'&apos;)">打印</button>')
    html.push("<div id='pcDown1"+row.id+"' class='qrcodeCanvas' style='width: 300px;height: 100px;overflow:hidden;border: 1px solid #666666;margin: 10px'>" +
        "<div style='float: left;width: 200px;height: 100%'>" +
        "<p style='font-size: 12px;margin: 2px' name='textAssetId'>线缆编号："+row.assetId+"</p>" +
        "</div>" +
        "<div style='width: 98px;height: 98px;float: left' class='phoneQrcode' id='pcQrcode1"+row.id+"' value='"+row.assetId+"'>" +
        "</div>" +
        "</div>");

    html.push("<div id='pcDown2"+row.id+"' class='qrcodeCanvas' style='width: 300px;height: 100px;overflow:hidden;border: 1px solid #666666;margin: 10px'>" +
        "<div style='float: left;width: 200px;height: 100%'>" +
        "<p style='font-size: 12px;margin: 2px' name='textAssetId'>线缆编号："+row.assetId+"</p>" +
        "</div>" +
        "<div style='width: 98px;height: 98px;float: left' class='phoneQrcode' id='pcQrcode2"+row.id+"' value='"+row.assetId+"'>" +
        "</div>" +
        "</div>");
    return html.join('');
}

var columns =  [
    {checkbox: true,width: 40}
    , {field: 'assetId', title: '线缆编号'}
    , {field: 'cableType', title: '线缆分类',}
    , {field: 'serveInfo', title: '业务信息',}
    , {field: 'res1Name', title: '源端设备',}
    , {field: 'res2Name', title: '宿端设备',}
    , {field: 'barcode1', title: '源端标签编号'}
    , {field: 'barcode2', title: '宿端标签编号',}
    , {field: 'isPrinted', title: '状态',
        formatter: function (value, row, index) {
            if (value == '0') {
                return "未打印";
            } else if(value == '1') {
                return "已打印";
            }else{
                return "";
            }
        }
    }
    ,{field:'isPrinted', title: '操作',width:180,class:'active1',formatter: addFunctionAlty}
];
var data = [{
    assetId: 1,
    cableType: 'Item 1',
    serveInfo: '$1',
    res1Name: '$1',
    res2Name: '$1',
    barcode1: '$1',
    barcode2: '$1',
    isPrinted: '$1',

}, {
    assetId: 1,
    cableType: 'Item 1',
    serveInfo: '$1',
    res1Name: '$1',
    res2Name: '$1',
    barcode1: '$1',
    barcode2: '$1',
    isPrinted: '$1',

}]



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
$("#test2").on('load-success.bs.table',function () {

    $('.bootstrap-table tr td').each(function () {
        if($(this).hasClass("active1")){

        }else{
            $(this).attr("title", $(this).text());
            $(this).css("cursor", 'pointer');
        }
    });
})


var phoneColumns =  [
    {checkbox: true,width: 50}
    , {field: 'assetId', title: '线缆编号'}
    , {field: 'cableType', title: '线缆分类',}
    , {field: 'serveInfo', title: '业务信息'}
    , {field: 'res1Name', title: '源端设备'}
    , {field: 'res2Name', title: '宿端设备'}
    , {field: 'isPrinted', title: '状态',
        formatter: function (value, row, index) {
            if (value == '0') {
                return "未打印";
            } else if(value == '1') {
                return "已打印";
            }else{
                return "";
            }
        }
    }
    ,{field:'isPrinted', title: '操作', class:'active1',width:150,formatter: addPhoneFunctionAlty}
];



//pc打印
function printQrPc(val){
    $("#batch_print").html("");

    $("#batch_print").append($("#pcDown1"+val).prop("outerHTML")) ;
    $("#batch_print").append($("#pcDown2"+val).prop("outerHTML")) ;

    $("#batch_print").printThis({
        debug: false,
        importCSS: false,
        importStyle: false,
        printContainer: true,
        pageTitle: "二维码",
        removeInline: false,
        printDelay: 333,
        header: null,
        formValues: false
    });


    $.get(
        ctxPath +"cable/print",
        {'id':val},
        function(data){
            if(data.code == '0'){
                refreshfTable($("#test"),'1',getQuery());
            }
        }
    )
}

//pc确认
function confimPc(val){
    var obj={
        type:"showSweetAlert",
        title:"提示",
        content:"是否确认该设备已贴标?",
        btn:["关闭","确定"],
        callBack1:function () {
            console.log("取消")
        },
        callBack2:function () {
            $.get(
                ctxPath +"cable/confirm",
                {'id':val},
                function(data){
                    if(data.code == '0'){
                        refreshfTable($("#test"),'1',getQuery());
                        $('.msg-layer-bg').css('display','none')
                        $('.msg-layer').css('display','none')
                    }
                }
            )
        },
    };
    method.msg_layer(obj);

}

//线缆批量确认贴标完成
$("#batchConfirm").click(function () {

    var data=$('#test').bootstrapTable('getAllSelections');
    if(data==""){
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"请选择您要确认的数据！！",

        };
        method.msg_layer(obj);
        return false
    }
    var idList=[]
    for (var i = 0;i<data.length;i++){
        idList.push(data[i].id);
    }
    console.log(data[i]);
    var obj={
        type:"showSweetAlert",
        title:"提示",
        content:"是否确认选中的设备已贴标?",
        btn:["关闭","确定"],
        callBack1:function () {
            console.log("取消")
        },
        callBack2:function () {
            $.ajax({
                url: ctxPath +"cable/batchConfirm",
                type:'post',
                dataType:"json",
                contentType:"application/json", // 指定这个协议很重要
                data:JSON.stringify(idList), //只有这一个参数，json格式，后台解析为实体，后台可以直接用
                //这儿的三个参数其实就是XMLHttpRequest里面带的信息。
                success: function(data){
                    if(data.code = '0'){
                        refreshfTable($("#test"),'1',getQuery());
                        $('.msg-layer-bg').css('display','none')
                        $('.msg-layer').css('display','none')
                    }
                }
            })
        },
    };
    method.msg_layer(obj);

})

//手持机打印
function printQrPhone(val){
    $("#batch_print").html("");
    $("#batch_print").append($("#pcDown1"+val).prop("outerHTML")) ;
    $("#batch_print").append($("#pcDown2"+val).prop("outerHTML")) ;

    $("#batch_print").printThis({
        debug: false,
        importCSS: true,
        importStyle: false,
        printContainer: true,
        cache:true,
        pageTitle: "二维码",
        removeInline: false,
        printDelay: 333,
        header: null,
        formValues: false
    });


    $.get(
        ctxPath +"cable/print",
        {'id':val},
        function(data){
            if(data.code == '0'){
                refreshfTable($("#test2"),'1',getPhoneQuery());
            }
        }
    )

}

$(function () {
    $("button[name='pc_batch_print']").click(function () {
        $("#batch_print").html("");
        var idlist = $('#test').bootstrapTable('getAllSelections');
        var index = 0;
        var data =  [];
        if(idlist.length == 0){
           // alert("至少选择一条信息!");
            var obj={
                type:"showSweetAlert",
                title:"提示",
                content:"<div>至少选择一条信息",

            };
            method.msg_layer(obj);
            return false
        }
        for (var i = 0;i<idlist.length;i++){
            $("#batch_print").append($("#pcDown1"+idlist[i].id).prop("outerHTML")) ;
            $("#batch_print").append($("#pcDown2"+idlist[i].id).prop("outerHTML")) ;
            var obj = {'id':idlist[i].id};
            data.push(obj);
            index++;
        }
        $("#batch_print").printThis({
            debug: false,
            importCSS: false,
            importStyle: false,
            printContainer: true,
            pageTitle: "二维码",
            removeInline: false,
            printDelay: 333,
            header: null,
            formValues: false,
            doctypeString: '<!DOCTYPE html>'
        });




        $.ajax({
            url: ctxPath +"cable/batchPrint",
            type:'post',
            dataType:"json",
            contentType:"application/json", // 指定这个协议很重要
            data:JSON.stringify(data), //只有这一个参数，json格式，后台解析为实体，后台可以直接用
            //这儿的三个参数其实就是XMLHttpRequest里面带的信息。
            success: function(data){
                if(data.code = '0'){
                    refreshfTable($("#test"),'1',getQuery());
                }
            }
        })
    })


    $("button[name='phone_batch_print']").click(function () {
        $("#batch_print").html("");
        var idlist = $('#test2').bootstrapTable('getAllSelections');
        var index = 0;
        var data =  [];
        if(idlist.length == 0){
           // alert("至少选择一条信息!");
            var obj={
                type:"showSweetAlert",
                title:"提示",
                content:"<div>至少选择一条信息",

            };
            method.msg_layer(obj);
            return false
        }
        for (var i = 0;i<idlist.length;i++){
            $("#batch_print").append($("#pcDown1"+idlist[i].id).prop("outerHTML")) ;
            $("#batch_print").append($("#pcDown2"+idlist[i].id).prop("outerHTML")) ;
            var obj = {'id':idlist[i].id};
            data.push(obj);
            index++;
        }
        $("#batch_print").printThis({
            debug: false,
            importCSS: false,
            importStyle: false,
            printContainer: true,
            pageTitle: "二维码",
            removeInline: false,
            printDelay: 333,
            header: null,
            formValues: false,
            doctypeString: '<!DOCTYPE html>'
        });




        $.ajax({
            url: ctxPath +"cable/batchPrint",
            type:'post',
            dataType:"json",
            contentType:"application/json", // 指定这个协议很重要
            data:JSON.stringify(data), //只有这一个参数，json格式，后台解析为实体，后台可以直接用
            //这儿的三个参数其实就是XMLHttpRequest里面带的信息。
            success: function(data){
                if(data.code = '0'){
                    refreshfTable($("#test2"),'1',getPhoneQuery());
                }
            }
        })
    })

    
    $("button[name='search_btn']").click(function () {
        if($(".active").find("a").attr("href") == '#home'){
            refreshfTable($("#test"),'1',getQuery());
            $("button[name='close']").click();
        }else{
            refreshfTable($("#test2"),'1',getPhoneQuery());
            $("button[name='close']").click();
        }
    })


    loadOrg($("select[name='org1Id']"));
    loadOrg($("select[name='org2Id']"));

    $("#formTestFilter").find("select[name='org1Id']").change(function () {
        loadRoomSelect($("#formTestFilter").find(":input[name='room1Id']"),'',$(this).val());
    })
    $("#formTestFilter").find("select[name='org2Id']").change(function () {
        loadRoomSelect($("#formTestFilter").find(":input[name='room2Id']"),'',$(this).val());
    })
    $("#formTestFilter").find("select[name='room1Id']").change(function () {
        loadRackSelect($("#formTestFilter").find(":input[name='rack1Id']"),$(this).val());
    })
    $("#formTestFilter").find("select[name='room2Id']").change(function () {
        loadRackSelect($("#formTestFilter").find(":input[name='rack2Id']"), $(this).val());
    })
    $("#formTestFilter").find("select[name='rack1Id']").change(function () {
        loadDevSelect($("#formTestFilter").find("select[name='res1Id']"), $(this).val());
    });
    $("#formTestFilter").find("select[name='rack2Id']").change(function () {
        loadDevSelect($("#formTestFilter").find("select[name='res2Id']"), $(this).val());
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



    $('#test').on('load-success.bs.table', function (e, data) {
        $(".pcqrcode").each(function () {
            var qrcode = new QRCode(document.getElementById($(this).attr("id")), {
                text: $(this).attr("value"),
                width : 98,
                height : 98
            });
        })
    });

    loadTable($('#test'),columns,ctxPath + 'cable/getPage', getQuery());
    // loadTable($('#test'),columns,data, getQuery);


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



    $('#test2').on('load-success.bs.table', function (e, data) {
        $(".phoneQrcode").each(function () {
            var qrcode = new QRCode(document.getElementById($(this).attr("id")), {
                text: $(this).attr("value"),
                width : 98,
                height : 98
            });
        })
    });

    loadTable($('#test2'),phoneColumns,ctxPath + 'cable/getPage', getPhoneQuery());
    // loadTable($('#test2'),phoneColumns,data, getPhoneQuery);
})
