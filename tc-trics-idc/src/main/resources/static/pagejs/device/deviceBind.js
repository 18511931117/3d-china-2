//PC表格查询条件
function getQuery () {
    var data = $("#queryForm").serializeObject();
    var index = 0;
    $("#queryForm").find(".ext").each(function () {
        data['resExts[' + index +'].itemCode'] = $(this).attr("name");
        data['resExts[' + index +'].itemValue'] = $(this).val();
        index++;
    });
    data['isBind'] = '1';
    data['isPasted'] = '0';
    return data;
};

$('input').each(function () {
    $(this).mouseover(function () {
        var val = $(this).val()
        $(this).attr("title",val)
    })
})




//Phone查询条件
function getPhoneQuery () {
    var data = $("#queryForm").serializeObject();
    var index = 0;
    $("#queryForm").find(".ext").each(function () {
        data['resExts[' + index +'].itemCode'] = $(this).attr("name");
        data['resExts[' + index +'].itemValue'] = $(this).val();
        index++;
    });
    data['isBind'] = '0';
    return data;
};

//pc按钮字段
function addFunctionAlty(value, row, index) {
    var html=[]
    // $("#operatePCDiv").find("button").each(function(){
    //     console.log(this.outerHTML)
    //     html.push(this.outerHTML)
    // });
    html.push('<button id="bind" type="button" class="btn bg-yellow table-btn" onclick="printQrPc(&apos;'+row.id+'&apos;)">打印</button>')
    if(value == '1'){
        html.push('<button id="unbind" type="button"  class="btn bg-yellow table-btn" onclick="confimPc(&apos;'+row.id+'&apos;)">确认贴标</button>');
    }
    html.push("<div id='pcDown"+row.id+"' class='qrcodeCanvas' style='width: 300px;height: 100px;overflow:hidden;border: 1px solid #666666;margin: 10px'>" +
        "<div style='float: left;width: 200px;height: 100%'>" +
        "<p style='font-size: 12px;margin: 2px' name='textAssetId'>设备编号："+row.assetId+"</p>" +
        "<p style='font-size: 12px;margin: 2px' name='textName'>设备名称："+row.name+"</p>" +
        "<p style='font-size: 12px;margin: 2px' name='textBarcode'>标签编号："+row.barcode+"</p>" +
        "</div>" +
        "<div style='width: 98px;height: 98px;float: left' class='pcqrcode' id='pcQrcode"+row.id+"' value='"+row.assetId+"'>" +
        "</div>" +
        "</div>");
    return html.join('');
}

//phone按钮字段
function addPhoneFunctionAlty(value, row, index) {
    var html=[]
    // $("#operatePhoneDiv").find("button").each(function(){
    //     console.log(this.outerHTML)
    //     html.push(this.outerHTML)
    // });
    html.push('<button id="bind1"  type="button" class="btn bg-yellow table-btn" onclick="printQrPhone(&apos;'+row.id+'&apos;)">打印</button>')
    html.push("<div id='pcDown"+row.id+"' class='qrcodeCanvas' style='width: 300px;height: 100px;overflow:hidden;border: 1px solid #666666;margin: 10px'>" +
        "<div style='float: left;width: 200px;height: 100%'>" +
        "<p style='font-size: 12px;margin: 2px' name='textAssetId'>设备编号："+row.assetId+"</p>" +
        "<p style='font-size: 12px;margin: 2px' name='textName'>设备名称："+row.name+"</p>" +
        "</div>" +
        "<div style='width: 98px;height: 98px;float: left' class='phoneqrcode' id='pcQrcode"+row.id+"' value='"+row.assetId+"'>" +
        "</div>" +
        "</div>");
    return html.join('');
}


//pc字段
var columns = [
    {checkbox: true,width: 50}
    , {field: 'assetId', title: '资产编号'}
    , {field: 'name', title: '设备名称',}
    , {field: 'resTypeName', title: '设备分类'}
    , {field: 'roomName', title: '机房'}
    , {field: 'barcode', title: '标签编号'}
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
    ,{field:'isPrinted', title: '操作',class:"active1",formatter: addFunctionAlty,width:200}
];

//phone字段
var phoneColumns = [
    {checkbox: true,width: 50}
    , {field: 'assetId', title: '资产编号'}
    , {field: 'name', title: '设备名称',}
    , {field: 'resTypeName', title: '设备分类'}
    , {field: 'roomName', title: '机房'}
    , {field: 'isPrinted', title: '状态',
        formatter: function (value, row, index) {
            if (value == '0') {
                return "未打印";
            } else if('1') {
                return "已打印";
            }else{
                return "";
            }
        }
    }
    ,{field:'id', title: '操作' ,class:"active1",formatter: addPhoneFunctionAlty,width:200}
];




