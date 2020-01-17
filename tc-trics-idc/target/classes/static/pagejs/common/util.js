$.fn.serializeObject = function()
{
    var o = {};
    var a = this.serializeArray();
    $.each(a, function() {
        if (o[this.name] !== undefined) {
            if (!o[this.name].push) {
                o[this.name] = [o[this.name]];
            }
            o[this.name].push(this.value || '');
        } else {
            o[this.name] = this.value || '';
        }
    });
    return o;
};


function getTreeAttr(treeName,attrName,data) {
    var ref = $('[name="'+treeName+'"]').jstree(true);
    var sel = ref.get_selected(false);
    var totalSel = sel.toString();

    for (var i = 0;i<data.length;i++){
        if(data[i].id == totalSel){
            return data[i][attrName];
        }
    }
}


function feedBackVal(pdom,json) {

    console.log(json)
    for(var p in json){//遍历json对象的每个key/value对,p为key
        pdom.find(":input[name='"+p+"']").val(json[p]);
        if(p != 'valType'&& pdom.is('select')){
            pdom.find(":input[name='"+p+"']").attr("title",json[p]);
        }
    }
}
//日期转换
function date(dateStr) {
    var dateee = new Date(dateStr).toJSON();
    var date = new Date(+new Date(dateee)+8*3600*1000).toISOString().replace(/T/g,' ').replace(/\.[\d]{3}Z/,'');
    return date;
}


function removeAaary(_arr, _obj) {
    var length = _arr.length;
    for (var i = 0; i < length; i++) {
        if (_arr[i] == _obj) {
            if (i == 0) {
                _arr.shift(); //删除并返回数组的第一个元素
                return _arr;
            }
            else if (i == length - 1) {
                _arr.pop();  //删除并返回数组的最后一个元素
                return _arr;
            }
            else {
                _arr.splice(i, 1); //删除下标为i的元素
                return _arr;
            }
        }
    }
}


function checkNull(eles,data) {
    var back = true;
    for (var key in data){
        var ele =  eles.find(":input[name='"+key+"']");
        if(ele.hasClass("verification") && ele.val() == '' ){
            var obj={
                type:"showSweetAlert",
                title:"提示",
                content:ele.attr("placeholder"),
            };
            method.msg_layer(obj);
            back = false;
            break;
        }
    }
    return back;
}

/*

Array.prototype.remove = function(val) {
    var index = this.indexOf(val);
    if (index > -1) {
        this.splice(index, 1);
    }
};*/
