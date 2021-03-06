

$('input').each(function () {
    $(this).mouseover(function () {
        var val = $(this).val()
        $(this).attr("title",val)
    })
})




window.operateEvents = {
    // 盘点任务详情
    'click #bind': function (e, value, row, index) {
        window.location.href = ctxPath+"checkTask/toDesc?id="+row.id
    },
    // 盘点任务撤销
    'click #unbind': function (e, value, row, index) {
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"是否确认撤销此任务?",
            btn:["关闭","确定"],
            callBack1:function () {
                console.log("取消")
            },
            callBack2:function () {
                $.ajax({
                    url:  "/checkTask/delete",
                    type: "POST",
                    data:{
                        id:row.id
                    },
                    cache:false,
                    dataType: "json",
                    success: function(data){
                        var obj={
                            type:"showSweetAlert",
                            title:"提示",
                            content:data.message,
                        };
                        method.msg_layer(obj);
                        //layer.msg(data.message);
                        if(data.code=="0"){
                            setTimeout(window.location.href=ctxPath+'checkTask', 1500);
                        }
                    },
                    error:function(err){
                        //  alert("服务器内部错误！");
                        var obj={
                            type:"showSweetAlert",
                            title:"提示",
                            content:"服务器内部错误",
                        };
                        method.msg_layer(obj);
                    }
                });
                $('.msg-layer-bg').css('display','none')
                $('.msg-layer').css('display','none')
            },
        };
        method.msg_layer(obj);

    },'click #bindStart': function (e, value, row, index) {
        $.ajax({
            url:  "/checkTask/updateState",
            type: "POST",
            data:{
                id:row.id,
                state:1
            },
            cache:false,
            dataType: "json",
            success: function(data){
               // alert(data.message);
                var obj={
                    type:"showSweetAlert",
                    title:"提示",
                    content:data.message,
                };
                method.msg_layer(obj);
                //layer.msg(data.message);
                if(data.code=="0"){
                    setTimeout(window.location.href=ctxPath+'checkTask', 1500);
                }
            },
            error:function(err){
               // alert("服务器内部错误！");
                var obj={
                    type:"showSweetAlert",
                    title:"提示",
                    content:"<div>服务器内部错误",
                };
                method.msg_layer(obj);
                //layer.msg("服务器内部错误！")
            }
        });
    }
    ,'click #bindSuccess': function (e, value, row, index) {
        $.ajax({
            url:  "/checkTask/updateState",
            type: "POST",
            data:{
                id:row.id,
                state:3
            },
            cache:false,
            dataType: "json",
            success: function(data){
               // alert(data.message);
                var obj={
                    type:"showSweetAlert",
                    title:"提示",
                    content:data.message,
                };
                method.msg_layer(obj);
                //layer.msg(data.message);
                if(data.code=="0"){
                    setTimeout(window.location.href=ctxPath+'checkTask', 1500);
                }
            },
            error:function(err){
               // alert("服务器内部错误！");
                var obj={
                    type:"showSweetAlert",
                    title:"提示",
                    content:"服务器内部错误",

                };
                method.msg_layer(obj);
                //layer.msg("服务器内部错误！")
            }
        });
    }
    ,'click #success': function (e, value, row, index) {
        $.ajax({
            url:  "/checkTask/updateState",
            type: "POST",
            data:{
                id:row.id,
                state:2
            },
            cache:false,
            dataType: "json",
            success: function(data){
               // alert(data.message);
                //layer.msg(data.message);
                var obj={
                    type:"showSweetAlert",
                    title:"提示",
                    content:data.message,

                };
                method.msg_layer(obj);
                if(data.code=="0"){
                    setTimeout(window.location.href=ctxPath+'checkTask', 1500);
                }
            },
            error:function(err){
               // alert("服务器内部错误！");
                //layer.msg("服务器内部错误！")
                var obj={
                    type:"showSweetAlert",
                    title:"提示",
                    content:"<div>服务器内部错误",
                };
                method.msg_layer(obj);
            }
        });
    }
};

function addFunctionAlty(value, row, index) {
    var html=[]
    $("#operateDiv").find("button").each(function(){
        console.log(this.outerHTML)
        html.push(this.outerHTML)
    });
    if(row.state==1){
        html.push('<button id="bindSuccess" type="button" class="btn bg-yellow table-btn">确认提交</button>')
    }else if(row.state==0){
        html.push('<button id="bindStart" type="button" class="btn bg-yellow table-btn">开始执行</button>')
    }else if(row.state==3){
        html.push('<button id="success" type="button" class="btn bg-yellow table-btn">已确认</button>')
    }

    return html.join('');
}

