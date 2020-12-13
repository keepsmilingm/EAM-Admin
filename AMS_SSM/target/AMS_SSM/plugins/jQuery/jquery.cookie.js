;(function (jQuery,window){
    jQuery.extend({
        addCookie: function (option) {
            //1.处理默认保存的路径
            var index = window.location.pathname.lastIndexOf("/");
            var currentPath = window.location.pathname.slice(0, index);
            option.path = option.path || currentPath;
            //若传入了path则取path，否则取currentPath
            //2.处理默认作用域
            option.domain = option.domain || document.domain;
            //3.处理默认的过期时间
            if (!option.expires) {
                if(typeof option.value==="object"){
                    option.value=JSON.stringify(option.value);
                    // console.log("已将对象转换为JSON");
                }
                document.cookie = option.key + "=" + option.value + ";path=" + option.path + ";domain=" + option.domain + ";";
                console.log(typeof (option.value));
            } else {
                if(typeof option.value==="object"){
                    option.value=JSON.stringify(option.value);
                    // console.log("已将对象转换为JSON");
                }
                var date = new Date();
                date.setDate(date.getDate() + option.expires);
                document.cookie = option.key + "=" + option.value + ";path=" + option.path + ";domain=" + option.domain + ";expires=" + date.toUTCString() + ";";
                console.log(typeof (option.value));
            }
        },
        //获取cookie
        getCookie: function (key) {
            var res = document.cookie.split(";");//分割多条cookie
            for (var i = 0; i < res.length; i++) {
                var temp = res[i].split("=");//age=88 这种格式的cookie切割后变成了{"age":"88"}
                if (temp[0].trim() === key) {
                    return temp[1];
                }
            }
        },
        //删除cookie 默认情况下只能删除当前路径下的cookie，如果要删其他路径则需要带上路径参数
        deleteCookie: function (key, path) {
            jQuery.addCookie({key: key, value: jQuery.getCookie(key), expires: -999, path: path})
        }
    })
})(jQuery,window);