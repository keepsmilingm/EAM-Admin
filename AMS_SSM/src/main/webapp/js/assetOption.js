function getAsset(){
    $.ajax({
        data: JSON.stringify({
            id: getUrlParam()
        }),
        url: "${pageContext.request.contextPath}/asset/findByIdJson.do",
        dataType: "JSON",
        contentType: "application/json",
        type: "post",
        async: true,  //要返回参数给上级函数,需要令async=false
        success: function (datas) {
            loadData(datas.data)
        }
    });
}


//获取多选下的id组为数组
function getCheckedBox(){
    checkbox_arr=[];
    var $inputCheckedArr =$("input[type='checkbox']");//获取input控件
    //拿到被选中checkbox的value
    $inputCheckedArr.each(function () {

        if ($(this).prop('checked') === true && isNumber($(this).val())) {
            //4.将每个input的值放进结果集
            console.log($(this).val());
            checkbox_arr.push($(this).val());
        }
    });
    console.log(checkbox_arr);

}
function getUrlParam(variable)
{
    var query = window.location.search.substring(1);
    var vars = query.split("&");
    for (var i=0;i<vars.length;i++) {
        var pair = vars[i].split("=");
        if(pair[0] == variable){return pair[1];}
    }
    return(false);
}



//判断字符串是否是数字
function isNumber(val) {
    var regPos = /^\d+(\.\d+)?$/; //非负浮点数
    var regNeg = /^(-(([0-9]+\.[0-9]*[1-9][0-9]*)|([0-9]*[1-9][0-9]*\.[0-9]+)|([0-9]*[1-9][0-9]*)))$/; //负浮点数
    if(regPos.test(val) || regNeg.test(val)) {
        return true;
    } else {
        return false;
    }
}


//按名称得到地址栏参数
function getUrlParam(variable)
{
    var query = window.location.search.substring(1);
    var vars = query.split("&");
    for (var i=0;i<vars.length;i++) {
        var pair = vars[i].split("=");
        if(pair[0] == variable){return pair[1];}
    }
    return(false);
}

