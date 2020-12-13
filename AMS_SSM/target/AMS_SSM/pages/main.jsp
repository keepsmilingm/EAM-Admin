<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>ITCAST - AdminLTE2定制版</title>
    <meta name="description" content="AdminLTE2定制版">
    <meta name="keywords" content="AdminLTE2定制版">

    <!-- Tell the browser to be responsive to screen width -->
    <meta
            content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
            name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <!-- Font Awesome -->
    <!-- Ionicons -->
    <!-- iCheck -->
    <!-- Morris chart -->
    <!-- jvectormap -->
    <!-- Date Picker -->
    <!-- Daterange picker -->
    <!-- Bootstrap time Picker -->
    <!--<link rel="stylesheet" href="${pageContext.request.contextPath}/${pageContext.request.contextPath}/${pageContext.request.contextPath}/plugins/timepicker/bootstrap-timepicker.min.css">-->
    <!-- bootstrap wysihtml5 - text editor -->
    <!--数据表格-->
    <!-- 表格树 -->
    <!-- select2 -->
    <!-- Bootstrap Color Picker -->
    <!-- bootstrap wysihtml5 - text editor -->
    <!--bootstrap-markdown-->
    <!-- Theme style -->
    <!-- AdminLTE Skins. Choose a skin from the css/skins
           folder instead of downloading all of them to reduce the load. -->
    <!-- Ion Slider -->
    <!-- ion slider Nice -->
    <!-- bootstrap slider -->
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- jQuery 2.2.3 -->
    <!-- jQuery UI 1.11.4 -->
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <!-- Bootstrap 3.3.6 -->
    <!-- Morris.js charts -->
    <!-- Sparkline -->
    <!-- jvectormap -->
    <!-- jQuery Knob Chart -->
    <!-- daterangepicker -->
    <!-- datepicker -->
    <!-- Bootstrap WYSIHTML5 -->
    <!-- Slimscroll -->
    <!-- FastClick -->
    <!-- iCheck -->
    <!-- AdminLTE App -->
    <!-- 表格树 -->
    <!-- select2 -->
    <!-- bootstrap color picker -->
    <!-- bootstrap time picker -->
    <!--<script src="${pageContext.request.contextPath}/${pageContext.request.contextPath}/${pageContext.request.contextPath}/plugins/timepicker/bootstrap-timepicker.min.js"></script>-->
    <!-- Bootstrap WYSIHTML5 -->
    <!--bootstrap-markdown-->
    <!-- CK Editor -->
    <!-- InputMask -->
    <!-- DataTables -->
    <!-- ChartJS 1.0.1 -->
    <!-- FLOT CHARTS -->
    <!-- FLOT RESIZE PLUGIN - allows the chart to redraw when the window is resized -->
    <!-- FLOT PIE PLUGIN - also used to draw donut charts -->
    <!-- FLOT CATEGORIES PLUGIN - Used to draw bar charts -->
    <!-- jQuery Knob -->
    <!-- Sparkline -->
    <!-- Morris.js charts -->
    <!-- Ion Slider -->
    <!-- Bootstrap slider -->
    <!-- 页面meta /-->

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/iCheck/square/blue.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/morris/morris.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/datepicker/datepicker3.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.theme.default.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/select2/select2.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.skinNice.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-slider/slider.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/fileupload/css/default.css">
    <link href="${pageContext.request.contextPath}/plugins/fileupload/css/fileinput.css" media="all" rel="stylesheet"
          type="text/css"/>

    <%--	表单验证提示插件--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/diy/sweet-alert/css/sweet-alert.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/plugins/iziToast/css/iziToast.min.css">
</head>

<body class="hold-transition skin-blue sidebar-mini">

