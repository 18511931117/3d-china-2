$(function () {
    loadRegione("regionId",$("#regionId").val());

    //$('select[name="regionId"]').val($("#regionId").val());


    loadOrgTree("orgSelectTree",$("#regionId").val(),$("#orgId").val());

    $("select[name='regionId']").change(function () {
        loadOrgTree("orgSelectTree",$(this).val());
    })



    //data.orgId =
    
    $("[name='commit_button']").click(function () {


        var data = $("#edit").serializeObject();

        data.orgId = getTreeAttr("orgSelectTree",'parentId',treeData);

        console.log(data);

        $.ajax({
            url: ctxPath +"room/updateRoom",
            type:'post',
            data:data,
            //这儿的三个参数其实就是XMLHttpRequest里面带的信息。
            success: function(data){
                if(data.code = '0'){
                    layui.layer.msg("编辑成功");
                    location.href =  ctxPath+"room/toRoom"
                }else{
                    layui.layer.error("编辑失败!")
                }
            }
        })
    })
})




$('#data').on("changed.jstree", function (e, data) {
    if(data && data.node){
        $('#cur_org_id').val(data.node.id);
        $('#cur_org_name').text(data.node.text);  //选择的node text
        $("#inp_name").val(data.node.text);
        if(data.node.id!=0){
            $('#region_name').text(data.node.original.r1_name+" "+data.node.original.r2_name+" "+data.node.original.r3_name);
        }
        else{
            $('#region_name').text("");
        }
        resetRegion(data.node.original.region1_id,data.node.original.region2_id,data.node.original.region3_id);
    }

});