$('#test').bootstrapTable({
    url: ctxPath+'checkTask/getPage',
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
    pageList: [10, 20, 50, 100],//设置每页显示的数量
    paginationPreText:"上一页",
    paginationNextText:"下一页",
    paginationLoop:false,
    onLoadSuccess:function(){
        //鼠标悬停显示全部内容~
        $('.bootstrap-table tr td').each(function () {
            if($(this).hasClass("active1")){

            }else{
                $(this).attr("title", $(this).text());
                $(this).css("cursor", 'pointer');
            }
        });
    },
    //得到查询的参数
    queryParams : function (params) {
        //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
        var temp = {
            limit: params.limit,                         //页面大小
            page: (params.offset / params.limit) + 1,   //页码
            sort: params.sort,      //排序列名
            sortOrder: params.order, //排位命令（desc，asc）
            name: $("#queryTaskName").val(),
            state:$("#state option:selected").val()
        };
        return temp;
    },


    columns:
        [{checkbox: true,width: 50}
            ,{field:'name',title: '任务名称', }
            ,{field:'taskType', title: '任务类型',formatter:function (value, row, index) {
                var state=row.taskType;  //1-设备贴标,2-设备盘点,3-设备调拨,4-设备借用,5-设备维修
                    switch (state) {
                        case 1:
                            return"设备贴标"
                        case 2:
                            return "设备盘点"
                        case 3:
                            return "设备调拨"
                        case 4:
                            return "设备借用"
                        case 5:
                            return "设备维修"
                    }
            }}
            ,{field:'state', title: '任务状态', formatter:function (value, row, index) {
                var state=row.state;  //0-待执行,2-执行中,8-执行完毕
                    switch (state) {
                        case 0:
                            return"待执行"
                        case 1:
                            return "进行中"
                        case 2:
                            return "已完成"
                        case 3:
                            return "待确认"
                    }
            }}
            ,{field:'orgName', title: '所属机构'}
            ,{field:'remark', title: '备注',} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
            ,{field:'barcode', title: '操作',events: operateEvents,class:'active1',formatter: addFunctionAlty,width:255}//表格中增加按钮
        ]
});
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
    $("#queryTask").on("click",function () {
        $("#test").bootstrapTable("refresh", {
            silent: true //静态刷新
        });
    })

//新建任务
$("#myModal").on("show.bs.modal",function(){
    // $("#startRoomNone").hide()
    // //加载组织机构
    // // loadOrg($(":input[name='loadOrg']"));
    loadCurrentUser("loadUser")
    loadRegione("region",'')


})
//部门   url: ctxPath + /org/getPage
//机房   url: ctxPath + /room/getPage
//设备   url: ctxPath + 'device/getDevicePage',

function addFunctionAlty1(value, row, index) {
    return [
        '<button id="bind" type="button" class="btn bg-yellow"  onclick="infoModel(&apos;'+value+'&apos;)">详情</button>',
    ];
}

function addFunctionAlty2(value, row, index) {
    return [
        '<button id="bind" type="button" class="btn bg-yellow"  onclick="infoModel2(&apos;'+value+'&apos;)">详情</button>',
    ];
}
function infoModel2(value) {
    $('#myModal5').modal('show')
    initTest6(value)
}


function infoModel(value) {
    $('#myModal6').modal('show')
    initTest7(value)

}


