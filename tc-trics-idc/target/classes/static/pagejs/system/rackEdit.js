$(function () {
    loadRoomSelect("roomId",$("#roomId").val());

    $("button[name='commit_button']").click(function () {
        $.ajax({
            url: ctxPath +"rack/updateRack",
            type:'post',
            data:$("#edit").serialize(),
            //这儿的三个参数其实就是XMLHttpRequest里面带的信息。
            success: function(data){
                if(data.code = '0'){
                    layui.layer.msg("添加成功");
                    location.href =  ctxPath+"rack/toRack"
                }else{
                    layui.layer.error("添加失败!")
                }
            }
        })
    })
})