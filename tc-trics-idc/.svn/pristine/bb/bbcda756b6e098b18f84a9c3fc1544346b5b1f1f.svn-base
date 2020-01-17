    loadRoomSelect("roomId");

    $("#updateForm").find("select[name='roomId']").change(function () {
        loadRackSelect("rackId",$(this).val(),"updateForm");
    })






    $(function () {
        $.get(
            ctxPath +"resExtGrp/getList",
            {'resTypeCode':'DEV'},
            function(data){
                var ele = $("#updateRow");
                if(data.code == '0'){
                   var dev =  data.data;
                    $.get(
                        ctxPath +"device/getDevicePage",
                        {'id':$(":input[name='id']").val()},
                        function(data){
                            if(data.code == '0'){
                                var bean =  data.data[0];
                                $(":input[name='roomId']").val(bean.roomId);

                                loadRackSelect("rackId",bean.roomId,"updateForm",bean.rackId);

                                $(":input[name='sheft']").val(bean.sheft);
                                $(":input[name='resTypeCode']").val(bean.resTypeCode);
                                $(":input[name='name']").val(bean.name);
                                $(":input[name='tid']").val(bean.tid);
                                $(":input[name='owner']").val(bean.owner);
                                $(":input[name='operator']").val(bean.operator);

                                for(var i = 0 ;i<dev.length;i++){
                                    var obj = dev[i];
                                    var str = "<div>" +
                                        "  <div class='row-fulid' style='background: #00a6b2;margin: 15px 0'>" +
                                        "  <header style='color: #fff;padding: 5px';>"+obj.extGrpName+"</header>" +
                                        "  </div><div class='row'>";
                                    var resExtCfgList = obj.resExtCfgList;
                                    for (var j = 0;j<resExtCfgList.length;j++){
                                        str+= "<div class='form-group col-sm-2'>" +
                                            "  <label for=''>"+resExtCfgList[j].itemName+"</label>" +
                                            "  <input class='form-control ext' value='"+(eval("bean."+resExtCfgList[j].itemCode) != '' && eval("bean."+resExtCfgList[j].itemCode) != undefined ? eval("bean."+resExtCfgList[j].itemCode) : '') +"' name='"+resExtCfgList[j].itemCode+"'  placeholder='"+resExtCfgList[j].itemName+"'>" +
                                            "  </div>";
                                    }
                                    str+= "</div></div>";
                                    ele.append(str);
                                }
                            }
                        })


                }
            })
    })