function role(){
    var orgId =$("#loadOrg option:selected").val();

    if(orgId == '0'){
        $('.test2').css("display",'none')
        $('.department-table').css("display",'none')
        $('.jifang-table').css('display','none')
    }else if(orgId == '1'){
        $('.test2').css("display",'block')
        $('.department-table').css("display",'none')
        $('.jifang-table').css('display','none')
        $('#test2').bootstrapTable({
            // url: ctxPath+'device/getDevicePage',
            method: 'GET',
            uniqueId: 'id',                        // 绑定ID，不显示
            striped: false,                         //是否显示行间隔色
            cache: false,                          //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
            sortable: true,                        //是否启用排序
            sidePagination: "server",              //分页方式：client客户端分页，server服务端分页（*）
            undefinedText: '--',
            strictSearch: true,
            clickToSelect: true,                   // 点击选中行
            // pagination: true,                      //是否显示分页
            pageNumber:1,                          //初始化加载第一页，默认第一页,并记录
            pageSize:10,//每页显示的数量
            // pageList: [100, 300, 500,1000],//设置每页显示的数量
            paginationPreText:"上一页",
            paginationNextText:"下一页",
            paginationLoop:false,
            onLoadSuccess:function(){
                //鼠标悬停显示全部内容~
                $('.bootstrap-table tr td').each(function () {
                    if($(this).hasClass("active1")){

                    }else{
                        $(this).attr("title", $(this).text());
                        $(this).css("cursor", 'pointer');
                    }
                });
            },
            //得到查询的参数
            queryParams : function (params) {
                //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
                var temp = {
                    limit: params.limit,                         //页面大小
                    page: (params.offset / params.limit) + 1,   //页码
                    sort: params.sort,      //排序列名
                    sortOrder: params.order, //排位命令（desc，asc）
                    name: $("#queryTaskName").val(),
                    state:$("#state option:selected").val()
                };
                return temp;
            },
            columns:
                [{checkbox: true,width: 40}
                    ,{field:'name',title: '设备名称',formatter:function (value,row,index) {
                        var values=row.name;
                        if(values==undefined){
                            values='--'
                        }
                        var span=document.createElement('span');
                        span.setAttribute('title',values);
                        span.innerHTML = values;
                        return span.outerHTML;
                    }}
                    ,{field:'resTypeName', title: '设备分类',formatter:function (value,row,index) {
                        var values=row.resTypeName;
                        if(values==undefined){
                            values='--'
                        }
                        var span=document.createElement('span');
                        span.setAttribute('title',values);
                        span.innerHTML = values;
                        return span.outerHTML;
                    }}
                    ,{field:'roomName', title: '机房', formatter:function (value,row,index) {
                        var values=row.roomName;
                        if(values==undefined){
                            values='--'
                        }
                        var span=document.createElement('span');
                        span.setAttribute('title',values);
                        span.innerHTML = values;
                        return span.outerHTML;
                    }}
                    ,{field:'rackName', title: '机架',formatter:function (value,row,index) {
                        var values=row.rackName;
                        if(values==undefined){
                            values='--'
                        }
                        var span=document.createElement('span');
                        span.setAttribute('title',values);
                        span.innerHTML = values;
                        return span.outerHTML;
                    }}
                    ,{field:'sheft', title: '机位',formatter:function (value,row,index) {
                        var values=row.sheft;
                        if(values==undefined){
                            values='--'
                        }
                        var span=document.createElement('span');
                        span.setAttribute('title',values);
                        span.innerHTML = values;
                        return span.outerHTML;
                    }} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
                    ,{field:'owner', title: '所有人',formatter:function (value,row,index) {
                        var values=row.owner;
                        if(values==undefined){
                            values='--'
                        }
                        var span=document.createElement('span');
                        span.setAttribute('title',values);
                        span.innerHTML = values;
                        return span.outerHTML;
                    }}
                    ,{field:'status', title: '显示状态',formatter:function (value,row,index) {
                        var state=row.status;  //1-设备贴标,2-设备盘点,3-设备调拨,4-设备借用,5-设备维修
                        switch (state) {
                            case "0":
                                return"初始"
                            case "1":
                                return "在线"
                            case "2":
                                return "故障"
                            case "3":
                                return "调拨中"
                            case "4":
                                return "维修中"
                            case "5":
                                return "借用中"
                            case "6":
                                return "报废"
                            case "7":
                                return "盘点"
                        }
                    }
                }
                    ,{field:'barcode', title: '标签编号',formatter:function (value,row,index) {
                        var values=row.barcode;
                        if(values==undefined){
                            values='--'
                        }
                        var span=document.createElement('span');
                        span.setAttribute('title',values);
                        span.innerHTML = values;
                        return span.outerHTML;
                    }}
                ]
        });
        $("#btn").text("添加设备");
    }else if(orgId == "2"){

        $('.test2').css("display",'none')
        $('.jifang-table').css('display','none')
        $('.department-table').css("display",'block')
        $('#department-table').bootstrapTable({
            // url: ctxPath+'device/getDevicePage',
            method: 'GET',
            uniqueId: 'id',                        // 绑定ID，不显示
            striped: false,                         //是否显示行间隔色
            cache: false,                          //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
            sortable: true,                        //是否启用排序
            sidePagination: "server",              //分页方式：client客户端分页，server服务端分页（*）
            undefinedText: '--',
            strictSearch: true,
            clickToSelect: true,                   // 点击选中行
            // pagination: true,                      //是否显示分页
            pageNumber:1,                          //初始化加载第一页，默认第一页,并记录
            pageSize:10,//每页显示的数量
            // pageList: [100, 300, 500,1000],//设置每页显示的数量
            paginationPreText:"上一页",
            paginationNextText:"下一页",
            paginationLoop:false,
            onLoadSuccess:function(){
                //鼠标悬停显示全部内容~
                $('.bootstrap-table tr td').each(function () {
                    if($(this).hasClass("active1")){

                    }else{
                        $(this).attr("title", $(this).text());
                        $(this).css("cursor", 'pointer');
                    }
                });
            },
            //得到查询的参数
            queryParams : function (params) {
                //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
                var temp = {
                    limit: params.limit,                         //页面大小
                    page: (params.offset / params.limit) + 1,   //页码
                    sort: params.sort,      //排序列名
                    sortOrder: params.order, //排位命令（desc，asc）
                    name: $("#queryTaskName").val(),
                    state:$("#state option:selected").val()
                };
                return temp;
            },
            columns:
                [{checkbox: true,width: 50}
                    ,{field:'name',title: '机构名称',formatter:function (value,row,index) {
                        var values=value;
                        if(values==undefined){
                            values='--'
                        }
                        var span=document.createElement('span');
                        span.setAttribute('title',values);
                        span.innerHTML = values;
                        return span.outerHTML;
                    } }
                    ,{field:'fullCode', title: '机构编码',formatter:function (value,row,index) {
                        var values=row.fullCode;
                        if(values==undefined){
                            values='--'
                        }
                        var span=document.createElement('span');
                        span.setAttribute('title',values);
                        span.innerHTML = values;
                        return span.outerHTML;
                    } }
                    ,{field:'level', title: '机构等级', formatter:function (value,row,index) {
                        var values=row.level;
                        if(values==undefined){
                            values='--'
                        }
                        var span=document.createElement('span');
                        span.setAttribute('title',values);
                        span.innerHTML = values;
                        return span.outerHTML;
                    } }
                    ,{field:'regionName', title: '所属区域 ',formatter:function (value,row,index) {
                        var values=row.regionName;
                        if(values==undefined){
                            values='--'
                        }
                        var span=document.createElement('span');
                        span.setAttribute('title',values);
                        span.innerHTML = values;
                        return span.outerHTML;
                    } }
                    ,{field:'id',title:'操作', class:'active1',formatter: addFunctionAlty1}
                ]
        });
        $("#btn").text("添加机构");
    }else if(orgId == "3"){
        $('.test2').css("display",'none')
        $('.department-table').css("display",'none')
        $('.jifang-table').css('display','block')
        $('#jifang-table').bootstrapTable({
            // url: ctxPath+'device/getDevicePage',
            method: 'GET',
            uniqueId: 'id',                        // 绑定ID，不显示
            striped: false,                         //是否显示行间隔色
            cache: false,                          //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
            sortable: true,                        //是否启用排序
            sidePagination: "server",              //分页方式：client客户端分页，server服务端分页（*）
            undefinedText: '--',
            strictSearch: true,
            clickToSelect: true,                   // 点击选中行
            // pagination: true,                      //是否显示分页
            pageNumber:1,                          //初始化加载第一页，默认第一页,并记录
            pageSize:10,//每页显示的数量
            // pageList: [100, 300, 500,1000],//设置每页显示的数量
            paginationPreText:"上一页",
            paginationNextText:"下一页",
            paginationLoop:false,
            onLoadSuccess:function(){
                //鼠标悬停显示全部内容~
                $('.bootstrap-table tr td').each(function () {
                    if($(this).hasClass("active1")){

                    }else{
                        $(this).attr("title", $(this).text());
                        $(this).css("cursor", 'pointer');
                    }
                });
            },
            //得到查询的参数
            queryParams : function (params) {
                //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
                var temp = {
                    limit: params.limit,                         //页面大小
                    page: (params.offset / params.limit) + 1,   //页码
                    sort: params.sort,      //排序列名
                    sortOrder: params.order, //排位命令（desc，asc）
                    name: $("#queryTaskName").val(),
                    state:$("#state option:selected").val()
                };
                return temp;
            },
            columns:
                [{checkbox: true,width: 50}
                    ,{field:'name',title: '机房名称',formatter:function (value,row,index) {
                        var values=row.name;
                        if(values==undefined){
                            values='--'
                        }
                        var span=document.createElement('span');
                        span.setAttribute('title',values);
                        span.innerHTML = values;
                        return span.outerHTML;
                    } }
                    ,{field:'domain', title: '绑定域名',formatter:function (value,row,index) {
                        var values=row.domain;
                        if(values==undefined){
                            values='--'
                        }
                        var span=document.createElement('span');
                        span.setAttribute('title',values);
                        span.innerHTML = values;
                        return span.outerHTML;
                    }}
                    ,{field:'orgName', title: '所属机构', formatter:function (value,row,index) {
                        var values=row.orgName;
                        if(values==undefined){
                            values='--'
                        }
                        var span=document.createElement('span');
                        span.setAttribute('title',values);
                        span.innerHTML = values;
                        return span.outerHTML;
                    }}
                    ,{field:'id',title:'操作',class:"active1",formatter: addFunctionAlty2}
                ]
        });
        $("#btn").text("添加机房");
    }
}
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