<div class="wrapper">

    <!-- 页面头部 -->
    <jsp:include page="header.jsp"></jsp:include>
    <!-- 页面头部 /-->

    <!-- 导航侧栏 -->
    <jsp:include page="aside.jsp"></jsp:include>
    <!-- 导航侧栏 /-->

    <!-- 内容区域 -->
    <div class="content-wrapper">

        <!-- 内容头部 -->
        <section class="content-header">
            <h1>
                资产管理
                <small>全部资产</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="all-admin-index.html"><i
                        class="fa fa-dashboard"></i> 首页</a></li>
                <li><a href="all-order-manage-list.html">资产管理</a></li>
                <li class="active">资产详情</li>
            </ol>
        </section>
        <section class="content">


            <!-- 统计数值 -->
            <div class="row">
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-aqua">
                        <div class="inner">
                            <h3>150</h3>

                            <p>新订单</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-bag"></i>
                        </div>
                        <a href="all-order-manage-list.html" class="small-box-footer">详细 <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-green">
                        <div class="inner">
                            <h3>53<sup style="font-size: 20px">%</sup></h3>

                            <p>转化率</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-stats-bars"></i>
                        </div>
                        <a href="all-ad-statistics-list.html" class="small-box-footer">详细 <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-yellow">
                        <div class="inner">
                            <h3>44</h3>

                            <p>新注册用户</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-person-add"></i>
                        </div>
                        <a href="all-member-manage-list.html" class="small-box-footer">详细 <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-red">
                        <div class="inner">
                            <h3>65</h3>

                            <p>日PV</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-pie-graph"></i>
                        </div>
                        <a href="all-ad-statistics-list.html" class="small-box-footer">详细 <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
            </div>
            <!-- /.row -->


            <!-- 待处理订单 -->
            <div class="box box-primary">
                <div class="box-header with-border">
                    <i class="fa fa-cube"></i>
                    <h3 class="box-title">待处理订单</h3>
                </div>

                <div class="box-body">

                    <!-- 数据表格 -->
                    <div class="table-box">

                        <!--数据列表-->
                        <table id="dataList" class="table table-bordered table-striped table-hover dataTable">
                            <thead>
                            <tr>
                                <th class="">订单号</th>
                                <th class="">产品名称</th>
                                <th class="">会员</th>
                                <th class="">价格</th>
                                <th class="">状态</th>
                                <th class="text-center">操作</th>
                            </tr>
                            </thead>
                            <tbody>

                            <tr>
                                <td>2017020200001</td>
                                <td>西安3日自由行·超级自由行</td>
                                <td>bi'peng0405</td>
                                <td>￥500</td>
                                <td>已取消</td>
                                <td class="text-center">
                                    <button type="button" class="btn bg-olive btn-xs" onclick="location.href=&quot;all-product-line-edit.html&quot;">编辑</button>
                                </td>
                            </tr>

                            <tr>
                                <td>2017020200001</td>
                                <td>西安3日自由行·超级自由行</td>
                                <td>bi'peng0405</td>
                                <td>￥500</td>
                                <td>已出团(待点评)</td>
                                <td class="text-center">
                                    <button type="button" class="btn bg-olive btn-xs" onclick="location.href=&quot;all-product-line-edit.html&quot;">编辑</button>
                                </td>
                            </tr>

                            <tr>
                                <td>2017020200001</td>
                                <td>西安3日自由行·超级自由行</td>
                                <td>bi'peng0405</td>
                                <td>￥500</td>
                                <td>已处理(待付款)</td>
                                <td class="text-center">
                                    <button type="button" class="btn bg-olive btn-xs" onclick="location.href=&quot;all-product-line-edit.html&quot;">编辑</button>
                                </td>
                            </tr>

                            <tr>
                                <td>2017020200001</td>
                                <td>西安3日自由行·超级自由行</td>
                                <td>bi'peng0405</td>
                                <td>￥500</td>
                                <td>已处理(待出团)</td>
                                <td class="text-center">
                                    <button type="button" class="btn bg-olive btn-xs" onclick="location.href=&quot;all-product-line-edit.html&quot;">编辑</button>
                                </td>
                            </tr>

                            <tr>
                                <td>2017020200001</td>
                                <td>西安3日自由行·超级自由行</td>
                                <td>bi'peng0405</td>
                                <td>￥500</td>
                                <td>已取消</td>
                                <td class="text-center">
                                    <button type="button" class="btn bg-olive btn-xs" onclick="location.href=&quot;all-product-line-edit.html&quot;">编辑</button>
                                </td>
                            </tr>

                            <tr>
                                <td>2017020200001</td>
                                <td>西安3日自由行·超级自由行</td>
                                <td>bi'peng0405</td>
                                <td>￥500</td>
                                <td>已取消</td>
                                <td class="text-center">
                                    <button type="button" class="btn bg-olive btn-xs" onclick="location.href=&quot;all-product-line-edit.html&quot;">编辑</button>
                                </td>
                            </tr>

                            </tbody>
                        </table>
                        <!--数据列表/-->

                    </div>
                    <!-- 数据表格 /-->

                </div>
                <!-- /.box-body -->

            </div>
            <!-- 待处理订单 /-->

            <!-- 待处理游记 -->
            <div class="box box-success">
                <div class="box-header with-border">
                    <i class="fa fa-book"></i>
                    <h3 class="box-title">待处理游记</h3>
                </div>

                <div class="box-body">

                    <!-- 数据表格 -->
                    <div class="table-box">

                        <!--数据列表-->
                        <table id="dataList" class="table table-bordered table-striped table-hover dataTable">
                            <thead>
                            <tr>
                                <th class="">会员昵称</th>
                                <th class="">游记标题</th>
                                <th class="">发布时间</th>
                                <th class="">状态</th>
                                <th class="text-center">操作</th>
                            </tr>
                            </thead>
                            <tbody>

                            <tr>
                                <td>大王叫我来巡山</td>
                                <td>毕大爷带你游西安（附详细攻略）</td>
                                <td>2017-03-07 17:45</td>
                                <td>待审核</td>
                                <td class="text-center">
                                    <button type="button" class="btn bg-olive btn-xs" onclick="location.href=&quot;all-travellog-manage-edit.html&quot;">编辑</button>
                                </td>
                            </tr>

                            <tr>
                                <td>大王叫我来巡山</td>
                                <td>毕大爷带你游西安（附详细攻略）</td>
                                <td>2017-03-07 17:45</td>
                                <td>已发布</td>
                                <td class="text-center">
                                    <button type="button" class="btn bg-olive btn-xs" onclick="location.href=&quot;all-travellog-manage-edit.html&quot;">编辑</button>
                                </td>
                            </tr>

                            <tr>
                                <td>大王叫我来巡山</td>
                                <td>毕大爷带你游西安（附详细攻略）</td>
                                <td>2017-03-07 17:45</td>
                                <td>待审核</td>
                                <td class="text-center">
                                    <button type="button" class="btn bg-olive btn-xs" onclick="location.href=&quot;all-travellog-manage-edit.html&quot;">编辑</button>
                                </td>
                            </tr>

                            <tr>
                                <td>大王叫我来巡山</td>
                                <td>毕大爷带你游西安（附详细攻略）</td>
                                <td>2017-03-07 17:45</td>
                                <td>待审核</td>
                                <td class="text-center">
                                    <button type="button" class="btn bg-olive btn-xs" onclick="location.href=&quot;all-travellog-manage-edit.html&quot;">编辑</button>
                                </td>
                            </tr>

                            <tr>
                                <td>大王叫我来巡山</td>
                                <td>毕大爷带你游西安（附详细攻略）</td>
                                <td>2017-03-07 17:45</td>
                                <td>待审核</td>
                                <td class="text-center">
                                    <button type="button" class="btn bg-olive btn-xs" onclick="location.href=&quot;all-travellog-manage-edit.html&quot;">编辑</button>
                                </td>
                            </tr>

                            <tr>
                                <td>大王叫我来巡山</td>
                                <td>毕大爷带你游西安（附详细攻略）</td>
                                <td>2017-03-07 17:45</td>
                                <td>待审核</td>
                                <td class="text-center">
                                    <button type="button" class="btn bg-olive btn-xs" onclick="location.href=&quot;all-travellog-manage-edit.html&quot;">编辑</button>
                                </td>
                            </tr>


                            </tbody>
                        </table>
                        <!--数据列表/-->

                    </div>
                    <!-- 数据表格 /-->

                </div>
                <!-- /.box-body -->

            </div>
            <!-- 待处理游记 /-->

        </section>
        <script src="${pageContext.request.contextPath}/js/base-message.js"></script>

    </div>
    <!-- 内容区域 /-->


