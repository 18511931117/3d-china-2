$(function () {
    if (regionIds=='6358538100104232960'){
        loadRegion($("#regionId"),'');
    }else{
        loadRegion($("#regionId"),regionIds);
        $("select[name='regionSelect']").attr("disabled","disabled");
    }

})
// var editObj=null,ptable=null,treeGrid=null,tableId='treeTable',layer=null;
// layui.config({
//     base: '../js/design/extend/'
// }).extend({
//     treeGrid:'treeGrid'
// }).use(['jquery','treeGrid','layer'], function(){
//     var $=layui.jquery;
//     treeGrid = layui.treeGrid;//很重要
//     layer=layui.layer;
//     ptable=treeGrid.render({
//         id:tableId
//         ,elem: '#'+tableId
//         ,url: ctxPath+'org/getList'
//         ,cellMinWidth: 100
//         ,idField:'id'//必須字段
//         ,treeId:'id'//树形id字段名称
//         ,treeUpId:'parentId'//树形父id字段名称
//         ,treeShowName:'name'//以树形式显示的字段
//         ,heightRemove:[".dHead",10]//不计算的高度,表格设定的是固定高度，此项不生效
//         ,height:'400px'
//         ,isFilter:false
//         ,iconOpen:false//是否显示图标【默认显示】
//         ,isOpenDefault:true//节点默认是展开还是折叠【默认展开】
//         ,loading:true
//         ,method:'get'
//         ,isPage:false
//         ,cols: [[
//             {type:'checkbox',sort:true}
//             ,{field:'level', title: '级别'}
//             /*,{field:'id', title: 'id'}*/
//             ,{field:'name', title: '机构名称'}
//             ,{field:'fullCode', title: '编号'}
//             ,{field:'parentId', title: 'parentId'}
//             ,{field:'regionName', title: '所属区域'}
//             ,{width:170,title: '操作', align:'center'/*toolbar: '#barDemo'*/
//                 ,templet: function(d){
//                     var html='';
//                     $("#operateDiv").find("a").each(function(){
//                         html +=this.outerHTML;
//                     });
//                     return html;
//                 }
//             }
//         ]]
//         ,parseData:function (res) {//数据加载后回调
//             return res;
//         }
//         // ,onClickRow:function (index, o) {
//         //     console.log(index,o,"单击！");
//         //     //msg("单击！,按F12，在控制台查看详细参数！");
//         // }
//         // ,onDblClickRow:function (index, o) {
//         //     console.log(index,o,"双击");
//         //     msg("双击！,按F12，在控制台查看详细参数！");
//         // }
//         // ,onCheck:function (obj,checked,isAll) {//复选事件
//         //     console.log(obj,checked,isAll,"复选");
//         //     msg("复选,按F12，在控制台查看详细参数！");
//         // }
//         // ,onRadio:function (obj) {//单选事件
//         //     console.log(obj,"单选");
//         //     msg("单选,按F12，在控制台查看详细参数！");
//         // }
//         // ,
//     });
//
//     treeGrid.on('tool('+tableId+')',function (obj) {
//         if(obj.event === 'del'){//删除行
//             del(obj);
//         }else if(obj.event==="add"){//添加行
//             add(obj);
//         }else if(obj.event=="edit"){
//             edit(obj)
//         }
//     });
// });
//
// function del(obj) {
//     layer.confirm("你确定删除数据吗？如果存在下级节点则一并删除，此操作不能撤销！", {icon: 3, title:'提示'},
//         function(index){//确定回调
//             $.ajax({
//                 url:  "/org/delete",
//                 type: "POST",
//                 data:{
//                     id:obj.data.id,
//                     parentId:obj.data.parentId
//                 },
//                 cache:false,
//                 dataType: "json",
//                 success: function(data){
//                     alert(data.message);
//                     if(data.code=="0"){
//                         layer.close(index);
//                         setTimeout("javascript:location.href='/org'", 1500);
//                     }
//                 },
//                 error:function(err){
//                     alert("服务器内部错误！")
//                 }
//             });
//         },function (index) {//取消回调
//             layer.close(index);
//         }
//     );
// }
//
// var i=1000000;
// //添加
// function add(pObj) {
//     var parentId=pObj.data.parentId;
//     var level= pObj.data.level;
//     //回显数据
//     $("input[name=parentId]").val(parentId);
//     $("input[name=level]").val(level+1);
//     $("input[name=parentFullCode]").val(pObj.data.fullCode);
//
// }
// $("#addOrgs").on("click",function  () {
//     var parentId = $("input[name=parentId]").val();
//     var level=$("input[name=level]").val();
//
//     var parentFullCode= $("input[name=parentFullCode]").val();
//     var name =$("input[name=name]").val();
//     if(name==""){
//         alert("请输入机构名称！！")
//         $("input[name=name]").focus()
//         return
//     }
//
//     var fullCode=$("input[name=fullCode]").val();
//     if(fullCode==""){
//         alert("请输入机构编码！！")
//         $("input[name=fullCode]").focus()
//         return
//     }
//     var regionId= $("#regionId option:selected").val(); //组织机构
//     if(regionId==""){
//         alert("请选择所属区域！！")
//         $("input[name=parentId]").focus()
//         return
//     }
//
//     $.ajax({
//         url:  "/org/add",
//         type: "POST",
//         data:{
//             name:name,
//             parentId:parentId,
//             regionId:regionId,
//             fullCode:fullCode,
//             regionId:regionId,
//             level:level,
//             parentFullCode:parentFullCode
//         },
//         cache:false,
//         dataType: "json",
//         success: function(data){
//             alert(data.message);
//             if(data.code=="0"){
//                 setTimeout("javascript:location.href='/org'", 1500);
//             }
//         },
//         error:function(err){
//             alert("服务器内部错误！")
//         }
//     });
// })
//
//
// //跳转修改页面
// function edit(pObj) {
// //回显数据
//     var parentId=pObj.data.parentId;
//     var level= pObj.data.level;
//     //回显数据
//     $("input[name=id]").val(pObj.data.id);
//     $("input[name=parentIds]").val(parentId);
//     $("input[name=levels]").val(level+1);
//     $("input[name=names]").val(pObj.data.name);
//     $("input[name=fullCodes]").val(pObj.data.fullCode);
//     //区域回显
//     regionData("regionSelects",pObj.data.regionId)
//
//     $("input[name=parentFullCodes]").val(pObj.data.fullCode);
//
// }
// function msg(pObj) {
//     console.log(pObj)
// }
//
// //回显区域数据
// function regionData(name,regionId) {
//     var ele = $(":input[name='"+name+"']");
//     ele.html("<option value=''>请选择</option>");
//     $.get(
//         ctxPath +"region/getList",
//         function(data){
//             if(data.code == '0'){
//                 for(var i = 0 ;i<data.data.length;i++){
//                     var obj = data.data[i];
//                     if(obj.id==regionId){
//                         ele.append("<option value='"+obj.id+"' selected>"+obj.name+"</option>");
//                         continue
//                     }
//                     ele.append("<option value='"+obj.id+"'>"+obj.name+"</option>");
//
//                 }
//             }
//         }
//     )
// }
//
// //修改数据提交
// $("#editOrgs").on("click",function () {
//     var parentId = $("input[name=parentIds]").val();
//     var id = $("input[name=id]").val();
//     var level=$("input[name=levels]").val();
//
//     var name =$("input[name=names]").val();
//     if(name==""){
//         alert("请输入机构名称！！")
//         $("input[name=names]").focus()
//         return
//     }
//
//     var fullCode=$("input[name=fullCodes]").val();
//     if(fullCode==""){
//         alert("请输入机构编码！！")
//         $("input[name=fullCodes]").focus()
//         return
//     }
//     var regionId= $("#regionIds option:selected").val(); //组织机构
//     if(regionId==""){
//         alert("请选择所属区域！！")
//         $("input[name=regionIds]").focus()
//         return
//     }
//
//     $.ajax({
//         url:  "/org/update",
//         type: "POST",
//         data:{
//             id:id,
//             name:name,
//             parentId:parentId,
//             regionId:regionId,
//             fullCode:fullCode,
//             regionId:regionId,
//             level:level
//         },
//         cache:false,
//         dataType: "json",
//         success: function(data){
//             alert(data.message);
//             if(data.code=="0"){
//                 setTimeout("javascript:location.href='/org'", 1500);
//             }
//         },
//         error:function(err){
//             alert("服务器内部错误！")
//         }
//     });
// })
var $table=$("#treeTable")

