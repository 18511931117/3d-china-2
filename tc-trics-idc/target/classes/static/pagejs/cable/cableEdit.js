$(function () {
    loadRoomSelect("room1Id",$("#room1Id").val());
    loadRoomSelect("room2Id",$("#room2Id").val());

    $("#edit").find("select[name='room2Id']").change(function () {
        loadRackSelect("rack2Id", $(this).val(), "edit");
    })

    $("#edit").find("select[name='room1Id']").change(function () {
        loadRackSelect("rack1Id",$(this).val(),"edit");
    })

    loadRackSelect("rack1Id",$("#room1Id").val(),"edit",$("#rack1Id").val());

    loadRackSelect("rack2Id", $("#room2Id").val(), "edit",$("#rack2Id").val());


    $("#edit").find("select[name='rack1Id']").change(function () {
        loadDevSelect("res1Id", $(this).val(), "edit");
    })

    $("#edit").find("select[name='rack2Id']").change(function () {
        loadDevSelect("res2Id",$(this).val(),"edit");
    })


    loadDevSelect("res1Id",$("#rack1Id").val(),"edit",$("#res1Id").val());
    loadDevSelect("res2Id",$("#rack2Id").val(),"edit",$("#res2Id").val());


})