var numsId = []
function initTest6(roomId){
    $("#test6").bootstrapTable('destroy');
    $('#test6').bootstrapTable({
        url: ctxPath+'device/getDevicePage?roomId='+roomId,
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
        pageList: [100, 300, 500,1000],//设置每页显示的数量
        paginationPreText:"上一页",
        paginationNextText:"下一页",
        paginationLoop:false,
        onLoadSuccess:function(){
            //鼠标悬停显示全部内容~
            $('.bootstrap-table tr td').each(function () {
                if($(this).hasClass("active1")){

                }else{
                    $(this).attr("title", $(this).text());
                    $(this).css("cursor", 'pointer');
                }
            });
        },
        //得到查询的参数
        queryParams : function (params) {
            //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
            var temp = {
                limit: params.limit,                         //页面大小
                page: (params.offset / params.limit) + 1,   //页码
                sort: params.sort,      //排序列名
                sortOrder: params.order, //排位命令（desc，asc）
                name: $("#queryTaskName").val(),
                state:$("#state option:selected").val()
            };
            return temp;
        },
        columns: [{checkbox: true,checked: true,width: 50,formatter:stateFormatter}
            ,{field:'name',title: '设备名称', }
            ,{field:'resTypeName', title: '设备分类'}
            ,{field:'roomName', title: '机房', }
            ,{field:'rackName', title: '机架'}
            ,{field:'sheft', title: '机位',} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
            ,{field:'owner', title: '所有人', }
            , {field: 'status', title: '设备状态', formatter:function (value, row, index) {
                    var state=row.status;  //1-设备贴标,2-设备盘点,3-设备调拨,4-设备借用,5-设备维修
                    switch (state) {
                        case "0":
                            return"初始"
                        case "1":
                            return "在线"
                        case "2":
                            return "故障"
                        case "3":
                            return "调拨中"
                        case "4":
                            return "维修中"
                        case "5":
                            return "借用中"
                        case "6":
                            return "报废"
                        case "7":
                            return "盘点"
                    }
                }}
            ,{field:'barcode', title: '标签编号',}
        ],

        onUncheck:function (row,tr,field,$element) {

            numsId.push(row.id)
            console.log(numsId)
        },
        onCheck:function (row,tr,field,$element) {
            for(var i = 0;i<numsId.length;i++){
                if(numsId[i] == row.id){
                    numsId.splice(i,1)
                }
            }
            console.log(numsId)
        }


    });
}



