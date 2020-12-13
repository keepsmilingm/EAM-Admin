//用于展示aside.jsp
//动态设置侧边导航栏连接
$('.user-name-label').html(JSON.parse($.getCookie("userInfo")).username);
var messageUrl="/AMS_SSM/message/findByType.do?page=1&size=10&userId="+JSON.parse($.getCookie("userInfo")).id +"&checkStatus=0";
var repairUrl="/AMS_SSM/assetOption/findOptionList.do?page=1&size=10&option=Repair&senderId="+JSON.parse($.getCookie("userInfo")).id;
$('#msgJump').attr("href",messageUrl);
$('#repairHerf').attr("href",repairUrl);

var jsonArr=[];
var jsonArr2=[];
//分类消息条数填充
$.ajax({
    data: JSON.stringify({
        receiverId:JSON.parse($.getCookie("userInfo")).id,
}),
    url: "/AMS_SSM/message/findTypeCount.do",
    dataType:"JSON",
    contentType:"application/json",
    type:"post",
    async:false, //关闭异步，确保ajax执行完 jsonArr得到赋值之后再继续执行ajax之后的语句
    success: function (datas) {
    console.log(datas);

    $.addCookie({
        key:"typeCount",
        value:datas
    });
    jsonArr=(JSON.parse($.getCookie("typeCount")).data);


}
});



for(var i=0;i<jsonArr.length;i++){
    //因为li的下标顺序对应数据库中checkStatus的值，所以
    //令下标为对应cehckStatus的下标，保证数据能准确填充的对应的li中
    $($('#headMsgPanel').find('li a span')[jsonArr[i].type]).text(jsonArr[i].typeNum)
    $($('#headMsgPanel').find('li a')[jsonArr[i].type]).attr("href",
        "/AMS_SSM/message/findByType.do?page=1&size=10&userId="+JSON.parse($.getCookie("userInfo")).id+"&type="+jsonArr[i].type)
}



// ajax轮询 实现消息及时通知
// setInterval("loopFind()",2000);

function loopFind() {
    $.ajax({
        data: JSON.stringify({
            receiverId:JSON.parse($.getCookie("userInfo")).id,
        }),
        url: "/AMS_SSM/message/findToastMsgInTime.do",
        dataType:"JSON",
        contentType:"application/json",
        type:"post",
        async:true, //关闭异步，确保ajax执行完 jsonArr得到赋值之后再继续执行ajax之后的语句
        success: function (datas) {
            console.log(datas);
            var jsonArr=[];
            jsonArr=datas.data;
            for(var i=0;i<jsonArr.length;i++){
                jsonArr[i].pic=(jsonArr[i].pic).split(",")[0];
                // setInterval(function(){}, 2000)
                getMsg(jsonArr[i].des,jsonArr[i].sender,jsonArr[i].receiverId,jsonArr[i].messageId,jsonArr[i].pic)
            }


        }
    });

}





