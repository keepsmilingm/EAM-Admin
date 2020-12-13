;(function ($,window){
    $.extend({
        //删除cookie 默认情况下只能删除当前路径下的cookie，如果要删其他路径则需要带上路径参数
        DiyValidate: function (key) {
            $("#"+key).validate({
                rules: {
                    username: { required: true, minlength: 2 },
                    password: { required: true, minlength: 6, maxlength: 16 },
                    repassword: { required: true, equalTo: "#password" },
                    amt: { required: true, isAmount: true },
                    idcard: { required: true, isIdCardNo: true }
                },
                messages: {
                    username: {
                        required: "用户名不能为空",
                        minlength: "用户名的最小长度为2"
                    },
                    password: {
                        required: "密码不能为空",
                        minlength: "密码长度不能少于6个字符",
                        maxlength: "密码长度不能超过16个字符"
                    },
                    repassword: {
                        required: "确认密码不能为空",
                        equalTo: "确认密码和密码不一致"
                    },
                    amt: {
                        required: "金额不能为空",
                        isAmount: "交易金额必须大于0，且最多有两位小数"
                    },
                    idcard: {
                        required: "身份证不能为空",
                        isIdCardNo: "身份证号码错误"
                    }
                }
            });
        }

    })
})(jQuery,window);