$(function () {
    $("button[name='pc_ex']").click(function () {
        var idlist = $('#pcTable').bootstrapTable('getAllSelections');
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
            console.log(idlist[i].id);
            $("#pc_exForm").append("<input type='hidden' name='ids' value='"+idlist[i].id+"'>");
        }
        $("#pc_exForm").submit();
        $("#pc_exForm").html("");
    })

    $("button[name='phone_ex']").click(function () {
        var idlist = $('#phoneTable').bootstrapTable('getAllSelections');
        if(idlist.length<1){
          //  alert("至少选择一条!");
            var obj={
                type:"showSweetAlert",
                title:"提示",
                content:"<div>至少选择一条",
            };
            method.msg_layer(obj);
            return false;
        }
        for (var i = 0;i<idlist.length;i++){
            console.log(idlist[i].id);
            $("#phone_exForm").append("<input type='hidden' name='ids' value='"+idlist[i].id+"'>");
        }
        $("#phone_exForm").submit();
        $("#phone_exForm").html("");
    })


    $("button[name='search_btn']").click(function () {
        if($(".active").find("a").attr("href") == '#home'){
            refreshfTable($("#pcTable"),'1',getQuery());
            $("button[name='close']").click();
        }else{
            refreshfTable($("#phoneTable"),'1',getPhoneQuery());
            $("button[name='close']").click();
        }
    })

    $.get(
        ctxPath +"resExtCfg/getList",
        {'resTypeCode':'DEV'},
        function(data){
            var ele = $("#queryRow");
            if(data.code == '0'){
                for(var i = 0 ;i<data.data.length;i++){
                    var obj = data.data[i];
                    var str = "";
                    if(obj.isQuery == '1'){
                        if(obj.valType == '6362335975393198082'){
                            str+= "<div class='form-group col-sm-2'>"+
                                "<label>"+obj.itemName+"</label>"+
                                "<div class='input-group date datetimepicker2' >"+
                                "<input type='text' class='form-control ext' name='"+obj.itemCode+"' title='"+obj.itemName+"' placeholder='YYYY-MM-DD'/>"+
                                "<span class='input-group-addon'>"+
                                "<span class='glyphicon glyphicon-calendar'></span>"+
                                "</span>"+
                                "</div>"+
                                "</div>";
                        }else{
                            str = "<div class='form-group col-sm-2 '>" +
                                "  <label class=''>"+obj.itemName+"</label>" +
                                "  <input type='text'  name='"+obj.itemCode+"' title="+obj.itemName+" class='form-control ext' lay-verify='title'  placeholder="+obj.itemName+">" +
                                "</div>";
                        }
                    }
                    ele.append(str);


                    $('.datetimepicker2').datetimepicker({

                        format: 'YYYY-MM-DD',

                        locale: moment.locale('zh-cn')

                    });
                }
            }
        })

    loadDevStatus($(":input[name='status']"))
    loadDevTypeSelect($("#queryForm").find(":input[name='resTypeCode']"));
    loadOrg($("#queryForm").find(":input[name='orgId']"));

    $("#queryForm").find(":input[name='orgId']").change(function () {
        loadRoomSelect($("#queryForm").find(":input[name='roomId']"),'',$(this).val());
    });


    $("#queryForm").find(":input[name='roomId']").change(function () {
        loadRackSelect($("#queryForm").find(":input[name='rackId']"),$(this).val());
    });


    $("#pcTable").on('load-success.bs.table',function () {

        $('.bootstrap-table tr td').each(function () {
            if($(this).hasClass("active1")){

            }else{
                $(this).attr("title", $(this).text());
                $(this).css("cursor", 'pointer');
            }
        });
    })


    $('#pcTable').on('load-success.bs.table', function (e, data) {
       $(".pcqrcode").each(function () {
           var qrcode = new QRCode(document.getElementById($(this).attr("id")), {
               text: $(this).attr("value"),
               width : 98,
               height : 98
           });
       })
    });


    loadTable($('#pcTable'),columns,ctxPath+'device/getDevicePage', getQuery());

    $("#pcTable").on('post-body.bs.table',function(data){
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


    $('#phoneTable').on('load-success.bs.table', function (e, data) {
        $(".phoneqrcode").each(function () {
            //alert($(this).attr("value"));
            var qrcode = new QRCode(document.getElementById($(this).attr("id")), {
                text: $(this).attr("value"),
                width : 98,
                height : 98
            });
        })
    });





    loadTable($('#phoneTable'),phoneColumns,ctxPath+'device/getDevicePage', getPhoneQuery(),);

    $("#phoneTable").on('load-success.bs.table',function () {
        $('.bootstrap-table tr td').each(function () {
            if($(this).hasClass("active1")){

            }else{
                $(this).attr("title", $(this).text());
                $(this).css("cursor", 'pointer');
            }
        });
    })

    $("#phoneTable").on('post-body.bs.table',function(data){
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


    $("button[name='pc_batch_print']").click(function () {
        $("#batch_print").html("");
        var idlist = $('#pcTable').bootstrapTable('getAllSelections');
        var index = 0;
        var data =  [];
        if(idlist.length == 0){
          //  alert("至少选择一条信息!");
            var obj={
                type:"showSweetAlert",
                title:"提示",
                content:"<div>至少选择一条信息",

            };
            method.msg_layer(obj);
            return false
        }
        //$("#batch_print").append("<table>") ;
        for (var i = 0;i<idlist.length;i++){

            $("#batch_print").append($(""+"#pcDown"+idlist[i].id).prop("outerHTML")+"") ;
            //$("#batch_print").append("<div style='page-break-after:always;'></div>");
            var obj = {'id':idlist[i].id};
            data.push(obj);
            index++;
        }
       // $("#batch_print").append("</table>") ;
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
        /*$("#batch_print").jqprint({
            debug:false,
            importCSS:true,
            printContainer:true,
            operaSupport:false
        });*/




        $.ajax({
            url: ctxPath +"device/batchPrint",
            type:'post',
            dataType:"json",
            contentType:"application/json", // 指定这个协议很重要
            data:JSON.stringify(data), //只有这一个参数，json格式，后台解析为实体，后台可以直接用
            //这儿的三个参数其实就是XMLHttpRequest里面带的信息。
            success: function(data){
                if(data.code = '0'){
                    refreshfTable($("#pcTable"),'1',getQuery());
                }
            }
        })
    })


    $("button[name='phone_batch_print']").click(function () {
        $("#batch_print").html("");
        var idlist = $('#phoneTable').bootstrapTable('getAllSelections');
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
            $("#batch_print").append($("#pcDown"+idlist[i].id).prop("outerHTML")) ;
            //$("#batch_print").append("<div style='page-break-after:always;'></div>") ;
            var obj = {'id':idlist[i].id};
            data.push(obj);
            index++;
        }
        //$("#batch_print").jqprint();
        //$("#batch_print").html("");
        //Print("#batch_print");
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
        //$("#batch_print").html("");

        $.ajax({
            url: ctxPath +"device/batchPrint",
            type:'post',
            dataType:"json",
            contentType:"application/json", // 指定这个协议很重要
            data:JSON.stringify(data), //只有这一个参数，json格式，后台解析为实体，后台可以直接用
            //这儿的三个参数其实就是XMLHttpRequest里面带的信息。
            success: function(data){
                if(data.code = '0'){
                    refreshfTable($("#phoneTable"),'1',getPhoneQuery());
                }
            }
        })
    })


    $("button[name='pc_batch_confim']").click(function () {
        var idlist = $('#pcTable').bootstrapTable('getAllSelections');
        var index = 0;
        var data =  [];
        if(idlist.length == 0){
           // alert("至少选择一条信息!");
            var obj={
                type:"showSweetAlert",
                title:"提示",
                content:"<div>至少选择一条信息",
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
            return false
        }
        for (var i = 0;i<idlist.length;i++){
            var obj = {'id':idlist[i].id};
            data.push(obj);
            index++;
        }


        $.ajax({
            url: ctxPath +"device/batchConfirm",
            type:'post',
            dataType:"json",
            contentType:"application/json", // 指定这个协议很重要
            data:JSON.stringify(data), //只有这一个参数，json格式，后台解析为实体，后台可以直接用
            //这儿的三个参数其实就是XMLHttpRequest里面带的信息。
            success: function(data){
                if(data.code = '0'){
                    refreshfTable($("#pcTable"),'1',getQuery());
                }
            }
        })
    })
})



function printQrPc(val){

   /* $("#pcDown"+val).jqprint({
        debug:false,
        importCSS:true,
        printContainer:true,
        operaSupport:false
    });*/

    $("#pcDown"+val).printThis({
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
        ctxPath +"device/print",
        {'id':val},
        function(data){
            if(data.code == '0'){
                refreshfTable($("#pcTable"),'1',getQuery());
            }
        }
    )
}




function printQrPhone(val){

    $("#pcDown"+val).printThis({
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
        ctxPath +"device/print",
        {'id':val},
        function(data){
            if(data.code == '0'){
                refreshfTable($("#phoneTable"),'1',getPhoneQuery());
            }
        }
    )
}


function confimPc(val){

    // if(confirm("是否确认该设备已贴标?")){
    var obj={
        type:"showSweetAlert",
        title:"提示",
        content:"<div>是否确认该设备已贴标",
        btn:["关闭","确定"],
        callBack1:function () {

        },
        callBack2:function () {
            // console.log("确定")
            $.get(
                ctxPath +"device/confirm",
                {'id':val},
                function(data){
                    if(data.code == '0'){
                        refreshfTable($("#pcTable"),'1',getQuery());
                    }
                }
            )
            $('.msg-layer-bg').css('display','none')
            $('.msg-layer').css('display','none')
        },
    };
    method.msg_layer(obj);



    // }

}