<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
    <%--	文件上传--%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/fileupload/css/default.css">
    <link href="${pageContext.request.contextPath}/plugins/fileupload/css/fileinput.css" media="all" rel="stylesheet"
          type="text/css"/>
    <%--    折叠菜单--%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/toggle/css/styles.css">
    <%--	表单验证提示插件--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/diy/sweet-alert/css/sweet-alert.css">
</head>

<body class="hold-transition skin-blue sidebar-mini" id="body">

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
            <div class="row">
                <div class="col-md-3">
                    <a data-btn-type="titleBtn" data-flag="new" class="btn btn-primary btn-block margin-bottom"
                       href="${pageContext.request.contextPath}/department/findDepList.do">新建部门消息</a>
                    <a data-btn-type="titleBtn" data-flag="new" class="btn btn-primary btn-block margin-bottom"
                       href="${pageContext.request.contextPath}/user/fuzzyQuery.do?page=1&size=10&condition=">新建个人消息</a>

                    <div class="box box-solid">
                        <div class="box-header with-border">
                            <h3 class="box-title">待我审核</h3>

                            <div class="box-tools">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i
                                        class="fa fa-minus"></i>
                                </button>
                            </div>
                        </div>
                        <div class="box-body no-padding" id="folder">
                            <ul class="nav nav-pills nav-stacked" id="checkStatusPanel">
                                <li class="" >
                                    <a onclick=senderChangeOption("Repair")>
                                        <i class="fa fa-inbox"></i>
                                        <p style="display: inline-block">维修</p>
                                        <span class="label label-primary pull-right">0</span>
                                    </a>
                                </li>
                                <li ><a onclick=senderChangeOption("Scrap")><i class="fa fa-envelope-o"></i>
                                    <p style="display: inline-block">报废</p>
                                    <span class="label label-info pull-right">0</span></a></li>

                                <li ><a onclick=senderChangeOption("Allot")><i class="fa fa-trash-o"></i>
                                    <p style="display: inline-block">变更</p>
                                    <span class="label label-danger pull-right">0</span></a></li>
                                <li><a onclick=senderChangeOption("Modify")><i class="fa fa-user-o"></i>
                                    <p style="display: inline-block">盘点</p>
                                    <span class="label label-default pull-right">0</span></a></li>
                                <li ><a onclick=senderChangeOption("Inventory")><i
                                        class="fa fa-file-text-o"></i>
                                    <p style="display: inline-block">移交</p>
                                    <span class="label label-warning pull-right">0</span></a></li>

                            </ul>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /. box -->
                    <div class="box box-solid">
                        <div class="box-header with-border">
                            <h3 class="box-title">我的待审核</h3>

                            <div class="box-tools">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i
                                        class="fa fa-minus"></i>
                                </button>
                            </div>
                        </div>
                        <div class="box-body no-padding">
                            <ul class="nav nav-pills nav-stacked" id="typePanel">
                                <li><a onclick=receiverChangeOption("Repair")><i class="fa fa-tv text-danger"></i>维修列表
<%--                                    <span class="label label-info pull-right">0</span></a></li>--%>
                                <li><a onclick=receiverChangeOption("Scrap")><i class="fa fa-envelope-o text-info"></i>报废列表
<%--                                    <span class="label label-danger pull-right">0</span></a></li>--%>
                                <li><a onclick=receiverChangeOption("Allot")><i class="fa fa-mobile text-success fa-lg"></i>分配列表
<%--                                    <span class="label label-warning pull-right">0</span></a>--%>
                                </li>
                                <li><a onclick=receiverChangeOption("Modify")><i class="fa fa-mobile text-success fa-lg"></i>变更列表
<%--                                    <span class="label label-warning pull-right">0</span></a>--%>
                                </li>
                                <li><a onclick=receiverChangeOption("Inventory")><i class="fa fa-mobile text-success fa-lg"></i>盘点列表