var numsId2 = []
function initTest7(orgId){
    $("#test7").bootstrapTable('destroy');
    $('#test7').bootstrapTable({
        url: ctxPath+'device/getDevicePage?orgId='+orgId,
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
        pageList: [100, 300, 500,1000],//设置每页显示的数量
        paginationPreText:"上一页",
        paginationNextText:"下一页",
        paginationLoop:false,
        onLoadSuccess:function(){
            //鼠标悬停显示全部内容~
            $('.bootstrap-table tr td').each(function () {
                if($(this).hasClass("active1")){

                }else{
                    $(this).attr("title", $(this).text());
                    $(this).css("cursor", 'pointer');
                }
            });
        },
        //得到查询的参数
        queryParams : function (params) {
            //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
            var temp = {
                limit: params.limit,                         //页面大小
                page: (params.offset / params.limit) + 1,   //页码
                sort: params.sort,      //排序列名
                sortOrder: params.order, //排位命令（desc，asc）
                name: $("#queryTaskName").val(),
                state:$("#state option:selected").val()
            };
            return temp;
        },
        columns: [{checkbox: true,checked: true,width: 50,formatter:stateFormatter2}
            ,{field:'name',title: '设备名称', }
            ,{field:'resTypeName', title: '设备分类'}
            ,{field:'roomName', title: '机房', }
            ,{field:'rackName', title: '机架'}
            ,{field:'sheft', title: '机位',} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
            ,{field:'owner', title: '所有人', }
            , {field: 'status', title: '设备状态', formatter:function (value, row, index) {
                    var state=row.status;  //1-设备贴标,2-设备盘点,3-设备调拨,4-设备借用,5-设备维修
                    switch (state) {
                        case "0":
                            return"初始"
                        case "1":
                            return "在线"
                        case "2":
                            return "故障"
                        case "3":
                            return "调拨中"
                        case "4":
                            return "维修中"
                        case "5":
                            return "借用中"
                        case "6":
                            return "报废"
                        case "7":
                            return "盘点"
                    }
                }}
            ,{field:'barcode', title: '标签编号',}
        ],

        onUncheck:function (row,tr,field,$element) {
            numsId2.push(row.id)
        },
        onCheck:function (row,tr,field,$element) {
            for(var i = 0;i<numsId.length;i++){
                if(numsId2[i] == row.id){
                    numsId2.splice(i,1)
                }
            }
            console.log(numsId2)
        },

    });
}



 function stateFormatter2(value, row, index){
     if($.inArray(row.id,Array.from(numsId2)) != -1){ //需要转为数组
         return {
             checked:false//存在则选中
         }
     }else if (row.status=='0'){
         return {
             disabled : true,
             checked: false//设置不选中
         }
     }else{
         return {
             checked: true//设置选中
         }
     }

 }
function stateFormatter(value, row, index){
    if($.inArray(row.id,Array.from(numsId)) != -1){ //需要转为数组
        return {
            checked:false//存在则选中
        }
    }else if (row.status=='0'){
        return {
            disabled : true,
            checked: false//设置不选中
        }
    }else{
        return {
            checked: true//设置选中
        }
    }

}



$("#myModal").on("show.bs.modal",function(){
    $("#test2").bootstrapTable("removeAll"); //清空添加任务的设备列表


})
//点击添加设备
$("#addDevice").on("click",function(){
    //校验组织机构是否选中
    var startOrgId =$("#loadOrg option:selected").val();
    console.log(startOrgId)
    if(startOrgId == ""){
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"<div>请选择盘点任务类型..",
        };
        method.msg_layer(obj);
        return
    }else if(startOrgId == "1"){
        $("#myModal2").modal('show');
        initTable()
    }else if(startOrgId == "2"){
        $("#myModal3").modal('show');
        initTable2()
    }else if(startOrgId == "3"){
        $("#myModal4").modal('show');
        initTable3()
    }


    $("#test3").bootstrapTable("removeAll"); //清空添加任务的设备列表
  //  $("#myModal2").modal('show');
    loadDevStatus($('#status'),'')  //加载设备状态
    loadDevTypeSelect($("#resTypeCode1"),'')
    // $("#roomId").val(startRoomId) //机房默认选中
    // loadDevStatus('devStatus')  //加载设备状态
    // loadDevTypeSelect($(":input[name=resTypeSelect]"))
    // $("#roomId").val(startRoomId) //机房默认选中

})


// 关闭重置
$('#myModal2').on('hidden.bs.modal', function () {
    var data = $("#test3").bootstrapTable("getAllSelections");
    var allTableData = $("#test2").bootstrapTable('getData');//获取table选中
    for (var j = 0; j < data.length; j++) {
        for (var i = 0; i < allTableData.length; i++) {
            console.log(data[j].id)
            if (allTableData[i].id == data[j].id) {
                console.log(data[j].name)
                data.splice(j, 1);
            }
        }
    }
    if (data.length > 0) {
        $("#test2").bootstrapTable("append", data);
    }
    $("#test2").bootstrapTable("checkAll");
});