</div>

<script src="${pageContext.request.contextPath}/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/jQuery/jquery.cookie.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/jQueryUI/jquery-ui.min.js"></script>
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/raphael/raphael-min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/morris/morris.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/sparkline/jquery.sparkline.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/knob/jquery.knob.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/daterangepicker/moment.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/datepicker/bootstrap-datepicker.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/fastclick/fastclick.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/iCheck/icheck.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/adminLTE/js/app.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/select2/select2.full.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/markdown.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/to-markdown.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/ckeditor/ckeditor.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.extensions.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/datatables/jquery.dataTables.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/chartjs/Chart.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.resize.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.pie.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.categories.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-slider/bootstrap-slider.js"></script>
<script>window.jQuery || document.write('<script src="${pageContext.request.contextPath}/plugins/fileupload/js/jquery-1.11.0.min.js"><\/script>')</script>
<%--文件上传插件--%>
<script src="${pageContext.request.contextPath}/plugins/fileupload/js/fileinput.js" type="text/javascript"></script>
<!--简体中文-->
<script src="${pageContext.request.contextPath}/plugins/fileupload/js/locales/zh.js" type="text/javascript"></script>
<%--表单验证插件--%>
<script src="${pageContext.request.contextPath}/plugins/diy/is.js"></script>
<script src="${pageContext.request.contextPath}/plugins/diy/diy-validate.js"></script>
<script src="${pageContext.request.contextPath}/plugins/diy/sweet-alert/js/sweet-alert.js"></script>
<%--消息提示--%>
<script src='${pageContext.request.contextPath}/plugins/iziToast/js/iziToast.min.js'></script>
<script src='${pageContext.request.contextPath}/plugins/diy/iziToast-diy.js'></script>


