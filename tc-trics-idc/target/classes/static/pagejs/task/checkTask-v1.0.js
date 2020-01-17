//
// layui.use('table', function(){
//     var table = layui.table;
//
//     table.render({
//         elem: '#test'
//         ,url:'/checkTask/getPage'
//         ,title: '用户数据表'
//         ,cols: [[
//             {type: 'checkbox'},
//             {field: 'id', title: 'ID',}
//             , {field: 'name', title: '任务名称'}
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
//             , {field: 'orgName', title: '所属机构'}
//             , {field: 'remark', title: '所属机构'}
//             , {field: '操作', title: '操作', width: 240, templet:function (item) {
//                     var html='';
//                     var btn=''
//                     $("#operateDiv").find("a").each(function(){
//                         html +=this.outerHTML;
//                     });
//                     if(item.state=='0'){
//                         btn='<a class="layui-btn layui-btn-xs" lay-event="startOut">开始执行</a>\n'
//                     }else if (item.state=='1'){
//                         btn='<a class="layui-btn layui-btn-xs" lay-event="successState">完成</a>'
//                     }
//
//
//                     return html+btn;
//                 }}
//         ]]
//         ,page: true
//
//     });
//
//     //新建任务搜索设备
//     $("#myModal").on("show.bs.modal",function(){
//         //加载组织机构
//         loadOrg("loadOrg");
//         loadRoomSelect("loadRoom");
//         loadUser("loadUser")
//         var deviceData=[];
//         layer.msg("新建")
//         //点击前清空deviceData
//         deviceData.length=0
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
//                 ,{field:'status', title: '显示状态', }
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
//             if(deviceData.length===0){
//                 layer.msg("请选择设备！！！")
//                 return
//             }
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
//             var orgId =$("#loadOrg option:selected").val();
//             if(orgId==""){
//                 layer.msg("请选择部门！！！")
//                 $("#orgId").focus()
//                 return
//             }
//             var userId =$("#userId option:selected").val();
//             if(userId==""){
//                 layer.msg("请选择负责人！！！")
//                 $("#userId").focus()
//                 return
//             }
//             var roomId =$("#room option:selected").val();
//             if(roomId==""){
//                 layer.msg("请选择机房！！！")
//                 $("#room").focus()
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
//                 url:  "/checkTask/add",
//                 type: "POST",
//                 data:{
//                     name:taskName,
//                     remark:remark,
//                     orgId:orgId,
//                     userId:userId,
//                     roomId:roomId,
//                     resIds:resIds
//                 },
//                 cache:false,
//                 dataType: "json",
//                 success: function(data){
//                     layer.msg(data.message);
//                     if(data.code=="0"){
//                         setTimeout("javascript:location.href='/checkTask'", 1500);
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
//                 ,{field:'status', title: '显示状态', }
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
//                     url:  "/checkTask/delete",
//                     type: "POST",
//                     data:{
//                         id:data.id
//                     },
//                     cache:false,
//                     dataType: "json",
//                     success: function(data){
//                         layer.msg(data.message);
//                         if(data.code=="0"){
//                             setTimeout("javascript:location.href='/checkTask'", 1500);
//                         }
//                     },
//                     error:function(err){
//                         layer.msg("服务器内部错误！")
//                     }
//                 });
//                 layer.close(index);
//             });
//         } else if(obj.event === 'det'){
//             window.location.href = "/checkTask/toDesc?id="+data.id
//         }else if(obj.event==='startOut'){
//         //盘点任务开始执行按钮更新状态
//             updateState(data.id,1);
//         }else if(obj.event==='successState'){
//             updateState(data.id,2);
//         }
//     });
//     //更新任务状态
//     function updateState(id,state){
//         layer.confirm('确认开始执行任务？', function(index){
//             $.ajax({
//                 url:  ctxPath+"checkTask/updateState",
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
//
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
//         }
//     });
//
//     //批量删除
// $("#batchDel").on("click",function () {
//     var checkedArr=[];
//     var selectedData =table.checkStatus("deviceTable").data;
//     if(selectedData==""){
//         layer.msg("请选择要删除的数据！！")
//         return
//     }
//     layer.confirm('真的删除行么', function(index){
//         //DOTO 批量删除
//
//         layer.close(index);
//     });
// })
// });

