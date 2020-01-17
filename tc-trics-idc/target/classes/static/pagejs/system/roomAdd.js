$(function () {
    loadRegione("regionId");
    layui.use(['table','tree'], function() {
        var tree = layui.tree;
        loadOrgTree(tree,"orgSelectTree",'','',false);
        $("select[name='regionId']").change(function () {
            loadOrgTree(tree,"orgSelectTree",$(this).val(),'',true);
        })
    })
    //data.orgId =
    
    $("[name='commit_button']").click(function () {

        var data = $("#add").serializeObject();

        data.orgId = getTreeAttr("orgSelectTree",'parentId',treeData);

        console.log(data);

        $.ajax({
            url: ctxPath +"room/addRoom",
            type:'post',
            data:data,
            //这儿的三个参数其实就是XMLHttpRequest里面带的信息。
            success: function(data){
                if(data.code = '0'){
                    layui.layer.msg("添加成功");
                    location.href =  ctxPath+"room/toRoom"
                }else{
                    layui.layer.error("添加失败!")
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