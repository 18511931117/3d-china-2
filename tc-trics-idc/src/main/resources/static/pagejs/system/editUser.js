$(function () {
    loadOrg("upOrgSelect");
    loadRole("upRoleSelect")
})
//加载角色列表
function  loadRole(name) {

    var ele = $(":input[name='"+name+"']");
    ele.html("<option value=''>请选择</option>");
    $.get(
        ctxPath +"role/getRole",
        function(data){
            if(data.code == '0'){
                var roleId=$("#roleId").val();
                for(var i = 0 ;i<data.data.length;i++){
                    var obj = data.data[i];
                    if(roleId==obj.id){
                        ele.append("<option value='"+obj.id+"' selected>"+obj.roleName+"</option>");
                    }else {
                        ele.append("<option value='"+obj.id+"'>"+obj.roleName+"</option>");
                    }

                }
            }
        }
    )
}

//加载组织机构列表
function loadOrg(name) {
    var ele = $(":input[name='"+name+"']");
    ele.html("<option value=''>请选择</option>");
    $.get(
        ctxPath +"org/getOrgAll",
        function(data){
            var orgId=$("#orgId").val();
            if(data.code == '0'){
                for(var i = 0 ;i<data.data.length;i++){
                    var obj = data.data[i];
                    if(obj.id==orgId){
                        ele.append("<option value='"+obj.id+"'  selected>"+obj.name+"</option>");
                    }else {
                        ele.append("<option value='"+obj.id+"'>"+obj.name+"</option>");
                    }

                }
            }
        }
    )
}

//表单提交校验
layui.use('layer', function(){
    var layer = layui.layer;
    $("#edit").click(function(){
        var id=$("#userId").val();
        var name =  $("#name").val();
        if(name==""){
            layer.msg("请输入姓名！！")
            $("#name").focus();
            return;
        }
        var username =  $("#username").val();
        if(username==""){
            layer.msg("请输入账号！！")
            $("#username").focus();
            return;
        }
        var email =  $("#email").val();
        var reg = /^([a-zA-Z]|[0-9])(\w|\-)+@[a-zA-Z0-9]+\.([a-zA-Z]{2,4})$/;
        if(email==""){
            layer.msg("请输入邮箱！！")
            $("#email").focus()
            return;
        }
        if(!reg.test(email)){
            layer.msg("请输入正确的邮箱地址！！");
            return;
        }
        var workNum =$("#workNum").val()
        if(workNum==""){
            layer.msg("请输入工号！！！")
            $("#workNum").focus()
            return;
        }

        var orgId = $("#org option:selected").val(); //组织机构
        if(orgId==""){
            layer.msg("请选择机构！！")
            $("#org").focus()
            return;
        }

        var roleId = $("#role option:selected").val(); //角色
        if(roleId==""){
            layer.msg("请选择角色！！")
            $("#role").focus();
            return;
        }


        var password =$("#password").val()
        if(password==""){
            layer.msg("请输入密码！！");
            $("#password").focus()
            return;
        }
        var isQuit =$("input[type='radio']:checked").val();

        $.ajax({
            url:  "/user/update",
            type: "POST",
            data:{
                id:id,
                name:name,
                username:username,
                email:email,
                workNum:workNum,
                orgId:orgId,
                roleId:roleId,
                password:password,
                isQuit:isQuit
            },
            cache:false,
            dataType: "json",
            success: function(data){
                layer.msg(data.message);
                if(data.code=="0"){
                    setTimeout("javascript:location.href='/user'", 1500);
                }
            },
            error:function(err){
                layer.msg("服务器内部错误！")
            }
        });
    });
    $("#back").click(function(){
        window.location.href=ctxPath+"user"
    });

});