window.operateEvents = {
    // 盘点任务详情
    'click #bind': function (e, value, row, index) {
        window.location.href = ctxPath+"checkTask/toDesc?id="+row.id
    },
    // 盘点任务撤销
    'click #unbind': function (e, value, row, index) {
        $.ajax({
            url:  "/checkTask/delete",
            type: "POST",
            data:{
                id:row.id
            },
            cache:false,
            dataType: "json",
            success: function(data){
               // alert(data.message);
                //layer.msg(data.message);
                if(data.code=="0"){
                    setTimeout("javascript:location.href='/checkTask'", 1500);
                }
            },
            error:function(err){
              //  alert("服务器内部错误！");
                var obj={
                    type:"showSweetAlert",
                    title:"提示",
                    content:"<div>服务器内部错误",
                    // btn:["关闭","确定"],
                    // callBack1:function () {
                    //     console.log("取消")
                    // },
                    // callBack2:function () {
                    //     // console.log("确定")
                    //     $('.msg-layer-bg').css('display','none')
                    //     $('.msg-layer').css('display','none')
                    //     refreshfTable($("#test"),'1',getQuery());
                    // },
                };
                method.msg_layer(obj);
                //layer.msg("服务器内部错误！")
            }
        });
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
                    // btn:["关闭","确定"],
                    // callBack1:function () {
                    //     console.log("取消")
                    // },
                    // callBack2:function () {
                    //     // console.log("确定")
                    //     $('.msg-layer-bg').css('display','none')
                    //     $('.msg-layer').css('display','none')
                    //     refreshfTable($("#test"),'1',getQuery());
                    // },
                };
                method.msg_layer(obj);
                //layer.msg(data.message);
                if(data.code=="0"){
                    setTimeout("javascript:location.href='/checkTask'", 1500);
                }
            },
            error:function(err){
               // alert("服务器内部错误！");
                var obj={
                    type:"showSweetAlert",
                    title:"提示",
                    content:"<div>服务器内部错误",
                    // btn:["关闭","确定"],
                    // callBack1:function () {
                    //     console.log("取消")
                    // },
                    // callBack2:function () {
                    //     // console.log("确定")
                    //     $('.msg-layer-bg').css('display','none')
                    //     $('.msg-layer').css('display','none')
                    //     refreshfTable($("#test"),'1',getQuery());
                    // },
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
                    // btn:["关闭","确定"],
                    // callBack1:function () {
                    //     console.log("取消")
                    // },
                    // callBack2:function () {
                    //     // console.log("确定")
                    //     $('.msg-layer-bg').css('display','none')
                    //     $('.msg-layer').css('display','none')
                    //     refreshfTable($("#test"),'1',getQuery());
                    // },
                };
                method.msg_layer(obj);
                //layer.msg(data.message);
                if(data.code=="0"){
                    setTimeout("javascript:location.href='/checkTask'", 1500);
                }
            },
            error:function(err){
               // alert("服务器内部错误！");
                var obj={
                    type:"showSweetAlert",
                    title:"提示",
                    content:"<div>服务器内部错误",
                    // btn:["关闭","确定"],
                    // callBack1:function () {
                    //     console.log("取消")
                    // },
                    // callBack2:function () {
                    //     // console.log("确定")
                    //     $('.msg-layer-bg').css('display','none')
                    //     $('.msg-layer').css('display','none')
                    //     refreshfTable($("#test"),'1',getQuery());
                    // },
                };
                method.msg_layer(obj);
                //layer.msg("服务器内部错误！")
            }
        });
    },'click #success': function (e, value, row, index) {
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
                    // btn:["关闭","确定"],
                    // callBack1:function () {
                    //     console.log("取消")
                    // },
                    // callBack2:function () {
                    //     // console.log("确定")
                    //     $('.msg-layer-bg').css('display','none')
                    //     $('.msg-layer').css('display','none')
                    //     refreshfTable($("#test"),'1',getQuery());
                    // },
                };
                method.msg_layer(obj);
                if(data.code=="0"){
                    setTimeout("javascript:location.href='/checkTask'", 1500);
                }
            },
            error:function(err){
               // alert("服务器内部错误！");
                //layer.msg("服务器内部错误！")
                var obj={
                    type:"showSweetAlert",
                    title:"提示",
                    content:"<div>服务器内部错误",
                    // btn:["关闭","确定"],
                    // callBack1:function () {
                    //     console.log("取消")
                    // },
                    // callBack2:function () {
                    //     // console.log("确定")
                    //     $('.msg-layer-bg').css('display','none')
                    //     $('.msg-layer').css('display','none')
                    //     refreshfTable($("#test"),'1',getQuery());
                    // },
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
    console.log(row.state)
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
            ,{field:'barcode', title: '操作',events: operateEvents,formatter: addFunctionAlty, }//表格中增加按钮
        ]
});
//任务模糊查询
    $("#queryTask").on("click",function () {
        $("#test").bootstrapTable("refresh", {
            silent: true //静态刷新
        });
    })

