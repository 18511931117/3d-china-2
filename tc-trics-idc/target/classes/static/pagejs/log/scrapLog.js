// layui.use('table', function(){
//     var table = layui.table;
//
//     table.render({
//         elem: '#test'
//         ,url:'/scrapLog/getPage'
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
//             , {field: 'orgName', title: '所属机构'}
//             ,{field: 'startTime', title: '开始时间' ,templet: function(d){
//                     var dateee = new Date(d.createTime).toJSON();
//                     var date = new Date(+new Date(dateee)+8*3600*1000).toISOString().replace(/T/g,' ').replace(/\.[\d]{3}Z/,'');
//                     return date;
//                 }
//
//             }
//             , {field: 'endTime', title: '结束时间',templet: function(d){
//                     var dateee = new Date(d.createTime).toJSON();
//                     var date = new Date(+new Date(dateee)+8*3600*1000).toISOString().replace(/T/g,' ').replace(/\.[\d]{3}Z/,'');
//                     return date;
//                 }
//
//             }
//             , {field: 'personName', title: '执行人'}
//             , {field: '操作', title: '操作', width: 240, toolbar: '#barDemo'}
//         ]]
//         ,page: true
//     });
//
//     //监听行工具事件
//     table.on('tool(test)', function(obj){
//         //console.log(obj)
//         var data = obj.data
//         if(obj.event === 'export'){
//             window.location.href='/scrapLog/export?taskId='+data.taskId
//         } else if(obj.event === 'edit'){
//
//         }
//     });
// });

function addFunctionAlty(value, row, index) {
    var html=[]
    $("#operateDiv").find("button").each(function(){
        console.log(this.outerHTML)
        html.push(this.outerHTML)
    });
    return html.join('')
}
window.operateEvents = {
    'click #bind': function (e, value, row, index) {
        window.location.href=ctxPath+'scrapLog/export?taskId='+row.taskId
    },'click #desc': function (e, value, row, index) {
        window.location.href = ctxPath+"scrapTask/toDesc?id="+row.taskId
    }
};
$('#test').bootstrapTable({
    url: ctxPath+'scrapLog/getPage',
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
    pageList: [ 10, 20, 50, 100],//设置每页显示的数量
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
            sortOrder: params.order //排位命令（desc，asc）
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
                    case 6:
                        return "设备报废"
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
                }
            }}
            ,{field:'orgName', title: '所属机构'}
            ,{field:'startTime', title: '开始时间',formatter:function (value, row, index) {
                return date(row.startTime)
            }}
            ,{field:'endTime', title: '结束时间',formatter:function (value, row, index) {
                return date(row.endTime)
            }}
            ,{field:'personName', title: '执行人'}
            ,{field:'remark', title: '备注',} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
            ,{field:'barcode', title: '操作',events: operateEvents,class:"active1",formatter: addFunctionAlty, width: 145}//表格中增加按钮
        ]
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