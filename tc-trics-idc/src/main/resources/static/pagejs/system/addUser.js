$(function () {
    loadOrg($("#orgSelect"));
    loadRole("roleSelect")

})
//表单提交校验
layui.use('layer', function(){
    var layer = layui.layer;
    $("#test").click(function(){
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

        var orgId = $("#orgSelect option:selected").val(); //组织机构

        if(orgId==""){
            layer.msg("请选择机构！！")
            $("#orgSelect").focus()
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
            url:  "/user/add",
            type: "POST",
            data:{
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
});

