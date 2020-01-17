$(function () {
    loadRoomSelect("roomId");

    $("button[name='commit_button']").click(function () {

        $("#add").find(".verification").each(function () {
            if($(this).val() ==''){
                alert($(this).attr("placeholder"));
            }
        })

        /*$.ajax({
            url: ctxPath +"rack/addRack",
            type:'post',
            data:$("#add").serialize(),
            //这儿的三个参数其实就是XMLHttpRequest里面带的信息。
            success: function(data){
                if(data.code = '0'){
                    layui.layer.msg("添加成功");
                    location.href =  ctxPath+"rack/toRack"
                }else{
                    layui.layer.error("添加失败!")
                }
            }
        })*/
    })
})