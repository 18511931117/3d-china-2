// layui.use('table', function(){
//     var table = layui.table;
//
//     table.render({
//         elem: '#test'
//         ,url:'borrowTask/getPage'
//         ,title: '用户数据表'
//         ,cols: [[
//             {type: 'checkbox'},
//             {field: 'id', title: 'ID',}
//             , {field: 'taskName', title: '任务名称'}
//             , {field: 'taskType', title: '任务类型',templet: function(d){
//                     var state=d.taskType;  //1-设备贴标,2-设备盘点,3-设备调拨,4-设备借用,5-设备维修
//                     switch (state) {
//                         case 1:
//                             return"设备贴标"
//                         case 2:
//                             return "设备盘点"
//                         case 3:
//                             return "设备调拨"
//                         case 4:
//                             return "设备借用"
//                         case 5:
//                             return "设备维修"
//                     }
//
//                 }}
//             , {field: 'state', title: '任务状态',templet: function(d){
//                     var state=d.state;  //0-待执行,2-执行中,8-执行完毕
//                     switch (state) {
//                         case 0:
//                             return"待执行"
//                         case 1:
//                             return "进行中"
//                         case 2:
//                             return "已完成"
//                     }
//
//                 }}
//             , {field: 'starOrgName', title: '所属机构'}
//             , {field: 'endOrgName', title: '目标机构'}
//             , {field: 'startName', title: '执行人'}
//             , {field: 'remark', title: '备注'}
//             , {field: '操作', title: '操作', width: 240, templet:function (item) {
//                     var html='';
//                     var btn='';
//                     $("#operateDiv").find("a").each(function(){
//                         html +=this.outerHTML;
//                     });
//                     if(item.state=='1'){
//                         btn='<a class="layui-btn layui-btn-xs" lay-event="successState">完成</a>'
//                     }
//                     return html+btn;
//                 }}
//         ]]
//         ,page: true
//     });
//     //新建任务搜索设备
//     $("#myModal").on("show.bs.modal",function(){
//         //加载组织机构
//         loadOrg("loadOrg");
//         loadRoomSelect("loadRoom");
//         loadUser("loadUser")
//         var deviceData=[];
//         layer.msg("新建")
//         //点击前清空deviceData
//         deviceData.splice(0,deviceData.length);
//         //新建任务创建任务
//         table.render({
//             elem: '#test2'
//             // ,url: ctxPath+'device/getDevicePage'
//             ,title: '用户数据表'
//             ,cellMinWidth: 92 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
//             ,cols: [[
//                 {type:'checkbox'}
//                 ,{field:'name',title: '设备名称', }
//                 ,{field:'resTypeName', title: '设备分类'}
//                 ,{field:'roomName', title: '机房', }
//                 ,{field:'rackName', title: '机架'}
//                 ,{field:'sheft', title: '机位',} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
//                 ,{field:'owner', title: '所有人', }
//                 ,{field:'status', title: '设备状态', }
//                 ,{field:'barcode', title: '标签编号',width:150}
//                 , {field: '操作', title: '操作', toolbar: '#barDemo2'}
//             ]],
//             data: deviceData
//             ,page: true
//         });
//         //设备筛选按钮
//         $("#devQuery").on("click",function () {
//             var selectedData =table.checkStatus("deviceTable");
//             console.log(deviceData)
//             $(selectedData.data).each(function (index,item) {
//                 //请求设备是否绑定标签 TODO
//                 deviceData.push(item);
//             })
//             table.reload('test2', {
//                 data: deviceData // 调用table.reload 重新渲染显示加载追加了数据的表格
//             });
//         })
//         //添加任务接口
//         $("#addTask").on("click",function () {
//             var taskName =$("#taskName").val()
//             if(taskName==""){
//                 layer.msg("请输入任务名称！！！")
//                 $("#taskName").focus()
//                 return
//             }
//             var remark =$("#remark").val()
//             if(remark==""){
//                 layer.msg("请输入任务备注！！！")
//                 $("#remark").focus()
//                 return
//             }
//                 //  startOrgId:startOrgId,
//                 // startName:startName,
//                 // startRoomId:startRoomId,
// //////////////////////////////所属部门////////////////////////////////////////////////
//             var startOrgId =$("#startOrg option:selected").val();
//             if(startOrgId==""){
//                 layer.msg("请选择所属部门！！！")
//                 $("#startOrg").focus()
//                 return
//             }
//             var startName =$("#startName").val();
//             if(startName==""){
//                 layer.msg("请选择负责人！！！")
//                 $("#startName").focus()
//                 return
//             }
//             var startRoomId =$("#startRoom option:selected").val();
//             if(startRoomId==""){
//                 layer.msg("请选择机房！！！")
//                 $("#startRoom").focus()
//                 return
//             }
// ///////////////////////////////////////////////////////////////////////////////////////
// //                 endOrgId:orgId,
// //                 endName:endName,
// //                 endRoomId:endRoomId,
//             var endOrgId =$("#endOrg option:selected").val();
//             if(endOrgId==""){
//                 layer.msg("请选择目标部门！！！")
//                 $("#endOrg").focus()
//                 return
//             }
//             var endName =$("#endName").val();
//             if(endName==""){
//                 layer.msg("请选择负责人！！！")
//                 $("#endName").focus()
//                 return
//             }
//             var endRoomId =$("#endRoom option:selected").val();
//             if(endRoomId==""){
//                 layer.msg("请选择机房！！！")
//                 $("#endRoom").focus()
//                 return
//             }
//             if(deviceData.length===0){
//                 layer.msg("请选择设备！！！")
//                 return
//             }
//             //封装数据
//             var resIds='';
//             $(deviceData).each(function (index,item) {
//                 resIds+=item.id+","
//             })
//             resIds = resIds.substr(0, resIds.length - 1);
//             console.log(resIds)
//             //添加任务
//             $.ajax({
//                 url: ctxPath+"borrowTask/add",
//                 type: "POST",
//                 data:{
//                     taskName:taskName,
//                     remark:remark,
//                     startOrgId:startOrgId,
//                     startName:startName,
//                     startRoomId:startRoomId,
//                     endOrgId:endOrgId,
//                     endName:endName,
//                     endRoomId:endRoomId,
//                     resIds:resIds
//                 },
//                 cache:false,
//                 dataType: "json",
//                 success: function(data){
//                     layer.msg(data.message);
//                     if(data.code=="0"){
//                         setTimeout("javascript:location.href=ctxPath+'borrowTask'", 1500);
//                     }
//                 },
//                 error:function(err){
//                     layer.msg("服务器内部错误！")
//                 }
//             });
//
//
//         })
//
//     })
// //任务模糊查询
//     $("#queryTask").on("click",function () {
//         table.reload("test",{
//             page: {
//                 curr: 1 //重新从第 1 页开始
//             },
//             where: {
//                 taskName: $("#queryTaskName").val(),
//                 state:$("#state option:selected").val()
//             }
//         })
//
//     })
//     $("#myModal2").on("show.bs.modal",function(){
//         loadRoomSelect("roomSelect")  //加载机房下拉框
//         loadDevStatus("devStatus")
//         loadDevTypeSelect("resTypeSelect")
//         table.render({
//             id:"deviceTable"
//             ,elem: '#test3'
//             ,url: ctxPath+'device/getDevicePage'
//             ,cellMinWidth: 110 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
//             ,cols: [[
//                 {type:'checkbox'}
//                 ,{field:'name',title: '设备名称', }
//                 ,{field:'resTypeName', title: '设备分类'}
//                 ,{field:'roomName', title: '机房', }
//                 ,{field:'rackName', title: '机架'}
//                 ,{field:'sheft', title: '机位',} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
//                 ,{field:'owner', title: '所有人', }
//                 ,{field:'status', title: '设备状态', }
//                 ,{field:'barcode', title: '标签编号',width:150}
//             ]]
//             ,page: true
//
//         });
//         $("#queryRes").on("click",function () {
//             layer.msg("test3")
//             table.reload("deviceTable",{
//                 page: {
//                     curr: 1 //重新从第 1 页开始
//                 },
//                 where: {
//                     name: $("#name").val(),
//                     sheft:$("#sheft").val(),
//                     tid:$("#tid").val(),
//                     owner:$("#owner").val(),
//                     operator:$("#operator").val(),
//                     assetId:$("#assetId").val(),
//                     model:$("#model").val(),
//                     roomId:$("#roomId option:selected").val(),
//                     status:$("#status option:selected").val()
//                 }
//             })
//
//         })
//     })
//
//
//
//
//
//
//     //监听行工具事件
//     table.on('tool(test)', function(obj){
//         var data = obj.data;
//         //console.log(obj)
//         if(obj.event === 'del'){
//             layer.confirm('真的删除行么', function(index){
//                 $.ajax({
//                     url:  ctxPath+"borrowTask/delete",
//                     type: "POST",
//                     data:{
//                         id:data.id
//                     },
//                     cache:false,
//                     dataType: "json",
//                     success: function(data){
//                         layer.msg(data.message);
//                         if(data.code=="0"){
//                             setTimeout("javascript:location.href=ctxPath+'borrowTask'", 1500);
//                         }
//                     },
//                     error:function(err){
//                         layer.msg("服务器内部错误！")
//                     }
//                 });
//                 layer.close(index);
//             });
//         } else if(obj.event === 'det'){
//             console.log(data.id)
//             window.location.href = ctxPath+"borrowTask/toDesc?id="+data.id
//         }else if(obj.event==='successState'){
//             updateState(data.id,2);
//         }
//     });
//     //更新任务状态
//     function updateState(id,state){
//         layer.confirm('确认开始执行任务？', function(index){
//             $.ajax({
//                 url:  ctxPath+"borrowTask/updateState",
//                 type: "POST",
//                 data:{
//                     id:id,
//                     state: state
//                 },
//                 cache:false,
//                 dataType: "json",
//                 success: function(data){
//                     layer.msg(data.message);
//                     if(data.code=="0"){
//                         setTimeout("javascript:location.href=ctxPath+'checkTask'", 1500);
//                     }
//                 },
//                 error:function(err){
//                     layer.msg("服务器内部错误！")
//                 }
//             });
//             layer.close(index);
//         });
//     }
//     table.on('tool(test2)', function(obj){
//         var data = obj.data;
//         //console.log(obj)
//         if(obj.event === 'del'){
//             layer.confirm('真的删除行么', function(index){
//                 obj.del();
//                 layer.close(index);
//             });
//         } else if(obj.event === 'det'){
//             layer.msg("这是详情")
//         } else if(obj.event === "out"){
//             layer.msg("这是完成")
//         }
//     });
//
// });