$('#myModal3').on('hidden.bs.modal', function () {
    var data = $("#test4").bootstrapTable("getAllSelections");
    var allTableData = $("#department-table").bootstrapTable('getData');//获取table选中
    for (var j = 0; j < data.length; j++) {
        for (var i = 0; i < allTableData.length; i++) {
            console.log(data[j].id)
            if (allTableData[i].id == data[j].id) {
                console.log(data[j].name)
                data.splice(j, 1);
            }
        }
    }
    if (data.length > 0) {
        $("#department-table").bootstrapTable("append", data);
    }
    console.log(data);
    $("#department-table").bootstrapTable("checkAll");
});

$('#myModal4').on('hidden.bs.modal', function () {
    var data = $("#test5").bootstrapTable("getAllSelections");
    var allTableData = $("#jifang-table").bootstrapTable('getData');//获取table选中
    for (var j = 0; j < data.length; j++) {
        for (var i = 0; i < allTableData.length; i++) {
            console.log(data[j].id)
            if (allTableData[i].id == data[j].id) {
                console.log(data[j].name)
                data.splice(j, 1);
            }
        }
    }
    if (data.length > 0) {
        $("#jifang-table").bootstrapTable("append", data);
    }
    $("#jifang-table").bootstrapTable("checkAll");
});



    //批量删除
$("#batchDel").on("click",function () {
    var checkTaskType =$("#loadOrg option:selected").val();
    if (checkTaskType==1){
        delDevice()
    }else if(checkTaskType==2){
        delOrg()
    }else if(checkTaskType==3){
        delRoom()
    }

});
function delDevice() {
    var data = $("#test2").bootstrapTable("getAllSelections");
    if (data==""){
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:'至少选择一条删除的信息',
        };
        method.msg_layer(obj);
        return
    }
    var names = []
    for (var i = 0; i < data.length; i++) {
        names.push(data[i].id)
    }
    console.log(names)
    $("#test2").bootstrapTable('remove', {
        field: 'id',
        values: names
    });
}
function delOrg() {
    var data = $("#department-table").bootstrapTable("getAllSelections");
    if (data==""){
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:'至少选择一条删除的信息',
        };
        method.msg_layer(obj);
        return
    }
    var names = []
    for (var i = 0; i < data.length; i++) {
        names.push(data[i].id)
    }
    console.log(names)
    $("#department-table").bootstrapTable('remove', {
        field: 'id',
        values: names
    });
}
function delRoom() {
    var data = $("#jifang-table").bootstrapTable("getAllSelections");
    if (data==""){
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:'至少选择一条删除的信息',
        };
        method.msg_layer(obj);
        return
    }
    var names = []
    for (var i = 0; i < data.length; i++) {
        names.push(data[i].id)
    }
    console.log(names)
    $("#jifang-table").bootstrapTable('remove', {
        field: 'id',
        values: names
    });
}
//设备盘点
function initTable() {
    $('#test3').bootstrapTable('destroy');
    $('#test3').bootstrapTable({
        url: ctxPath + 'device/getDevicePage',
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
        pageNumber: 1,                          //初始化加载第一页，默认第一页,并记录
        pageSize: 10,//每页显示的数量
        pageList: [100, 300, 500,1000],//设置每页显示的数量
        paginationPreText: "上一页",
        paginationNextText: "下一页",
        paginationLoop: false,
        onLoadSuccess:function(){
            //鼠标悬停显示全部内容~
            $('.bootstrap-table tr td').each(function () {
                if($(this).hasClass("active1")){

                }else{
                    $(this).attr("title", $(this).text());
                    $(this).css("cursor", 'pointer');
                }
            });
        },
        //得到查询的参数
        queryParams: function (params) {
            //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
            var temp = {
                limit: params.limit,                         //页面大小
                page: (params.offset / params.limit) + 1,   //页码
                sort: params.sort,      //排序列名
                sortOrder: params.order, //排位命令（desc，asc）
                name: $("#name").val(),
                sheft: $("#sheft").val(),
                tid: $("#tid").val(),
                owner: $("#owner").val(),
                operator: $("#operator").val(),
                assetId: $("#assetId").val(),
                model: $("#model").val(),
                roomId: $("#roomId").val(),
                status: $("#status option:selected").val(),
                resTypeCode:$("#resTypeCode1 option:selected").val()
            };
            return temp;
        },
        columns:
            [{checkbox: true,checked: true,width: 40,formatter:function (value, row, index) {
                    if(row.status!="0"){
                        return {
                            disabled : false,
                        }
                    }else{
                        return {
                            disabled : true,
                        }
                    }
                }}
                , {field: 'name', title: '设备名称',}
                , {field: 'resTypeName', title: '设备分类',}
                , {field: 'roomName', title: '机房',}
                , {field: 'rackName', title: '机架',width:70,class:'colStyle',}
                , {field: 'sheft', title: '机位',} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
                , {field: 'owner', title: '所有人',width:70,class:'colStyle',}
                , {field: 'status', title: '设备状态',width:70, formatter:function (value, row, index) {
                    var state=row.status;  //1-设备贴标,2-设备盘点,3-设备调拨,4-设备借用,5-设备维修
                    switch (state) {
                        case "0":
                            return"初始"
                        case "1":
                            return "在线"
                        case "2":
                            return "故障"
                        case "3":
                            return "调拨中"
                        case "4":
                            return "维修中"
                        case "5":
                            return "借用中"
                        case "6":
                            return "报废"
                        case "7":
                            return "盘点"
                    }

                }}
                , {field: 'barcode', title: '标签编号', }
            ]
    });
}