<%--                                    <span class="label label-warning pull-right">0</span></a>--%>
                                </li>
                            </ul>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <div class="box box-solid">
                        <div class="box-header with-border">
                            <h3 class="box-title">消息标记</h3>

                            <div class="box-tools">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i
                                        class="fa fa-minus"></i>
                                </button>
                            </div>
                        </div>
                        <div class="box-body no-padding">
                            <ul class="nav nav-pills nav-stacked">
                                <li><a href="#"><i class="fa fa-star-o text-yellow"></i> 一般消息</a></li>
                                <li><a href="#"><i class="fa fa-star text-yellow"></i> 重要消息</a></li>
                            </ul>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>

                <div class="col-md-9">
                    <div class="box box-primary" id="contentBody"><!--收件箱-->
                        <div class="box box-primary">
                            <div class="box-header with-border">
                                <h3 class="box-title">列表</h3>
                            </div>

                            <div class="box-body">

                                <!-- 数据表格 -->
                                <div class="table-box">

                                    <!--工具栏-->
                                    <div class="pull-left">
                                        <div class="form-group form-inline">
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-default" title="新建"
                                                        onclick="location.href='${pageContext.request.contextPath}/pages/asset-page-list.jsp'">
                                                    <i class="fa fa-file-o"></i> 新建
                                                </button>
                                                <button type="button" class="btn btn-default" title="删除"
                                                        id="deleteItems">
                                                    <i class="fa fa-trash-o"></i> 删除
                                                </button>

                                                <button type="button" class="btn btn-default" title="删除"
                                                        id="generate-excel">
                                                    <i class="fa fa-save"></i> 导出excel
                                                </button>


                                                <a href="#"
                                                   class="btn btn-default" title="刷新">
                                                    <i class="fa fa-refresh"></i> 刷新
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <form action="${pageContext.request.contextPath}/user/findAll.do?" method="post">
                                        <div class="box-tools pull-right">
                                            <div class="has-feedback"
                                                 style="width: 90%;display: inline-block;margin-left: 0;position: relative">
                                                <input type="text" class=" hidden form-control input-sm"
                                                       name="page" value="1">
                                                <input type="text" class="hidden form-control input-sm"
                                                       name="size" value="10">
                                                <input id="condition" type="text" class="form-control input-sm"
                                                       name="conditions">
                                                <button type="submit" class="glyphicon glyphicon-search "
                                                        style="border:none;background-color:#fff;position: absolute;right: 1%;top:20%"></button>
                                            </div>
                                            <%--									<button  type="submit" class="glyphicon glyphicon-search " ></button>--%>
                                            <%--									<a id="fuzzyQuery" type="submit" class="glyphicon glyphicon-search " onclick=fuzzyQuery()></a>--%>
                                        </div>
                                    </form>
                                    <!--工具栏/-->

                                    <!--数据列表-->
                                    <table id="dataList"
                                           class="table table-bordered table-striped table-hover dataTable">
                                        <thead>
                                        <tr>
                                            <th class="" style="padding-right: 0px;"><input
                                                    id="selall" type="checkbox" class="icheckbox_square-blue">
                                            </th>
<%--                                            <th class="">ID</th>--%>
                                            <th id="account" class="orderBy ">资产名称</th>
                                            <th  class="orderBy ">资产编码</th>
                                            <th id="username" class="orderBy  ">审核状态</th>
                                            <th id="status" class="orderBy  ">时间</th>