$('input').each(function () {
    $(this).mouseover(function () {
        var val = $(this).val()
        $(this).attr("title",val)
    })
})



window.operateEvents = {
    // 任务详情
    'click #bind': function (e, value, row, index) {
        window.location.href = ctxPath+"borrowTask/toDesc?id="+row.id
    },
    // 任务撤销
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
                    url:  ctxPath+"borrowTask/delete",
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
                        if(data.code=="0"){
                            setTimeout(window.location.href=ctxPath+'borrowTask', 1500);
                        }
                    },
                    error:function(err){
                        var obj={
                            type:"showSweetAlert",
                            title:"提示",
                            content:'内部服务器错误',
                        };
                        method.msg_layer(obj);
                    }
                });
                $('.msg-layer-bg').css('display','none')
                $('.msg-layer').css('display','none')
            },
        };
        method.msg_layer(obj);
    },
    // 盘点任务撤销
    'click #binds': function (e, value, row, index) {
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"是否确认提交此任务?",
            btn:["关闭","确定"],
            callBack1:function () {
                console.log("取消")
            },
            callBack2:function () {
                $.ajax({
                    url:  ctxPath+"borrowTask/updateState",
                    type: "POST",
                    data:{
                        id:row.id,
                        state:2
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
                        if(data.code=="0"){
                            setTimeout(window.location.href=ctxPath+'borrowTask', 1500);
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

    var html=[]
    $("#operateDiv").find("button").each(function(){
        console.log(this.outerHTML)
        if(orgId!=row.endOrgId) {
            html.push(this.outerHTML)
        }
    });
    html.push('<button id="bind" type="button" class="btn bg-yellow table-btn">详情</button>')
    if (row.startOrgId==orgId){
        html.push('<button id="binds" type="button" class="btn bg-yellow table-btn">确认归还</button>')
    }
    return html.join('')
}

$('#test').bootstrapTable({
    url: ctxPath+'borrowTask/getPage',
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
            taskName: $("#queryTaskName").val(),
            state:$("#state option:selected").val()
        };
        return temp;
    },
    columns:
        [{checkbox: true,width: 50}
            ,{field:'taskName',title: '任务名称', }
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
            , {field: 'startOrgName', title: '所属机构'}
            , {field: 'endOrgName', title: '目标机构'}
            ,{field:'remark', title: '备注',} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
            ,{field:'barcode', title: '操作',class:'active1',events: operateEvents,formatter: addFunctionAlty,width:255}//表格中增加按钮
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

//新建任务任务按钮
$("#myModal").on("show.bs.modal",function(){
    //借出任务控制部门与机房级联
    $("#startRoomNone").hide()
    // loadOrg($(":input[name='startOrg']"));
    loadCurrentOrg($(":input[name='startOrg']"));
    //借入任务控制部门与机房级联
    $("#endRoomNone").hide()
    // loadCurrentOrg($(":input[name='endOrg']"));
    loadOrg($(":input[name='endOrg']"));

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
            [{checkbox: true,width: 50}
                ,{field:'name',title: '设备名称',formatter:function (value,row,index) {
                    var values=row.name;
                    if(values==undefined){
                        values='--'
                    }
                    var span=document.createElement('span');
                    span.setAttribute('title',values);
                    span.innerHTML = values;
                    return span.outerHTML;
                } }
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
                ,{field:'roomName', title: '机房',formatter:function (value,row,index) {
                    var values=row.roomName;
                    if(values==undefined){
                        values='--'
                    }
                    var span=document.createElement('span');
                    span.setAttribute('title',values);
                    span.innerHTML = values;
                    return span.outerHTML;
                } }
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
                } }
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
                ,{field:'barcode', title: '标签编号',width:150,formatter:function (value,row,index) {
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
})
function initTable() {
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
                resTypeCode:$("#resTypeCode option:selected").val()
            };
            return temp;
        },
        columns:
            [{checkbox: true,width: 50,formatter:function (value,row,index) {
                    if(row.status=="1"){
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
                , {field: 'resTypeName', title: '设备分类'}
                , {field: 'roomName', title: '机房',}
                , {field: 'rackName', title: '机架'}
                , {field: 'sheft', title: '机位',} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
                , {field: 'owner', title: '所有人',}
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
                , {field: 'barcode', title: '标签编号', width: 150}
            ]
    });
}
//控制借出部门与机房位置级联
$(":input[name='startOrg']").change(function(){
    $("#startRoomNone").show()
    var startOrgId =$("#startOrg option:selected").val();
    loadRoomSelect1($(":input[name='startRoom']"),"",startOrgId);
});
//控制借入部门与机房位置级联
$(":input[name='endOrg']").change(function(){
    $("#endRoomNone").show()
    var endOrgId =$("#endOrg option:selected").val();
    loadRoomSelect1($(":input[name='endRoom']"),"",endOrgId);
});
$("#myModal").on("show.bs.modal",function(){
    $("#test2").bootstrapTable("removeAll"); //清空添加任务的设备列表
})
//点击添加设备
$("#addDevice").on("click",function(){
    initTable()
    // $("#test3").bootstrapTable("removeAll"); //清空添加任务的设备列表
    //部门与机房选择校验
    var startOrgId =$("#startOrg option:selected").val();
    if(startOrgId==""){
       // alert("请选择借出所属部门！！！")
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:'请选择借出所属部门',
            //  btn:["关闭","确定"],
            //   callBack1:function () {
            //       console.log("取消")
            //   },
            //   callBack2:function () {
            //       // console.log("确定")
            //       $('.msg-layer-bg').css('display','none')
            //       $('.msg-layer').css('display','none')
            //       refreshfTable($("#demo"),'1');
            //   },
        };
        method.msg_layer(obj);
        $("#myModal2").modal('hide');
        return
    }
    var startRoomId =$("#startRoom option:selected").val();
    if(startRoomId==""){
       // alert("请选择借出机房！！！")
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:'请选择借出机房',
            //  btn:["关闭","确定"],
            //   callBack1:function () {
            //       console.log("取消")
            //   },
            //   callBack2:function () {
            //       // console.log("确定")
            //       $('.msg-layer-bg').css('display','none')
            //       $('.msg-layer').css('display','none')
            //       refreshfTable($("#demo"),'1');
            //   },
        };
        method.msg_layer(obj);
        $("#myModal2").modal('hide');
        return
    }
    var endOrgId =$("#endOrg option:selected").val();
    if(endOrgId==""){
       // alert("请选择借入所属部门！！！")
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:'请选择借入所属部门',
            //  btn:["关闭","确定"],
            //   callBack1:function () {
            //       console.log("取消")
            //   },
            //   callBack2:function () {
            //       // console.log("确定")
            //       $('.msg-layer-bg').css('display','none')
            //       $('.msg-layer').css('display','none')
            //       refreshfTable($("#demo"),'1');
            //   },
        };
        method.msg_layer(obj);
        $("#myModal2").modal('hide');
        return
    }
    var endRoomId =$("#endRoom option:selected").val();
    if(endRoomId==""){
       // alert("请选择借入机房！！！")
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:'请选择借入机房',
            //  btn:["关闭","确定"],
            //   callBack1:function () {
            //       console.log("取消")
            //   },
            //   callBack2:function () {
            //       // console.log("确定")
            //       $('.msg-layer-bg').css('display','none')
            //       $('.msg-layer').css('display','none')
            //       refreshfTable($("#demo"),'1');
            //   },
        };
        method.msg_layer(obj);
        $("#myModal2").modal('hide');
        return
    }
    $("#myModal2").modal('show');
    // loadRoomSelect($(":input[name=roomSelect]"),"",startOrgId)  //加载机房下拉框
    loadDevStatus($('#status'),'')  //加载设备状态
    loadDevTypeSelect($("#resTypeCode"),'')
    $("#roomId").val(startRoomId) //机房默认选中

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
        $("#test2").bootstrapTable("checkAll");
    }

});

//批量删除
$("#batchDel").on("click",function () {
    var data = $("#test2").bootstrapTable("getAllSelections");
    if (data==""){
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:'至少选择一条删除的信息',
        };
        method.msg_layer(obj);
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
});




//设备查询
$("#queryRes").on("click",function () {
    // initTable()
    $("#test3").bootstrapTable("refresh", {
        silent: true //静态刷新
    });
})
//添加任务接口
$("#addTask").on("click",function () {
    var deviceData = $("#test2").bootstrapTable("getAllSelections");
    var taskName =$("#taskName").val()
    if(taskName==""){
       // alert("请输入任务名称！！！")
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:'请选择任务名称',
            //  btn:["关闭","确定"],
            //   callBack1:function () {
            //       console.log("取消")
            //   },
            //   callBack2:function () {
            //       // console.log("确定")
            //       $('.msg-layer-bg').css('display','none')
            //       $('.msg-layer').css('display','none')
            //       refreshfTable($("#demo"),'1');
            //   },
        };
        method.msg_layer(obj);
        $("#taskName").focus()
        return
    }
    var remark =$("#remark").val()

    //  startOrgId:startOrgId,
    // startName:startName,
    // startRoomId:startRoomId,
//////////////////////////////所属部门////////////////////////////////////////////////
    var startOrgId =$("#startOrg option:selected").val();
    if(startOrgId==""){
      //  alert("请选择所属部门！！！")
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:'请选择所属部门',
            //  btn:["关闭","确定"],
            //   callBack1:function () {
            //       console.log("取消")
            //   },
            //   callBack2:function () {
            //       // console.log("确定")
            //       $('.msg-layer-bg').css('display','none')
            //       $('.msg-layer').css('display','none')
            //       refreshfTable($("#demo"),'1');
            //   },
        };
        method.msg_layer(obj);
        $("#startOrg").focus()
        return
    }
    var startName =$("#startName").val();
    if(startName==""){
       // alert("请选择负责人！！！")
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:'请选择负责人',
            //  btn:["关闭","确定"],
            //   callBack1:function () {
            //       console.log("取消")
            //   },
            //   callBack2:function () {
            //       // console.log("确定")
            //       $('.msg-layer-bg').css('display','none')
            //       $('.msg-layer').css('display','none')
            //       refreshfTable($("#demo"),'1');
            //   },
        };
        method.msg_layer(obj);
        $("#startName").focus()
        return
    }
    var startRoomId =$("#startRoom option:selected").val();
    if(startRoomId==""){
       // alert("请选择机房！！！")
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:'请选择机房',
        };
        method.msg_layer(obj);
        $("#startRoom").focus()
        return
    }