<script>

    $.ajax({
        url: "${pageContext.request.contextPath}/user/findByAccount.do",
        dataType: "JSON",
        contentType: "application/json",
        type: "post",
        async:false,
        success: function (datas) {
            console.log(datas);
            if (datas.state === true) {
                $.addCookie({
                    key:"userInfo",
                    value:datas.data
                })

            }

        }
    });

    $.ajax({
        data: JSON.stringify({
            receiverId:JSON.parse($.getCookie("userInfo")).id,
        }),
        url: "/AMS_SSM/message/findToastMsg.do",
        dataType:"JSON",
        contentType:"application/json",
        type:"post",
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



    $("#getReceiver").click(function () {
        $('#choosePanel').attr("display", "block");
    });
    var picArr = [];//待上传存储图片路径
    $('#file-zh').fileinput({
        language: 'zh',
        uploadUrl: '${pageContext.request.contextPath}/file/fileuploadDemo.do',
        // allowedFileExtensions : ['jpg', 'png','gif'],
        uploadAsync: true //是否为异步上传  同步上传
    });
    //文件上传成功时（fileuploaded）的回调函数，同步上传时无法调用
    $("#file-zh").on("fileuploaded", function (event, data, previewId, index) {
        console.log(data.response.filePath);
        picArr.push(data.response.filePath)
    });
    $(document).ready(function () {
        $("#test-upload").fileinput({
            'showPreview': false,
            'allowedFileExtensions': ['jpg', 'png', 'gif'],
            'elErrorContainer': '#errorBlock'
        });
    });

    function goSubmit() {
        var key_arr = [];
        var value_arr = [];
        var $inputArr = $('.form-control'); //获取input控件
        //3.循环处理input,并定义结果集
        $inputArr.each(function () {
            //4.将每个input的值放进结果集
            value_arr.push($(this).val());
            key_arr.push($(this).attr('name'));
        });
        var submit_data = {};
        addJson(submit_data, key_arr, value_arr); //组织ajax 请求所需data
        picArr = picArr.filter(function (s) {
            return s && s.trim(); // 注：IE9(不包含IE9)以下的版本没有trim()方法
        });
        submit_data.pic = picArr.join(",").trim();

        if (submit_data.pic.substr(0, 1) === ',') {
            submit_data.pic = submit_data.pic.substr(1);
        }
        console.log(submit_data);

        $.ajax({
            data: JSON.stringify(submit_data),
            url: "${pageContext.request.contextPath}/asset/add.do",
            dataType: "JSON",
            contentType: "application/json",
            type: "post",
            success: function (datas) {
                setTimeout(function () {
                    window.location.href = "${pageContext.request.contextPath}/pages/asset-page-list.jsp"
                }, 1000);
            }
        });
    }

    //动态添加json，用于ajax请求时的data{key:value}
    function addJson(data, key_arr, var_arr) {
        for (var i = 0; i < key_arr.length; i++) {
            data[key_arr[i]] = var_arr[i];
        }
        data = JSON.stringify(data);
    }

    $(document).ready(function () {
        // 选择框
        $(".select2").select2();

        // WYSIHTML5编辑器
        $(".textarea").wysihtml5({
            locale: 'zh-CN'
        });
    });

    // 设置激活菜单
    function setSidebarActive(tagUri) {
        var liObj = $("#" + tagUri);
        if (liObj.length > 0) {
            liObj.parent().parent().addClass("active");
            liObj.addClass("active");
        }
    }

    $(document).ready(function () {
        // 激活导航位置
        setSidebarActive("admin-index");
    });

    jQuery.addCookie({
        key: "username",
        value: "${user.username}"
    });
    console.log($.getCookie("username"));
    $('#jsonTest').click(function () {
        $.ajax({
            url: "${pageContext.request.contextPath}/user/findAllJson.do",
            dataType: "json",
            contentType: "application/json;charset=UTF-8",
            type: "post",
            data: JSON.stringify({"username": "hhh", "password": "123"}),
            success: function (data) {
                console.log(data);

                for (var i = 0; i < data.data.length; i++) {
                    console.log(data.data[i].username);
                }

            }
        })
    });


</script>
<script src="${pageContext.request.contextPath}/js/aside.js"></script>
</body>

</html>