iziToast.settings({
    timeout: 2000,
    position: 'center',
    // imageWidth: 50,
    pauseOnHover: true,
    // resetOnHover: true,
    close: true,
    progressBar: true,
    // layout: 1,
    // balloon: true,
    // target: '.target',
    // icon: 'material-icons',
    // iconText: 'face',
    // animateInside: false,
    // transitionIn: 'flipInX',
    // transitionOut: 'flipOutX',
});
function izToast(state,option) {

    switch (state) {
        case "success":
            iziToast.success({
                title: 'OK',
                message: option+'成功',
                // position: 'Center',
                transitionIn: 'bounceInLeft',
                // iconText: 'star',
                // onOpen: function(){
                //     console.log('callback abriu! success');
                // },
                // onClose: function(){
                //     console.log("callback fechou! success");
                // }
            });break;
        case "fail":
            iziToast.error({
                title: 'ERROR',
                message: option+'失败',
                transitionIn: 'bounceInLeft',
                // iconText: 'star',
            });break;

    }

}
function getMsg(des,sender,receiverId,messageId,pic){

    iziToast.show({
        title: sender,
        icon: 'icon-drafts',
        timeout: 5000,
        class: 'info',
        message: des,
        position: 'topCenter',
        image: "/AMS_SSM"+pic,
        // balloon: true,
        buttons: [
            ['<button>查看详情</button>', function (instance, toast) {

                window.location.href="/AMS_SSM/message/findM_CById.do?messageId="+messageId+"&receiverId="+receiverId;
            }],
            ['<button>忽略</button>', function (instance, toast) {


            }]
        ]
    });
};

