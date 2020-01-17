$(function () {
    loadExtTypeSelect("valType",$("#valType").val());

    $("select[name='isQuery']").val($("#isQuery").val())
    
    $("button[name='commit_button']").click(function () {
        $.ajax({
            url: ctxPath +"resExtCfg/updateResExtCfg",
            type:'post',
            data:$("#edit").serialize(),
            //这儿的三个参数其实就是XMLHttpRequest里面带的信息。
            success: function(data){
                if(data.code = '0'){
                    layui.layer.msg("添加成功");
                }else{
                    layui.layer.error("添加失败!")
                }
            }
        })
    })
})