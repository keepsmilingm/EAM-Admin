
/**本js是is.js及sweet-alert插件的整合，需要在引入该js之前引入相关js
 <!--必须通过document.querySelector('button').onclick绑定一个点击事件-->
 document.querySelector('button').onclick = function(){
     console.log(startValidate("main"));
 };
 **/




function startValidate(formId){
    console.log("startValidate"+"执行了");
    var flag=false;
    var model = {};
    var x = $("#"+formId).serializeArray();
    $.each(x, function (i, field) {
        model[field.name] = field.value;
        console.log((field.name));
        switch (field.name) {
            case "email":

                return decrease("email",field.value,"邮件");
// decrease("email",field.value,"邮件");//如果为验证通过则啥也不干，跳出switch，验证下一个字段，如果验证不通过，返回一个false,跳出遍历,return true 此处可代替break

            case "mingcheng":
                if(decrease("required",field.value,"用户名")){
                    flag=decrease("username",field.value,"用户名");  //flag的值取决于switch中最后一个case
                    return flag;
                }else{
                    return false;
                }

            default: flag=true; //当项目不需要使用限制时保证不被影响
        }

    });
    return flag;
}



/**
 * @return {boolean}
 */
function Notice(type,status) {
    switch (status) {
        case "success":return true;
        case "emptyError": swal(type+"是必填项!");return false;
        case "formatError": swal(type+"格式不正确!");return false;
    }

}

function decrease(type,value,name) {

    switch (type) {
        case "required":
           return (!is.empty(value) ? Notice(name, "success") : Notice(name, "emptyError"));
        case "email":
            return (is.email(value) ? Notice(name, "success") : Notice(name, "formatError"));
        case "username":
            return (is.diy_username(value) ? Notice(name, "success") : Notice(name, "formatError"));
        case "password":break;
        case "date":break;
        case "bool":break;


    }

}