<%--                                            <th id="gender" class="orderBy  ">状态</th>--%>
<%--                                            <th id="departmentId" class="orderBy  ">发送人</th>--%>
                                            <th class=" text-center">操作</th>
                                        </tr>
                                        </thead>
                                        <tbody>


                                        <c:forEach items="${pageInfo.list}" var="orders">

                                            <tr>
                                                <td><input name="ids" type="checkbox" value="${orders.id }"></td>
                                                <td>${orders.mingcheng }</td>
                                                <td>${orders.bianma }</td>
                                                <td>${orders.checkStatusStr}</td>
                                                <td>${orders.creatTimeStr }</td>

                                                <td class="text-center">
                                                    <button type="button" class="btn bg-olive btn-xs"
                                                            onclick="location.href='${pageContext.request.contextPath}/assetOption/findById.do?id=${orders.id}&option=<%=session.getAttribute("option")%>'">
                                                        详情
                                                    </button>
                                                    <button type="button" class="btn bg-olive btn-xs"
                                                            onclick="location.href='${pageContext.request.contextPath}/assetOption/delete.do?id=${orders.id}&option=<%=session.getAttribute("option")%>'">
                                                        删除
                                                    </button>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>

                                    </table>


                                    <!--工具栏-->


                                </div>
                                <!-- 数据表格 /-->


                            </div>
                            <!-- /.box-body -->

                            <!-- .box-footer-->
                            <div class="box-footer">
                                <div class="pull-left">
                                    <div class="form-group form-inline">
                                        第<span id="pageNum">${pageInfo.pageNum}</span>页，共<span
                                            id="allPages">${pageInfo.pages}</span>页。
                                        <input class="form-control hidden" id="changePageSize" onchange="changePageSize()"
                                               placeholder="${pageInfo.pageSize}"/>

                                    </div>
                                </div>

                                <div class="box-tools pull-right">
                                    <ul class="pagination" style="height: inherit">
                                        <li>
                                            <a href="${pageContext.request.contextPath}/assetOption/findOptionList.do?page=1&size=${pageInfo.pageSize}&senderId=<%=session.getAttribute("senderId")%>&checkerId=<%=session.getAttribute("checkerId")%>&option=<%=session.getAttribute("option")%>"
                                               aria-label="Previous">首页</a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/assetOption/findOptionList.do?page=${pageInfo.pageNum-1}&size=${pageInfo.pageSize}&senderId=<%=session.getAttribute("senderId")%>&checkerId=<%=session.getAttribute("checkerId")%>&option=<%=session.getAttribute("option")%>">上一页</a>
                                        </li>
                                        <%--                           <c:forEach begin=usernd="${pageInfo.pages}" var="pageNum">--%>
                                        <%--							   <li><a href="usereContext.request.contextPath}/asset/findAll.do?page=${pageNum}&size=${pageInfo.pageSize}">${pageNum}</a></li>--%>
                                        <%--						   </c:forEach>--%>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/assetOption/findOptionList.do?page=${pageInfo.pageNum+1}&size=${pageInfo.pageSize}&senderId=<%=session.getAttribute("senderId")%>&checkerId=<%=session.getAttribute("checkerId")%>&option=<%=session.getAttribute("option")%>">下一页</a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/assetOption/findOptionList.do?page=${pageInfo.pages}&size=${pageInfo.pageSize}&senderId=<%=session.getAttribute("senderId")%>&checkerId=<%=session.getAttribute("checkerId")%>&option=<%=session.getAttribute("option")%>"
                                               aria-label="Next">尾页</a>
                                        </li>
                                    </ul>
                                </div>

                            </div>
                            <!-- /.box-footer-->


                        </div>
                    </div>
                </div>
            </div>

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
<script src="${pageContext.request.contextPath}/js/getUrlParam.js"></script>
<%--消息提示--%>
<script src='${pageContext.request.contextPath}/plugins/iziToast/js/iziToast.min.js'></script>
<script src='${pageContext.request.contextPath}/plugins/diy/iziToast-diy.js'></script>
<script src="${pageContext.request.contextPath}/js/aside.js"></script>
<script src="${pageContext.request.contextPath}/js/assetOption.js"></script>
<script>


    <%--var jsonArr=[];--%>
    <%--//收件箱消息条数填充--%>
    <%--$.ajax({--%>
    <%--    data: JSON.stringify({--%>
    <%--        receiverId:<%=session.getAttribute("userId")%>,--%>
    <%--    }),--%>
    <%--    url: "${pageContext.request.contextPath}/message/findCheckCount.do",--%>
    <%--    dataType:"JSON",--%>
    <%--    contentType:"application/json",--%>
    <%--    type:"post",--%>
    <%--    async:false,--%>
    <%--    success: function (datas) {--%>
    <%--        // console.log(datas);--%>
    <%--        $.addCookie({--%>
    <%--            key:"checkStatusCount",--%>
    <%--            value:datas--%>
    <%--        });--%>
    <%--        jsonArr=(JSON.parse($.getCookie("checkStatusCount")).data);--%>
    <%--    }--%>
    <%--});--%>

    <%--var currentCheckStatus=getUrlParam("checkStatus");--%>


    <%--for(var i=0;i<jsonArr.length;i++){--%>
    <%--    //因为li的下标顺序对应数据库中checkStatus的值，所以--%>
    <%--    //令下标为对应cehckStatus的下标，保证数据能准确填充的对应的li中--%>
    <%--    $($('#checkStatusPanel').find('li a span')[jsonArr[i].checkStatus]).text(jsonArr[i].checkStatusNum)--%>
    <%--}--%>
    <%--//分类消息条数填充--%>
    <%--$.ajax({--%>
    <%--    data: JSON.stringify({--%>
    <%--        receiverId:<%=session.getAttribute("userId")%>,--%>
    <%--    }),--%>
    <%--    url: "${pageContext.request.contextPath}/message/findTypeCount.do",--%>
    <%--    dataType:"JSON",--%>
    <%--    contentType:"application/json",--%>
    <%--    type:"post",--%>
    <%--    async:false,--%>
    <%--    success: function (datas) {--%>
    <%--        // console.log(datas);--%>
    <%--        $.addCookie({--%>
    <%--            key:"typeCount",--%>
    <%--            value:datas--%>
    <%--        })--%>
    <%--        jsonArr=(JSON.parse($.getCookie("typeCount")).data);--%>
    <%--    }--%>
    <%--});--%>

    <%--for(var i=0;i<jsonArr.length;i++){--%>
    <%--    console.log(jsonArr[i].type);--%>
    <%--    console.log(jsonArr[i]);--%>
    <%--    //因为li的下标顺序对应数据库中checkStatus的值，所以--%>
    <%--    //令下标为对应cehckStatus的下标，保证数据能准确填充的对应的li中--%>
    <%--    $($('#typePanel').find('li a span')[jsonArr[i].type]).text(jsonArr[i].typeNum)--%>
    <%--}--%>





    //     $('#checkStatusPanel').find('li').each(function() {
    //
    //     if($(this).index()==currentCheckStatus ){
    //         $(this).addClass("active");
    //     }
    // })
    // var currentType=getUrlParam("type");
    //
    // $('#typePanel').find('li').each(function() {
    //     if($(this).index()==currentType ){
    //
    //         $(this).addClass("active");
    //         // $('#checkStatusPanel').find('li').removeClass("active");
    //     }
    // })






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
        // 全选操作
        $("#selall").click(function () {
            var clicks = $(this).is(':checked');
            if (!clicks) {
                $("#dataList td input[type='checkbox']").iCheck("uncheck");
            } else {
                $("#dataList td input[type='checkbox']").iCheck("check");
            }
            $(this).data("clicks", !clicks);
        });
        var ids = [];
        if ($.getCookie("ids") !== "" && $.getCookie("ids") !== undefined) {
            ids = ($.getCookie("ids")).split(",");
        }

        // var ids=($.getCookie("ids")).split(",");
        var classJson = {};
        if ($.getCookie("classJson") !== "" && $.getCookie("classJson") !== undefined) {
            classJson = $.parseJSON($.getCookie("classJson"));
        }

        for (var i = 0; i < ids.length; i++) {
            console.log(ids[i]);
            // var currentId=ids[i];
            // console.log(classJson.ids[i]);
            $('#' + ids[i]).attr("class", classJson[ids[i]]);

        }
    });


    $("#changePageSize").attr("placeholder", ${pageInfo.pageSize});

    function changePageSize() {
        //获取下拉框的值
        var $page = $("#changePageSize")
        var pageSize = $page.val();

        location.href = "${pageContext.request.contextPath}/assetOption/findOptionList.do?page=1&size=10"
            + "&senderId=<%=session.getAttribute("senderId")%>&checkerId=<%=session.getAttribute("checkerId")%>&option=<%=session.getAttribute("option")%>";

<%--        ${pageContext.request.contextPath}/assetOption/findOptionList.do?page=${pageInfo.pages}&size=${pageInfo.pageSize}--%>
    }

    //
    function senderChangeOption(option){
        var $page = $("#changePageSize")
        var pageSize = $page.val();
        location.href = "${pageContext.request.contextPath}/assetOption/findOptionList.do?page=1&size=10"
            + "&senderId="+JSON.parse($.getCookie("userInfo")).id+"&checkerId=&option="+option;

    }
    function receiverChangeOption(option){
        var $page = $("#changePageSize")
        var pageSize = $page.val();
        location.href = "${pageContext.request.contextPath}/assetOption/findOptionList.do?page=1&size=10"
            + "&checkerId="+JSON.parse($.getCookie("userInfo")).id+"&senderId=&option="+option;

    }



    var checkbox_arr=[];//选中框

    $("#deleteItems").click(function () {
        getCheckedBox();
        $.ajax({
            url:"${pageContext.request.contextPath}/assetOption/deleteItems.do",
            type:"post",
            traditional:true,
            // dataType:"text",
            data: {
                ids:checkbox_arr
            },
            success: function (datas) {
                console.log((datas));
                location.href = "${pageContext.request.contextPath}/assetOption/findOptionList.do?page=1&size=10&option=Repair&senderId="+JSON.parse($.getCookie("userInfo")).id;
            }
        });

    })


</script>
</body>

</html>