///////////////////////////////////////////////////////////////////////////////////////
//                 endOrgId:orgId,
//                 endName:endName,
//                 endRoomId:endRoomId,
    var endOrgId =$("#endOrg option:selected").val();
    if(deviceData.length===0){
       // alert("请选择设备！！！")
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:'请选择设备',
        };
        method.msg_layer(obj);
        return
    }
    if(endOrgId==""){
       // alert("请选择目标部门！！！")
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:'请选择目标部门',
        };
        method.msg_layer(obj);
        $("#endOrg").focus()
        return
    }
    var endName =$("#endName").val();
    if(endName==""){
      //  alert("请选择负责人！！！")
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:'请选择负责人',
        };
        method.msg_layer(obj);
        $("#endName").focus()
        return
    }
    var endRoomId =$("#endRoom option:selected").val();
    if(endRoomId==""){
        alert("请选择机房！！！")
        $("#endRoom").focus()
        return
    }
//校验起止部门与目标部门是否一致
    if(startOrgId==endOrgId){
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:'借用部门与借出部门不能一致！！',
        };
        method.msg_layer(obj);
        return;
    }
    //校验存放位置
    if(startRoomId==endRoomId){
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:'借出存放位置与借入存放位置不能一致！！',
        };
        method.msg_layer(obj);
        return;
    }
    //封装数据
    var resIds='';
    $(deviceData).each(function (index,item) {
        resIds+=item.id+","
    })
    resIds = resIds.substr(0, resIds.length - 1);
    console.log(resIds)
    //添加任务
    var buttonEle = $(this);
    buttonEle.attr("disabled",true).attr("readonly",true);
    $.ajax({
        url: ctxPath+"borrowTask/add",
        type: "POST",
        data:{
            taskName:taskName,
            remark:remark,
            startOrgId:startOrgId,
            startName:startName,
            endOrgId:endOrgId,
            endName:endName,
            startRoomId:startRoomId,
            endRoomId:endRoomId,
            resIds:resIds
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
                setTimeout(window.location.href=ctxPath+'borrowTask', 1500);
            }
            buttonEle.removeAttr("disabled").removeAttr("readonly");
        },
        error:function(err){
           // alert("服务器内部错误！")
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


function loadRoomSelect1(ele,value,orgId){
    var str = "";
    if(orgId != null && orgId != '' && orgId != undefined){
        str = "?orgId="+orgId;
    }
    if(orgId == ''){
        ele.html("<option value=''>请先选择机构</option>");
    }else{
        $.ajax({
            type:'get',
            async: false,
            url:ctxPath +"room/getPage"+str,
            success:function(data){
                if(data.code == '0'){
                    ele.html("<option value=''>请选择</option>");
                    for(var i = 0 ;i<data.rows.length;i++){
                        var obj = data.rows[i];
                        ele.append("<option value='"+obj.id+"'>"+obj.name+"</option>");
                    }
                    if(value != null && value != '' && value != undefined){
                        ele.val(value);
                    }

                    ele.selectpicker('refresh');
                }
            }
        })
    }

}