//新建任务
$("#myModal").on("show.bs.modal",function(){
    $("#startRoomNone").hide()
    //加载组织机构
    loadOrg($(":input[name='loadOrg']"));
    loadUser("loadUser")
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
    pagination: true,                      //是否显示分页
    pageNumber:1,                          //初始化加载第一页，默认第一页,并记录
    pageSize:10,//每页显示的数量
    pageList: [100, 300, 500,1000],//设置每页显示的数量
    paginationPreText:"上一页",
    paginationNextText:"下一页",
    paginationLoop:false,
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
            ,{field:'name',title: '设备名称', }
            ,{field:'resTypeName', title: '设备分类'}
            ,{field:'roomName', title: '机房', }
            ,{field:'rackName', title: '机架'}
            ,{field:'sheft', title: '机位',} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
            ,{field:'owner', title: '所有人', }
            ,{field:'status', title: '显示状态', }
            ,{field:'barcode', title: '标签编号',width:150}
        ]
});
})
$("#myModal").on("show.bs.modal",function(){
    $("#test2").bootstrapTable("removeAll"); //清空添加任务的设备列表


})
//点击添加设备
$("#addDevice").on("click",function(){
    //校验组织机构是否选中
    var startOrgId =$("#loadOrg option:selected").val();
    if(startOrgId==""){
       // alert("请选择所属部门！！！")
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"<div>请选择所属部门",
            // btn:["关闭","确定"],
            // callBack1:function () {
            //     console.log("取消")
            // },
            // callBack2:function () {
            //     // console.log("确定")
            //     $('.msg-layer-bg').css('display','none')
            //     $('.msg-layer').css('display','none')
            //     refreshfTable($("#test"),'1',getQuery());
            // },
        };
        method.msg_layer(obj);
        $("#myModal2").modal('hide');
        return
    }
    var startRoomId =$("#loadRoom option:selected").val();
    if(startRoomId==""){
        //alert("请选择机房！！！")
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"<div>请选择机房",
            // btn:["关闭","确定"],
            // callBack1:function () {
            //     console.log("取消")
            // },
            // callBack2:function () {
            //     // console.log("确定")
            //     $('.msg-layer-bg').css('display','none')
            //     $('.msg-layer').css('display','none')
            //     refreshfTable($("#test"),'1',getQuery());
            // },
        };
        method.msg_layer(obj);
        $("#myModal2").modal('hide');
        return
    }
    $("#test3").bootstrapTable("removeAll"); //清空添加任务的设备列表
    $("#myModal2").modal('show');
    loadDevStatus($('#status'),'')  //加载设备状态
    loadDevTypeSelect($("#resTypeCode"),'')
    $("#roomId").val(startRoomId) //机房默认选中
    // loadDevStatus('devStatus')  //加载设备状态
    // loadDevTypeSelect($(":input[name=resTypeSelect]"))
    // $("#roomId").val(startRoomId) //机房默认选中

})
//控制部门与机房位置级联
$(":input[name='loadOrg']").change(function(){
    $("#startRoomNone").show()
    var startOrgId =$("#loadOrg option:selected").val();
    loadRoomSelect($(":input[name='loadRoom']"),"",startOrgId);
});

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

    //批量删除
