// layui.use('table', function(){
//     var table = layui.table;
//
//     table.render({
//         elem: '#test'
//         ,url:'/sysLog/getPage'
//         ,title: '用户数据表'
//         ,cols: [[
//             {type: 'checkbox'},
//             {field: 'id', title: 'ID',}
//             , {field: 'userName', title: '操作者'}
//             , {field: 'orgName', title: '组织'}
//             , {field: 'ip', title: '操作IP'}
//             , {field: 'path', title: '操作路由'}
//             , {field: 'method', title: '操作方法'}
//             , {field: 'input', title: '操作内容'}
//             ,{field: 'createTime', title: '开始时间' ,templet: function(d){
//                     var dateee = new Date(d.createTime).toJSON();
//                     var date = new Date(+new Date(dateee)+8*3600*1000).toISOString().replace(/T/g,' ').replace(/\.[\d]{3}Z/,'');
//                     return date;
//                 }
//
//             }
//         ]]
//         ,page: true
//     });
//
    $("#export").on('click',function () {
        var data = $("#test").bootstrapTable("getAllSelections");
        if (data==''){
            var obj={
                type:"showSweetAlert",
                title:"提示",
                content:'请选择导出数据！！',
            };
            method.msg_layer(obj);
            return
        }
        var logIds='';
        for (let i = 0; i < data.length; i++) {
            logIds +=data[i].id+",";
        }
        logIds = logIds.substr(0, logIds.length - 1);
        console.log(logIds)
        window.location.href='/sysLog/export?ids='+logIds
    })
//
//
// });

function addFunctionAlty(value, row, index) {
    var html=[]
    $("#operateDiv").find("button").each(function(){
        console.log(this.outerHTML)
        html.push(this.outerHTML)
    });
    return html.join('')
}

$('#test').bootstrapTable({
    url: ctxPath+'sysLog/getPage',
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
        [{checkbox: true,width: "4%"}
            ,{field:'userName',title: '操作者',width:"10%",formatter:function (value,row,index) {
                var values = row.userName;
                var span=document.createElement('span');
                span.setAttribute('title',values);
                span.innerHTML = row.userName;
                return span.outerHTML;
            }}
            ,{field:'orgName', title: '组织',width:"10%",formatter:function (value,row,index) {
                var values = row.orgName;
                var span=document.createElement('span');
                span.setAttribute('title',values);
                span.innerHTML = row.orgName;
                return span.outerHTML;
            }}
            ,{field:'ip', title: '操作IP', width:"5%",formatter:function (value,row,index) {
                var values = row.ip;
                var span=document.createElement('span');
                span.setAttribute('title',values);
                span.innerHTML = row.ip;
                return span.outerHTML;
            } }
            ,{field:'path', title: '操作路由',width:"10%",class:'colStyle'}
            ,{field:'method', title: '操作方法',width:"10%",class:'colStyle'}
            ,{field:'input', title: '操作内容',width:"15%",class:'colStyle'}
            ,{field:'createTime', title: '操作时间',width:"10%",formatter:function (value, row, index) {

                return date(row.createTime)
            }}
        ],
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

function paramsMatter(value, row, index) {
    var values = row.input;
    var span=document.createElement('span');
    span.setAttribute('title',values);
    span.innerHTML = row.input;
    return span.outerHTML;
}
function paramsMatter1(value, row, index) {
    var values = row.method;
    var span=document.createElement('span');
    span.setAttribute('title',values);
    span.innerHTML = row.method;
    return span.outerHTML;
}
function paramsMatter2(value, row, index) {
    var values = row.method;
    var span=document.createElement('span');
    span.setAttribute('title',values);
    span.innerHTML = row.method;
    return span.outerHTML;
}