//部门盘点

function initTable2(){
    $('#test4').bootstrapTable('destroy');
    $('#test4').bootstrapTable({
        url: ctxPath+'org/getPage',
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
        pageList: [100, 300, 500,1000],//设置每页显示的数量
        paginationPreText:"上一页",
        paginationNextText:"下一页",
        paginationLoop:false,
        onLoadSuccess:function(){
            //鼠标悬停显示全部内容~
            $('.bootstrap-table tr td').each(function () {
                if($(this).hasClass("active1")){

                }else{
                    $(this).attr("title", $(this).text());
                    $(this).css("cursor", 'pointer');
                }
            });
        },
        //得到查询的参数
        queryParams : function (params) {
            //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
            var temp = {
                limit: params.limit,                         //页面大小
                page: (params.offset / params.limit) + 1,   //页码
                sort: params.sort,      //排序列名
                sortOrder: params.order, //排位命令（desc，asc）
                name: $("#orgName").val(),
                state:$("#state option:selected").val()
            };
            return temp;
        },
        columns: [
            { field: 'check',  checkbox: true, formatter: function (value, row, index) {
                    if (row.check == true) {
                        //设置选中
                        return {  checked: true };
                    }
                }
            },
            { field: 'name',  title: '机房名称'},
            { field: 'level',  title: '级别'},
            { field: 'fullCode',  title: '编码'},
            { field: 'regionName',  title: '所属区域'},
            { field: 'id', title: '操作',width:100,},
        ],
    });
}

//机房盘点,
function initTable3(){
    $('#test5').bootstrapTable('destroy');
    $('#test5').bootstrapTable({
        url: ctxPath + 'room/getPage',
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
        pageNumber: 1,                          //初始化加载第一页，默认第一页,并记录
        pageSize: 10,//每页显示的数量
        pageList: [100, 300, 500,1000],//设置每页显示的数量
        paginationPreText: "上一页",
        paginationNextText: "下一页",
        paginationLoop: false,
        onLoadSuccess:function(){
            //鼠标悬停显示全部内容~
            $('.bootstrap-table tr td').each(function () {
                if($(this).hasClass("active1")){

                }else{
                    $(this).attr("title", $(this).text());
                    $(this).css("cursor", 'pointer');
                }
            });
        },
        //得到查询的参数
        queryParams: function (params) {
            //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
            var temp = {
                limit: params.limit,                         //页面大小
                page: (params.offset / params.limit) + 1,   //页码
                sort: params.sort,      //排序列名
                sortOrder: params.order, //排位命令（desc，asc）
                name: $("#roomName").val(),
                sheft: $("#sheft").val(),
                tid: $("#tid").val(),
                owner: $("#owner").val(),
                operator: $("#operator").val(),
                assetId: $("#assetId").val(),
                model: $("#model").val(),
                roomId: $("#roomId").val(),
                status: $("#status option:selected").val()
            };
            return temp;
        },
        columns:
            [{checkbox: true, width: 50},
                {field:'name',title: '机房名称', }
                    ,{field:'domain', title: '绑定域名'}
                    ,{field:'orgName', title: '所属机构', }
            ]
    });
}

//设备查询
$("#queryRes").on("click",function () {
    $("#test3").bootstrapTable("refresh", {
        silent: true //静态刷新
    });
})
$("#queryRes2").on("click",function () {
    $("#test4").bootstrapTable("refresh", {
        silent: true //静态刷新
    });
})
$("#queryRes3").on("click",function () {
    $("#test5").bootstrapTable("refresh", {
        silent: true //静态刷新
    });
})

        //添加任务接口
