function optionToast(option,func){
    swal({
            title: "您确定要"+option+"?",
            // text: "You will not be able to recover this imaginary file!",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#DD6B55",
            confirmButtonText: option,
            cancelButtonText: "取消",
            closeOnConfirm: false,
            closeOnCancel: false
        },
        function(isConfirm){
            if (isConfirm) {
                var flag=func();
                console.log(flag);
                if(flag===true){
                    swal(option+"成功!", "", "success");
                    window.location.reload();
                }else if(flag===false) {
                    swal(option+"失败!", "", "error");
                }

            } else {
                swal("你取消了"+option+"操作", "", "error");
            }
        });
}