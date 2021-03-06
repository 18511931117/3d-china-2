var columnsArray = {};
var urlArray = {};
function loadTable(dom,columns,url,queryPram){
    columnsArray[''+dom.attr("id")] = columns;
    urlArray[''+dom.attr("id")] = url;

    dom.bootstrapTable({
        url: url,
        method: 'GET',
        uniqueId: 'id',                        // 绑定ID，不显示
        striped: true,                         //是否显示行间隔色
        cache: false,                          //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
        sortable: true,                        //是否启用排序
        sidePagination: "server",              //分页方式：client客户端分页，server服务端分页（*）
        //undefinedText: '--',
        strictSearch: true,
        //clickToSelect: true,                   // 点击选中行
        pagination: true,                      //是否显示分页
        pageNumber:1,                          //初始化加载第一页，默认第一页,并记录
        pageSize:10,//每页显示的数量
        pageList: [5, 10, 20, 50, 100],//设置每页显示的数量
        paginationPreText:"上一页",
        paginationNextText:"下一页",
        paginationLoop:false,
        //得到查询的参数
        queryParams : function (params) {
            var query = {};
            //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
            var temp = {
                limit: params.limit,                         //页面大小
                page: (params.offset / params.limit) + 1,   //页码
                sort: params.sort,      //排序列名
                sortOrder: params.order //排位命令（desc，asc）
            };
            if(queryPram != undefined && queryPram != null && queryPram != ''){
                extend(query,[temp,queryPram]);
            }else{
                extend(query,[temp,{}]);
            }
            return query;
        },
        columns:columns,
        onClick : function(row, tr,flied){
            console.log(tr);
        }
    });
}


function setDataloadTable(dom,columns,data){
    dom.bootstrapTable({
        //url: url,
        data:data,
        method: 'GET',
        uniqueId: 'id',                        // 绑定ID，不显示
        striped: true,                         //是否显示行间隔色
        cache: false,                          //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
        sortable: true,                        //是否启用排序
        sidePagination: "server",              //分页方式：client客户端分页，server服务端分页（*）
        //undefinedText: '--',
        strictSearch: true,
        clickToSelect: true,                   // 点击选中行
        //pagination: true,                      //是否显示分页
        pageNumber:1,                          //初始化加载第一页，默认第一页,并记录
        pageSize:10,//每页显示的数量
        pageList: [5, 10, 20, 50, 100],//设置每页显示的数量
        paginationPreText:"上一页",
        paginationNextText:"下一页",
        paginationLoop:false,
        columns:columns
    });
}



function setDataloadPageTable(dom,columns,data){
    dom.bootstrapTable({
        //url: url,
        data:data,
        method: 'GET',
        uniqueId: 'id',                        // 绑定ID，不显示
        striped: true,                         //是否显示行间隔色
        cache: false,                          //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
        sortable: true,                        //是否启用排序
        sidePagination: "client客户端分页",              //分页方式：client客户端分页，server服务端分页（*）
        //undefinedText: '--',
        strictSearch: true,
        clickToSelect: true,                   // 点击选中行
        pagination: true,                      //是否显示分页
        pageNumber:1,                          //初始化加载第一页，默认第一页,并记录
        pageSize:10,//每页显示的数量
        pageList: [5, 10, 20, 50, 100],//设置每页显示的数量
        paginationPreText:"上一页",
        paginationNextText:"下一页",
        paginationLoop:false,
        columns:columns
    });
}

function refreshfTable(dom,page,queryPram) {
        /*var query = {};
        var temp = {
            page:page,
            pageNumber:1
        };
        if(queryPram != undefined){
            extend(query,[temp,queryPram]);
        }else{
            extend(query,[temp,{}]);
        }

        var opt = {
            query:query
        };*/

    dom.bootstrapTable('destroy');
    loadTable(dom,columnsArray[''+dom.attr("id")],urlArray[''+dom.attr("id")],queryPram);
    //dom.bootstrapTable('refreshOptions', opt);

}


function extend(des, src, override){
    if(src instanceof Array){
        for(var i = 0, len = src.length; i < len; i++)
            extend(des, src[i], override);
    }
    for( var i in src){
        if(override || !(i in des)){
            des[i] = src[i];
        }
    }
    return des;
}