$table.on('post-body.bs.table',function(data){
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
//初始化操作按钮的方法
window.operateEvents = {
    'click #deleteOrg': function (e, value, row, index) {
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"是否确认删除此机构?",
            btn:["关闭","确定"],
            callBack1:function () {
                console.log("取消")
            },
            callBack2:function () {
                $.ajax({
                    url:  ctxPath+"org/delete",
                    type: "POST",
                    data:{
                        id:row.id,
                        parentId:row.parentId
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
                            setTimeout(window.location.href='org', 1500);
                        }
                    },
                    error:function(err){
                        var obj={
                            type:"showSweetAlert",
                            title:"提示",
                            content:'服务器内部错误！',
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
    'click #editOrg1': function (e, value, row, index) {
        //数据回显
         $("#parentIds").val(row.parentId);
        $("#names").val(row.name);
        $("#fullCodes").val(row.fullCode);
        $("#regionIds option:selected").val(row.regionId); //组织机构
        $("#orgId").val(row.id);

        $("#editOrg").modal("show")
        loadRegion($("#regionIds"),row.regionId);
        //在组织机构回显
        var arr=[]
        if(row.parentId==0){
            arr.push(row.id)
        }else{
            arr.push(row.parentId)
        }

        loadOrgTree($("#orgTrees"),'',arr); //加载机构树形
    }
};
function addFunctionAlty(value, row, index) {
    var html=[]
    $("#operateDiv").find("button").each(function(){
        console.log(this.outerHTML)
        if(row.parentId!=0){
            html.push(this.outerHTML)
        }

    });
    return html.join('')
}
$(function() {
    $.ajax({
        url: ctxPath+'org/getList',
        type:'get',
        //这儿的三个参数其实就是XMLHttpRequest里面带的信息。
        success: function(data){
            if(data.code = '0'){
                $table.bootstrapTable({
                    data:data.data,
                    idField: 'id',
                    dataType:'jsonp',
                    columns: [
                        { field: 'check',  checkbox: true, formatter: function (value, row, index) {
                                if (row.check == true) {
                                    //设置选中
                                    return {  checked: true };
                                }
                            }
                        },
                        { field: 'name',  title: '菜单名称'},
                        { field: 'level',  title: '级别'},
                        { field: 'fullCode',  title: '编码'},
                        { field: 'regionName',  title: '所属区域'},
                        { field: 'id', title: '操作', events : operateEvents, formatter: addFunctionAlty,width:145 },
                    ],

                    // bootstrap-table-treegrid.js 插件配置 -- start

                    //在哪一列展开树形
                    treeShowField: 'name',
                    //指定父id列
                    parentIdField: 'parentId',

                    onResetView: function(data) {
                        $table.treegrid({
                            initialState: 'collapsed',// 所有节点都折叠
                            treeColumn: 1,
                            onChange: function() {
                                $table.bootstrapTable('resetWidth');
                            }
                        });

                        //只展开树形的第一级节点
                        $table.treegrid('getRootNodes').treegrid('expand');

                    },
                    onCheck:function(row){
                        var datas = $table.bootstrapTable('getData');
                        // 勾选子类
                        selectChilds(datas,row,"id","pid",true);

                        // 勾选父类
                        selectParentChecked(datas,row,"id","parentId")

                        // 刷新数据
                        $table.bootstrapTable('load', datas);
                    },

                    onUncheck:function(row){
                        var datas = $table.bootstrapTable('getData');
                        selectChilds(datas,row,"id","parentId",false);
                        $table.bootstrapTable('load', datas);
                    },
                    // bootstrap-table-treetreegrid.js 插件配置 -- end
                });

            }
        }
    })
});

//构建部门树形目录

$("#myModal").on("show.bs.modal",function(){
    //清空
    $("#addForm").find('input[type=text],select').each(function() {
        $(this).val('');
    });
    loadOrgTree($("#orgTree"),'',[]); //加载机构树形
})


$("#addOrgs").on("click",function  () {
    var parentId = $("#parentId").val();
    if(parentId==""){
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:'请选择上级组织机构！！',
        };
        method.msg_layer(obj);
        $("#parentId").focus()
        return
    }
    var name =$("input[name=name]").val();
    if(name==""){
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:'请输入机构名称！！',
        };
        method.msg_layer(obj);
        $("input[name=name]").focus()
        return
    }

    var fullCode=$("input[name=fullCode]").val();
    if(fullCode==""){
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:'请输入机构编码！！',
        };
        method.msg_layer(obj);
        $("input[name=fullCode]").focus()
        return
    }

    var regionId= $("#regionId option:selected").val(); //组织机构
    if (regionId==''){
        regionId=regionIds
    }
    if(regionId==""){
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:'请选择所属区域！！',
        };
        method.msg_layer(obj);
        $("input[name=parentId]").focus()
        return
    }

    var buttonEle = $(this);
    buttonEle.attr("disabled",true).attr("readonly",true);
    $.ajax({
        url:  ctxPath+"org/add",
        type: "POST",
        data:{
            name:name,
            parentId:parentId,
            regionId:regionId,
            fullCode:fullCode,
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
                setTimeout(window.location.href='org', 1500);
            }
            buttonEle.removeAttr("disabled").removeAttr("readonly");
        },
        error:function(err){
            var obj={
                type:"showSweetAlert",
                title:"提示",
                content:'服务器内部错误！',
            };
            method.msg_layer(obj);
            buttonEle.removeAttr("disabled").removeAttr("readonly");
        }
    });
})

//修改数据提交
$("#editOrgs").on("click",function () {

    var parentId = $("#parentIds").val();

    var id = $("#orgId").val();

    var name =$("#names").val();
    if(name==""){
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:'请输入机构名称！！',
        };
        method.msg_layer(obj);
        $("#names").focus()
        return
    }

    var fullCode=$("#fullCodes").val();
    if(fullCode==""){
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:'请输入机构编码！！',
        };
        method.msg_layer(obj);
        $("#fullCodes").focus()
        return
    }
    var regionId= $("#regionIds option:selected").val(); //组织机构
    if(regionId==""){
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:'请选择所属区域！！',
        };
        method.msg_layer(obj);
        $("input[name=regionIds]").focus()
        return
    }
    var buttonEle = $(this);
    buttonEle.attr("disabled",true).attr("readonly",true);
    $.ajax({
        url:  ctxPath+"org/update",
        type: "POST",
        data:{
            id:id,
            name:name,
            parentId:parentId,
            fullCode:fullCode,
            regionId:regionId,
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
                setTimeout(window.location.href=ctxPath+'org', 1500);
            }
            buttonEle.removeAttr("disabled").removeAttr("readonly");
        },
        error:function(err){
            var obj={
                type:"showSweetAlert",
                title:"提示",
                content:'服务器内部错误！',
            };
            method.msg_layer(obj);
            buttonEle.removeAttr("disabled").removeAttr("readonly");
        }
    });
})