$("#batchDel").on("click",function () {
    var data = $("#test2").bootstrapTable("getAllSelections");
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
                status: $("#status option:selected").val()
            };
            return temp;
        },
        columns:
            [{checkbox: true, width: 50}
                , {field: 'name', title: '设备名称',}
                , {field: 'resTypeName', title: '设备分类'}
                , {field: 'roomName', title: '机房',}
                , {field: 'rackName', title: '机架'}
                , {field: 'sheft', title: '机位',} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
                , {field: 'owner', title: '所有人',}
                , {field: 'status', title: '显示状态',}
                , {field: 'barcode', title: '标签编号', width: 150}
            ]
    });
}
//设备查询
$("#queryRes").on("click",function () {
    initTable()
    $("#test3").bootstrapTable("refresh", {
        silent: true //静态刷新
    });
})
        //添加任务接口
        $("#addTask").on("click",function () {
            var deviceData = $("#test2").bootstrapTable("getAllSelections");
            if(deviceData.length===0){
               // alert("请选择设备！！！")
                return
            }
            var taskName =$("#taskName").val()
            if(taskName==""){
               // alert("请输入任务名称！！！")
                var obj={
                    type:"showSweetAlert",
                    title:"提示",
                    content:"<div>请输入任务名称",
                    // btn:["关闭","确定"],
                    // callBack1:function () {
                    //     console.log("取消")
                    // },
                    // callBack2:function () {
                    //     // console.log("确定")
                    //     $('.msg-layer-bg').css('display','none')
                    //     $('.msg-layer').css('display','none')
                    //     refreshfTable($("#test"),'1',getQuery());
                    // },
                };
                method.msg_layer(obj);
                $("#taskName").focus()
                return
            }
            var remark =$("#remark").val()

            var orgId =$("#loadOrg option:selected").val();
            if(orgId==""){
              //  alert("请选择部门！！！")
                var obj={
                    type:"showSweetAlert",
                    title:"提示",
                    content:"<div>请选择部门",
                    // btn:["关闭","确定"],
                    // callBack1:function () {
                    //     console.log("取消")
                    // },
                    // callBack2:function () {
                    //     // console.log("确定")
                    //     $('.msg-layer-bg').css('display','none')
                    //     $('.msg-layer').css('display','none')
                    //     refreshfTable($("#test"),'1',getQuery());
                    // },
                };
                method.msg_layer(obj);
                $("#orgId").focus()
                return
            }
            var userId =$("#userId option:selected").val();
            if(userId==""){
              //  alert("请选择负责人！！！")
                var obj={
                    type:"showSweetAlert",
                    title:"提示",
                    content:"<div>请选择负责人",
                    // btn:["关闭","确定"],
                    // callBack1:function () {
                    //     console.log("取消")
                    // },
                    // callBack2:function () {
                    //     // console.log("确定")
                    //     $('.msg-layer-bg').css('display','none')
                    //     $('.msg-layer').css('display','none')
                    //     refreshfTable($("#test"),'1',getQuery());
                    // },
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
            console.log(resIds)
            //添加任务
            $.ajax({
                url:  ctxPath+"checkTask/add",
                type: "POST",
                data:{
                    name:taskName,
                    remark:remark,
                    orgId:orgId,
                    userId:userId,
                    resIds:resIds
                },
                cache:false,
                dataType: "json",
                success: function(data){
                   // alert(data.message);
                    var obj={
                        type:"showSweetAlert",
                        title:"提示",
                        content:data.message,
                        // btn:["关闭","确定"],
                        // callBack1:function () {
                        //     console.log("取消")
                        // },
                        // callBack2:function () {
                        //     // console.log("确定")
                        //     $('.msg-layer-bg').css('display','none')
                        //     $('.msg-layer').css('display','none')
                        //     refreshfTable($("#test"),'1',getQuery());
                        // },
                    };
                    method.msg_layer(obj);
                    if(data.code=="0"){
                        setTimeout("javascript:location.href='/checkTask'", 1500);
                    }
                },
                error:function(err){
                   // alert("服务器内部错误！")
                    var obj={
                        type:"showSweetAlert",
                        title:"提示",
                        content:"<div>服务器内部错误",
                        // btn:["关闭","确定"],
                        // callBack1:function () {
                        //     console.log("取消")
                        // },
                        // callBack2:function () {
                        //     // console.log("确定")
                        //     $('.msg-layer-bg').css('display','none')
                        //     $('.msg-layer').css('display','none')
                        //     refreshfTable($("#test"),'1',getQuery());
                        // },
                    };
                    method.msg_layer(obj);
                }
            });
        })






