// $(function () {
//     initPC(1)
// })
$("#addModel").on("show.bs.modal",function(){
    loadCurrentOrg($(":input[name='orgSelect']"));
    loadRole("roleSelect")
    loadRoomSelectAll($(":input[name='roomSelect']"))
})
//PC与手持机搜索
$("#queryUser").on("click",function () {
    $("#test").bootstrapTable("refresh", {
        silent: true //静态刷新
    });
})
//读写器搜索
$("#dxq_queryUser").on("click",function () {
    $("#test").bootstrapTable("refresh", {
        silent: true //静态刷新
    });
})
//表单提交校验
$("#addUser").click(function(){
        var addUserType = $("#addUserType").val();
        if(addUserType==1){
            addPC(addUserType)
        }else if(addUserType==2){
            addSCJ(addUserType)
        }else if (addUserType==3){
            addDXQ(addUserType)
        }

});
//ADD添加PC用户
function addPC(addUserType){
    var name =  $("#name").val();
    if(name==""){
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"请输入姓名",
        };
        method.msg_layer(obj);
        $("#name").focus();
        return;
    }
    var username =  $("#username").val();
    if(username==""){
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"请输入账号",

        };
        method.msg_layer(obj);
        $("#username").focus();
        return;
    }
    var email =  $("#email").val();
    var reg = /^([a-zA-Z]|[0-9])(\w|\-)+@[a-zA-Z0-9]+\.([a-zA-Z]{2,4})$/;
    if(email==""){
        // layer.msg("请输入邮箱！！")
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"请输入邮箱",

        };
        method.msg_layer(obj);
        $("#email").focus()
        return;
    }
    if(!reg.test(email)){
        //  layer.msg("请输入正确的邮箱地址！！");
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"请输入正确的邮箱地址",

        };
        method.msg_layer(obj);
        return;
    }
    var workNum =$("#workNum").val()
    if(workNum==""){
        //   layer.msg("请输入工号！！！")
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"请输入工号",

        };
        method.msg_layer(obj);
        $("#workNum").focus()
        return;
    }

    var orgId = $("#orgSelect option:selected").val(); //组织机构

    if(orgId==""){
        //  layer.msg("请选择机构！！")
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"请选择机构",

        };
        method.msg_layer(obj);
        $("#orgSelect").focus()
        return;
    }

    var roleId = $("#role option:selected").val(); //角色
    if(roleId==""){
        //   layer.msg("请选择角色！！")
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"请选择角色",

        };
        method.msg_layer(obj);
        $("#role").focus();
        return;
    }


    var password =$("#password").val()
    if(password==""){
        // layer.msg("请输入密码！！");
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"请输入密码",

        };
        method.msg_layer(obj);
        $("#password").focus()
        return;
    }
    var isQuit =$("input[type='radio']:checked").val();
    var buttonEle = $("#addUser");
    buttonEle.attr("disabled",true).attr("readonly",true);
    $.ajax({
        url:  ctxPath+"user/add",
        type: "POST",
        data:{
            name:name,
            username:username,
            email:email,
            workNum:workNum,
            orgId:orgId,
            roleId:roleId,
            password:password,
            isQuit:isQuit,
            userType:addUserType
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
                setTimeout(window.location.href=ctxPath+'user?state='+addUserType, 1500);
            }
            buttonEle.removeAttr("disabled").removeAttr("readonly");
        },
        error:function(err){
            // layer.msg("服务器内部错误！")
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
//add添加手持机
function addSCJ(addUserType){
    var name =  $("#scj_name").val();
    if(name==""){
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"请输入姓名",
        };
        method.msg_layer(obj);
        $("#scj_name").focus();
        return;
    }
    var username =  $("#scj_username").val();
    if(username==""){
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"请输入账号",

        };
        method.msg_layer(obj);
        $("#scj_username").focus();
        return;
    }
    var email =  $("#scj_email").val();
    var reg = /^([a-zA-Z]|[0-9])(\w|\-)+@[a-zA-Z0-9]+\.([a-zA-Z]{2,4})$/;
    if(email==""){
        // layer.msg("请输入邮箱！！")
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"请输入邮箱",

        };
        method.msg_layer(obj);
        $("#scj_email").focus()
        return;
    }
    if(!reg.test(email)){
        //  layer.msg("请输入正确的邮箱地址！！");
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"请输入正确的邮箱地址",

        };
        method.msg_layer(obj);
        return;
    }
    var workNum =$("#scj_workNum").val()
    if(workNum==""){
        //   layer.msg("请输入工号！！！")
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"请输入工号",

        };
        method.msg_layer(obj);
        $("#scj_workNum").focus()
        return;
    }

    var orgId = $("#scj_orgSelect option:selected").val(); //组织机构

    if(orgId==""){
        //  layer.msg("请选择机构！！")
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"请选择机构",

        };
        method.msg_layer(obj);
        $("#orgSelect").focus()
        return;
    }

    var roleId = $("#scj_role option:selected").val(); //角色
    if(roleId==""){
        //   layer.msg("请选择角色！！")
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"请选择角色",

        };
        method.msg_layer(obj);
        $("#scj_role").focus();
        return;
    }


    var password =$("#scj_password").val()
    if(password==""){
        // layer.msg("请输入密码！！");
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"请输入密码",

        };
        method.msg_layer(obj);
        $("#scj_password").focus()
        return;
    }
    var buttonEle = $("#addUser");
    buttonEle.attr("disabled",true).attr("readonly",true);
    $.ajax({
        url:  ctxPath+"user/add",
        type: "POST",
        data:{
            name:name,
            username:username,
            email:email,
            workNum:workNum,
            orgId:orgId,
            roleId:roleId,
            password:password,
            userType:addUserType
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
                setTimeout(window.location.href=ctxPath+"user?state="+addUserType, 1500);
            }
            buttonEle.removeAttr("disabled").removeAttr("readonly");
        },
        error:function(err){
            // layer.msg("服务器内部错误！")
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
//add添加读写器
function addDXQ(addUserType){

    var username =  $("#dxq_username").val();
    if(username==""){
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"请输入账号",

        };
        method.msg_layer(obj);
        $("#username").focus();
        return;
    }
    var roomId = $("#dxq_roomId option:selected").val(); //角色
    if(roomId==""){
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"请选择机房！！",

        };
        method.msg_layer(obj);
        $("#roomId").focus();
        return;
    }


    var password =$("#dxq_password").val()
    if(password==""){
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"请输入密码",

        };
        method.msg_layer(obj);
        $("#password").focus()
        return;
    }
    var buttonEle = $("#addUser");
    buttonEle.attr("disabled",true).attr("readonly",true);
    $.ajax({
        url:  ctxPath+"user/addDXQ",
        type: "POST",
        data:{
            username:username,
            password:password,
            userType:addUserType,
            roomId:roomId
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
                setTimeout(window.location.href='/user?state='+addUserType, 1500);
            }
            buttonEle.removeAttr("disabled").removeAttr("readonly");
        },
        error:function(err){
            // layer.msg("服务器内部错误！")
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

window.operatePCEvents = {
    // 用户修改
    'click #edit': function (e, value, row, index) {
        // window.location.href = ctxPath+"user/toEditUser?id="+row.id
        $("#pc_name").val(row.name)
        $("#pc_username").val(row.username)
        $("#pc_email").val(row.email)
        $("#pc_workNum").val(row.workNum)
        $("#pc_userId").val(row.id)
        if(row.isQuit==1){
            $("#option").attr('checked','true');
        }else{
            $("#option1").attr('checked','true');
        }
        loadRole("pc_role",row.roleId)
        loadCurrentOrg($("#pc_org"),row.orgId)
        $("#test1").show()
        $("#editPCModel").modal('show')
    },
    // 用户删除
    'click #del': function (e, value, row, index) {
        var userType = $("#userType").val();
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"<div>是否删除这条数据",
            btn:["关闭","确定"],
            callBack1:function () {
                console.log("取消")
            },
            callBack2:function () {
                $.ajax({
                    url:  ctxPath+"user/delete",
                    type: "POST",
                    data:{
                        userIds:row.id
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
                            setTimeout(window.location.href=ctxPath+'user?state='+userType, 1500);
                        }
                    },
                    error:function(err){
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

    }
};
$("#pcEditUser").click(function () {
    var id=$("#pc_userId").val();
    var name =  $("#pc_name").val();
    if(name==""){
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"请输入姓名！！",

        };
        method.msg_layer(obj);
        $("#pc_name").focus();
        return;
    }
    var username =  $("#pc_username").val();
    if(username==""){
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"请输入账号！！",

        };
        method.msg_layer(obj);
        $("#pc_username").focus();
        return;
    }
    var email =  $("#pc_email").val();
    var reg = /^([a-zA-Z]|[0-9])(\w|\-)+@[a-zA-Z0-9]+\.([a-zA-Z]{2,4})$/;
    if(email==""){
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"请输入邮箱！！",

        };
        method.msg_layer(obj);
        $("#pc_email").focus()
        return;
    }
    if(!reg.test(email)){
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"请输入正确的邮箱地址！！",

        };
        method.msg_layer(obj);
        return;
    }
    var workNum =$("#pc_workNum").val()
    if(workNum==""){
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"请输入工号！！！",

        };
        method.msg_layer(obj);
        $("#pc_workNum").focus()
        return;
    }

    var orgId = $("#pc_org option:selected").val(); //组织机构
    if(orgId==""){
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"请选择机构！！",

        };
        method.msg_layer(obj);
        $("#pc_org").focus()
        return;
    }

    var roleId = $("#pc_role option:selected").val(); //角色
    if(roleId==""){
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"请选择角色！！",

        };
        method.msg_layer(obj);
        $("#pc_role").focus();
        return;
    }


    // var password =$("#pc_password").val()
    // if(password==""){
    //     layer.msg("请输入密码！！");
    //     $("#pc_password").focus()
    //     return;
    // }
    // var isQuit =$("input[name='optionsRadios']:checked").val();
    var isQuit = $(':radio[name="optionsRadios"]:checked').val();
    var buttonEle = $(this);
    buttonEle.attr("disabled",true).attr("readonly",true);
    $.ajax({
        url:  ctxPath+"user/update",
        type: "POST",
        data:{
            id:id,
            name:name,
            username:username,
            email:email,
            workNum:workNum,
            orgId:orgId,
            roleId:roleId,
            // password:password,
            isQuit:isQuit
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
                setTimeout(window.location.href=ctxPath+'user?state=1', 1500);
            }
            buttonEle.removeAttr("disabled").removeAttr("readonly");
        },
        error:function(err){
           // layer.msg("服务器内部错误！")
            buttonEle.removeAttr("disabled").removeAttr("readonly");
        }
    });
})
window.operateSCJvents = {
    // 用户修改
    'click #edit': function (e, value, row, index) {
        $("#pc_name").val(row.name)
        $("#pc_username").val(row.username)
        $("#pc_email").val(row.email)
        $("#pc_workNum").val(row.workNum)
        $("#pc_userId").val(row.id)
        loadRole("pc_role",row.roleId)
        loadCurrentOrg($("#pc_org"),row.orgId)
        $("#test1").hide()
        $("#editPCModel").modal('show')
    },
    // 用户删除
    'click #del': function (e, value, row, index) {
        var userType = $("#userType").val();
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"<div>是否删除这条数据",
            btn:["关闭","确定"],
            callBack1:function () {
                console.log("取消")
            },
            callBack2:function () {
                $.ajax({
                    url:  ctxPath+"user/delete",
                    type: "POST",
                    data:{
                        userIds:row.id
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
                            setTimeout(window.location.href=ctxPath+'user?state='+userType, 1500);
                        }
                    },
                    error:function(err){
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

    }
};
$("#dxqEditUser").click(function () {
    var dxq_id =$("#dxq_id").val()
    var username = $("#dxq1_username").val()
    var roomId = $("#dxq1_roomId option:selected").val();
    if (roomId==''){
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"请选择机房！",

        };
        method.msg_layer(obj);
        $("#dxq1_roomId").focus();
    }
    var password = $("#dxq1_password").val();
    var buttonEle = $(this);
    buttonEle.attr("disabled",true).attr("readonly",true);
    $.ajax({
        url:  ctxPath+"user/updateDXQUser",
        type: "POST",
        data:{
            id:dxq_id,
            username:username,
            roomId:roomId,
            password:password
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
                setTimeout(window.location.href=ctxPath+'user', 1500);
            }
            buttonEle.removeAttr("disabled").removeAttr("readonly");
        },
        error:function(err){
            layer.msg("服务器内部错误！")
            buttonEle.removeAttr("disabled").removeAttr("readonly");
        }
    });
})
window.operateDXQEvents = {
    // 用户修改
    'click #edit': function (e, value, row, index) {
        //账号
        $("#dxq_id").val(row.id)
        $("#dxq1_username").val(row.username)
        loadRoomSelect($("#dxq1_roomId"),row.roomId)
        console.log(row.roomId)
        $("#editDXQModel").modal('show')
    },
    // 用户删除
    'click #del': function (e, value, row, index) {
        var userType = $("#userType").val();
        var obj={
            type:"showSweetAlert",
            title:"提示",
            content:"是否删除这条数据",
            btn:["关闭","确定"],
            callBack1:function () {
                console.log("取消")
            },
            callBack2:function () {
                $.ajax({
                    url:  ctxPath+"user/deleteDXQUser",
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
                            setTimeout(window.location.href=ctxPath+'user?state='+userType, 1500);
                        }
                    },
                    error:function(err){
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

    }
};
//PC
function addFunctionPCAlty(value, row, index) {
    var html=[]
    $("#operateDiv").find("button").each(function(){

        console.log(this.outerHTML)
        html.push(this.outerHTML)
    });
    return html.join('')
}
//SCJ
function addFunctionSCJAlty(value, row, index) {
    var html=[]
    $("#operateDiv").find("button").each(function(){
        console.log(this.outerHTML)
        html.push(this.outerHTML)
    });
    return html.join('')
}
//读写器
function addFunctionDXQAlty(value, row, index) {
    var html=[]
    $("#operateDiv").find("button").each(function(){
        console.log(this.outerHTML)
        html.push(this.outerHTML)
    });
    return html.join('')
}

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

$(":input[name='userType']").change(function () {
    var userType = $("#userType").val();
    console.log(userType)
    if(userType==1){
        initPC(1)
    }else if (userType==2){ //手持机
        initSCJ(2)
    }else{
        initDXQ();
    }
})
//PC
function initPC(userType) {
    $('#test').bootstrapTable('destroy');
    $("#pcSearch").show()
    $("#dxq_Search").hide()
    $('#test').bootstrapTable({
        url: ctxPath+'user/getPage?userType='+userType,
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
        onLoadSuccess:function(){
            //鼠标悬停显示全部内容~
            console.log("1111")
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
                name: $("#queryName").val(),
            };
            return temp;
        },
        columns:
            [{checkbox: true,width: "40"}
                ,{field:'id',title: 'ID',}
                ,{field:'name',title: '姓名',}
                ,{field:'username', title: '账号'}
                ,{field:'orgName', title: '机构',}
                ,{field:'email', title: '邮箱',}
                ,{field:'isQuit', title: '是否离职',formatter:function (value, row, index) {
                    if (row.isQuit==0){
                        return '在职'
                    }else if(row.isQuit==1){
                        return '离职'
                    }


                }}
                ,{field:'createTime', title: '创建时间', formatter:function (value,row,index) {

                    return date(row.createTime)



                }}
                ,{field:'userType', title: '用户类型' ,formatter:function (value,row,index) {



                    if(row.userType==1){
                        return 'PC'
                    }else if(row.userType==2){
                        return '手持机'
                    }else if(row.userType==3){
                        return '读写器'
                    }
                    var values = row.userType;
                    var span=document.createElement('span');
                    span.setAttribute('title',values);
                    span.innerHTML = row.userType;
                    return span.outerHTML;
                }}
                ,{field:'barcode', title: '操作',events: operatePCEvents, class:'active1',formatter: addFunctionPCAlty,width:170 }//表格中增加按钮
            ]
    });
}





//手持机
function initSCJ(userType) {
    $('#test').bootstrapTable('destroy');
    $("#dxq_Search").hide()
    $("#pcSearch").show()
    $('#test').bootstrapTable({
        url: ctxPath+'user/getPage?userType='+userType,
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
                name: $("#queryName").val(),
            };
            return temp;
        },
        columns:
            [{checkbox: true,width: '40'}
                ,{field:'id',title: 'ID',}
                ,{field:'name',title: '姓名',}
                ,{field:'username', title: '账号',}
                ,{field:'orgName', title: '机构',}
                ,{field:'email', title: '邮箱',}
                ,{field:'createTime', title: '创建时间' ,formatter:function (value,row,index) {
                    return date(row.createTime)
                }}
                ,{field:'userType', title: '用户类型' ,formatter:function (value,row,index) {
                    if(row.userType==1){
                        return 'PC'
                    }else if(row.userType==2){
                        return '手持机'
                    }else if(row.userType==3){
                        return '读写器'
                    }
                }}
                ,{field:'barcode', title: '操作',events: operateSCJvents ,class:'active1',formatter: addFunctionSCJAlty,width: 170 }//表格中增加按钮
            ]
    });
}
//读写器
function initDXQ() {
    $('#test').bootstrapTable('destroy');
    $("#pcSearch").hide()
    $("#dxq_Search").show()
    $('#test').bootstrapTable({
        url: ctxPath+'user/getDXQPage',
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
                username: $("#dxq_queryName").val(),
            };
            return temp;
        },
        columns:
            [{checkbox: true,width: 40}
                ,{field:'id',title: 'ID', }
                ,{field:'username', title: '账号'}
                ,{field:'roomName', title: '机房'}
                ,{field:'', title: '用户类型',formatter:function (value,row,index) {
                    return '读写器'
                }}
                ,{field:'loginStatus', title: '登录状态',formatter:function (value,row,index) {
                    if (value==1){
                        return '在线'
                    }else{
                        return '离线'
                    }
                }}
                ,{field:'createdTime', title: '创建时间', formatter:function (value,row,index) {
                    return date(value)
                }}

                ,{field:'barcode', title: '操作', class:'active1',events: operateDXQEvents,formatter: addFunctionDXQAlty,width:170 }//表格中增加按钮
            ]
    });
}

//add新建用户监听下拉框
$(":input[name='addUserType']").change(function () {
    var userType = $("#addUserType").val();
    if(userType==1){
        $("#addSCJ").hide();
        $("#addDXQ").hide()
        $("#addPC").show();
    }else if (userType==2){ //手持机
        $("#addPC").hide();
        $("#addDXQ").hide()
        $("#addSCJ").show();
    }else{
        $("#addPC").hide();
        $("#addSCJ").hide();
        $("#addDXQ").show()
    }
})