//添加任务接口
$("#addTask").on("click",function () {

    var checkTaskType =$("#loadOrg option:selected").val();
    if (checkTaskType==''){
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"请选择盘点任务类型",

        };
        method.msg_layer(obj);
    }
    if (checkTaskType==1){
        addDivece(checkTaskType)
    }else if(checkTaskType==2){
        addOrg(checkTaskType)
    }else if(checkTaskType==3){
        addRoom(checkTaskType)
    }

})
//添加设备
function addDivece(checkTaskType) {

    var deviceData = $("#test2").bootstrapTable("getAllSelections");
    //
    //
    if(deviceData.length===0){
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"请选择盘点设备",

        };
        method.msg_layer(obj);
        return
    }
    var taskName =$("#taskName").val()
    if(taskName==""){
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"<div>请输入任务名称",

        };
        method.msg_layer(obj);
        $("#taskName").focus()
        return
    }
    var remark =$("#remark").val()

    var userId =$("#userId option:selected").val();
    if(userId==""){
        //  alert("请选择负责人！！！")
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"<div>请选择负责人",
        };
        method.msg_layer(obj);
        $("#userId").focus()
        return
    }
    //封装数据
    var resIds='';
    $(deviceData).each(function (index,item) {
        resIds+=item.id+","
    })

    resIds = resIds.substr(0, resIds.length - 1);

    var buttonEle = $("#addTask");
    buttonEle.attr("disabled",true).attr("readonly",true);
    //添加任务
    $.ajax({
        url:  ctxPath+"checkTask/add",
        type: "POST",
        data:{
            name:taskName,
            remark:remark,
            userId:userId,
            resIds:resIds,
            checkTaskType:checkTaskType
        },
        cache:false,
        dataType: "json",
        success: function(data){
            // alert(data.message);
            var obj={
                type:"showSweetAlert",
                title:"提示",
                content:data.message,
            };
            method.msg_layer(obj);
            if(data.code=="0"){
                setTimeout(window.location.href=ctxPath+'checkTask', 1500);
            }
            buttonEle.removeAttr("disabled").removeAttr("readonly");
        },
        error:function(err){
            // alert("服务器内部错误！")
            var obj={
                type:"showSweetAlert",
                title:"提示",
                content:"服务器内部错误",
            };
            method.msg_layer(obj);
            buttonEle.removeAttr("disabled").removeAttr("readonly");
        }
    });
}
//添加部门
function addOrg(checkTaskType) {
    console.log(numsId2)
    var ids =numsId2.join(',')
    var deviceData = $("#department-table").bootstrapTable("getAllSelections");
    if(deviceData.length===0){
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"请选择盘点设备",

        };
        method.msg_layer(obj);
        return
    }
    var taskName =$("#taskName").val()
    if(taskName==""){
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"<div>请输入任务名称",

        };
        method.msg_layer(obj);
        $("#taskName").focus()
        return
    }
    var remark =$("#remark").val()

    var userId =$("#userId option:selected").val();
    if(userId==""){
        //  alert("请选择负责人！！！")
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"请选择负责人",
        };
        method.msg_layer(obj);
        $("#userId").focus()
        return
    }
    //封装数据
    var resIds='';
    $(deviceData).each(function (index,item) {
        resIds+=item.id+","
    })

    resIds = resIds.substr(0, resIds.length - 1);
    var buttonEle = $("#addTask");
    buttonEle.attr("disabled",true).attr("readonly",true);
    //添加任务
    $.ajax({
        url:  ctxPath+"checkTask/add",
        type: "POST",
        data:{
            name:taskName,
            remark:remark,
            userId:userId,
            resIds:resIds,
            checkTaskType:checkTaskType,
            deviceIds:ids
        },
        cache:false,
        dataType: "json",
        success: function(data){
            // alert(data.message);
            var obj={
                type:"showSweetAlert",
                title:"提示",
                content:data.message,
            };
            method.msg_layer(obj);
            if(data.code=="0"){
                setTimeout(window.location.href=ctxPath+'checkTask', 1500);
            }
            buttonEle.removeAttr("disabled").removeAttr("readonly");
        },
        error:function(err){
            var obj={
                type:"showSweetAlert",
                title:"提示",
                content:"<div>服务器内部错误",
            };
            method.msg_layer(obj);
            buttonEle.removeAttr("disabled").removeAttr("readonly");
        }
    });
}
//添加机房
function addRoom(checkTaskType) {
    console.log(numsId)
    var ids =numsId.join(',')
    var deviceData = $("#jifang-table").bootstrapTable("getAllSelections");
    if(deviceData.length===0){
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"请选择盘点设备",

        };
        method.msg_layer(obj);
        return
    }
    var taskName =$("#taskName").val()
    if(taskName==""){
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"<div>请输入任务名称",

        };
        method.msg_layer(obj);
        $("#taskName").focus()
        return
    }
    var remark =$("#remark").val()

    var userId =$("#userId option:selected").val();
    if(userId==""){
        //  alert("请选择负责人！！！")
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"请选择负责人",
        };
        method.msg_layer(obj);
        $("#userId").focus()
        return
    }
    //封装数据
    var resIds='';
    $(deviceData).each(function (index,item) {
        resIds+=item.id+","
    })

    resIds = resIds.substr(0, resIds.length - 1);
    //添加任务
    var buttonEle = $("#addTask");
    buttonEle.attr("disabled",true).attr("readonly",true);
    $.ajax({
        url:  ctxPath+"checkTask/add",
        type: "POST",
        data:{
            name:taskName,
            remark:remark,
            userId:userId,
            resIds:resIds,
            checkTaskType:checkTaskType,
            deviceIds:ids
        },
        cache:false,
        dataType: "json",
        success: function(data){
            // alert(data.message);
            var obj={
                type:"showSweetAlert",
                title:"提示",
                content:data.message,
            };
            method.msg_layer(obj);
            if(data.code=="0"){
                setTimeout(window.location.href=ctxPath+'checkTask', 1500);
            }
            buttonEle.removeAttr("disabled").removeAttr("readonly");
        },
        error:function(err){
            var obj={
                type:"showSweetAlert",
                title:"提示",
                content:"<div>服务器内部错误",
            };
            method.msg_layer(obj);
            buttonEle.removeAttr("disabled").removeAttr("readonly");
        }
    });
}




