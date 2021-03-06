<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>数据 - AdminLTE2定制版</title>
    <meta name="description" content="AdminLTE2定制版">
    <meta name="keywords" content="AdminLTE2定制版">

    <!-- Tell the browser to be responsive to screen width -->
    <meta
            content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
            name="viewport">

    <link rel=“stylesheet”
          href="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.min.css">
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
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/picView/css/normalize.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/picView/css/default.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/picView/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/picView/dist/viewer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/picView/css/main.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/fileupload/css/default.css">
    <link href="${pageContext.request.contextPath}/plugins/fileupload/css/fileinput.css" media="all" rel="stylesheet"
          type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/iziToast/css/iziToast.css">

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
                操作详情
                <small>操作详情</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="all-admin-index.html"><i
                        class="fa fa-dashboard"></i> 首页</a></li>
                <li><a href="all-order-manage-list.html">订单管理</a></li>
                <li class="active">操作详情</li>
            </ol>
        </section>
        <!-- 内容头部 /-->

        <!-- 正文区域 -->
        <section class="content"> <!--订单信息-->
            <div class="panel panel-default">
                <div class="panel-heading">资产信息</div>
                <div class="row data-type">

                    <div class="col-md-2 title">编号</div>
                    <div class="col-md-4 data">
                        <input type="text" class="form-control" placeholder="订单编号"
                               value="${orders.id }" readonly="readonly">
                    </div>

                    <div class="col-md-2 title">创建时间</div>
                    <div class="col-md-4 data">
                        <div class="input-group date">
                            <div class="input-group-addon">
                                <i class="fa fa-calendar"></i>
                            </div>
                            <input type="text" class="form-control pull-right"
                                   id="datepicker-a3" readonly="readonly"
                                   value="${orders.creatTime}">
                        </div>
                    </div>
                    <div class="col-md-2 title">资产名称</div>
                    <div class="col-md-4 data">
                        <input type="text" class="form-control" placeholder=""
                               value="${orders.asset.mingcheng }" readonly="readonly">
                    </div>

                    <div class="col-md-2 title">资产编码</div>
                    <div class="col-md-4 data">
                        <input type="text" class="form-control" placeholder="出发城市"
                               value="${orders.asset.bianma }" readonly="readonly">
                    </div>

                    <div class="col-md-2 title">出厂日期</div>
                    <div class="col-md-4 data">
                        <div class="input-group date">
                            <div class="input-group-addon">
                                <i class="fa fa-calendar"></i>
                            </div>
                            <input type="text" class="form-control pull-right"
                                   id="datepicker-a6" value="${orders.asset.chuchangriqi}"
                                   readonly="readonly">
                        </div>
                    </div>
                    <div class="col-md-2 title">维修金额</div>
                    <div class="col-md-4 data">
                        <input type="text" class="form-control" placeholder="出游人数"
                               value="${orders.money}" readonly="readonly">
                    </div>

                    <div class="col-md-2 title rowHeight2x">维修原因</div>
                    <div class="col-md-10 data rowHeight2x">
						<textarea class="form-control" rows="3" placeholder="其他信息">
                            ${orders.reason }
                        </textarea>
                    </div>
                    <div class="col-md-12 title">相关图片</div>
                    <div class="form-group">
                        <div class="file-input">
                            <div class="file-preview">
                                <%--                                ${fn:substring(user.pic, 0, 10)}--%>
                                <%--                                 ${fn:replace(pic, '.', '_')--%>

                                <div class="docs-pictures file-drop-zone" style="border:none">
                                    <c:forTokens items="${orders.pic}" delims="," var="pic">
                                        <div class="file-preview-thumbnails">

                                            <div class=" file-preview-frame krajee-default  kv-preview-thumb"
                                                 data-fileindex="0" data-template="image"
                                                 style="" id="${fn:substring(pic, 9, 41)}">
                                                <div class="kv-file-content">
                                                    <img class="oldPic" src="${pageContext.request.contextPath}${pic}"
                                                         name="${pic}"
                                                         style="width:auto;height:160px;">
                                                </div>
                                                <div class="file-actions">
                                                        <%--													<div class="file-footer-buttons">--%>
                                                        <%--														<button type="button" class="click-delete kv-file-remove btn btn-xs btn-default"--%>
                                                        <%--																title="删除文件" onclick=delOldPic("${pic}")>--%>
                                                        <%--															<i class="glyphicon glyphicon-trash text-danger"></i></button>--%>
                                                        <%--													</div>--%>
                                                        <%--													<div class="clearfix"></div>--%>
                                                </div>
                                            </div>

                                        </div>

                                    </c:forTokens>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="input-group file-caption-main"></div>
                            </div>

                        </div>
                    </div>
                    <!--订单信息/--> <!--游客信息-->
                    <div class="panel panel-default">
                        <div class="panel-heading">提交人信息</div>
                        <!--数据列表-->
                        <table id="dataList"
                               class="table table-bordered table-striped table-hover dataTable">
                            <thead>
                            <tr>
                                <th class="">用户账户</th>
                                <th class="">姓名</th>
                                <th class="">性别</th>
                                <th class="">手机号码</th>
                                <th class="">微信</th>
                            </tr>
                            </thead>
                            <tbody>

                            <tr>
                                <td>${orders.userInfo.account}</td>
                                <td><input type="text" size="10" value="${orders.userInfo.username }"
                                           readonly="readonly"></td>
                                <td><input type="text" size="10" value="${orders.userInfo.genderStr }"
                                           readonly="readonly"></td>
                                <td><input type="text" size="20"
                                           value="${orders.userInfo.phoneNum }" readonly="readonly"></td>
                                <td><input type="text" size="15"
                                           value="${orders.userInfo.weChat}" readonly="readonly"></td>
                            </tr>


                            </tbody>
                        </table>
                        <!--数据列表/-->
                    </div>
                    <div class="box-tools text-center">
                        <security:authorize access="hasRole('AssetManager')">
                        <button type="button" class="btn bg-success" onclick=checkOption(${orders.id},1)>同意</button>
                        <button type="button" class="btn bg-danger" onclick=checkOption(${orders.id},2)>驳回</button>
                        </security:authorize>
                        <button type="button" class="btn bg-default" onclick="history.back(-1);">返回</button>
                    </div>
                    <!--工具栏/-->
        </section>
        <!-- 正文区域 /-->


    </div>
    <!-- 内容区域 /-->


</div>

<script
        src="${pageContext.request.contextPath}/plugins/jQuery/jquery-2.2.3.min.js"></script>
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
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/picView/dist/viewer.js"></script>
<script src="${pageContext.request.contextPath}/plugins/picView/assets/js/main.js"></script>
<script src="${pageContext.request.contextPath}/plugins/fileupload/js/fileinput.js" type="text/javascript"></script>
<!--简体中文-->
<script src="${pageContext.request.contextPath}/plugins/fileupload/js/locales/zh.js" type="text/javascript"></script>
<%--消息提示--%>
<script src='${pageContext.request.contextPath}/plugins/iziToast/js/iziToast.min.js'></script>
<script src='${pageContext.request.contextPath}/plugins/diy/iziToast-diy.js'></script>
<script src="${pageContext.request.contextPath}/js/aside.js"></script>
<script src="${pageContext.request.contextPath}/js/assetOption.js"></script>

<script>

    // {"account":"00001","birthday":1528156800000,"birthdayFormat":"2018-06-05 08:00","departmentId":4013,"email":"luyang36@126.com","gender":1,"id":1,"password":"","phoneNum":"1","pic":"/uploads/f48e2c2c44a8409fbb1dfa9e6fe5f0f0.jpg,/uploads/e72e69a6c87949d2abb3a79aaa4b8527.jpg,/uploads/c56b0f60f24c4df781561c32ed1abb2d.jpg,/uploads/8a6020310da74a8593ce82d5ca8fdf36.jpg","roles":[{"id":"1","permissions":[{"id":"1","permissionName":"user findAll","url":"/user/findAll.do"},{"id":"2","permissionName":"user findById","url":"/user/findById.do"},{"id":"3","permissionName":"product findAll","url":"/product/findAll.do"}],"roleDesc":"小员工","roleName":"USER"},{"id":"2","permissions":[{"id":"4","permissionName":"消息管理","url":"/message"}],"roleDesc":"大老板","roleName":"ADMIN"}],"status":1,"userDesc":"","username":"zyz","weChat":"","workPlace":"梁家河站"}

    //是否同意通过
    function checkOption(id,status) {
        if(status=1){
            //判断用户是否是最高管理员，如果是直接跳过一级审核变为2级
            var roles=(JSON.parse($.getCookie("userInfo"))).roles;
            for(var i=0;i<roles.length;i++){
                if(roles[i].roleName=="ADMIN");{
                    status=4;
                }
            }
        }

        console.log(status);
        $.ajax({
            url: "${pageContext.request.contextPath}/assetRepair/changeCheckStatus.do",
            dataType: "JSON",
            data:JSON.stringify(
                {

                id:id,
                status:status,
                assetId:${orders.asset.id}
            }),
            contentType: "application/json",
            type: "post",
            async: true,  //要返回参数给上级函数,需要令async=false
            success: function (datas) {
                if (datas.state === true) {
                    izToast("success", "审核提交");
                } else {
                    izToast("fail", "审核提交");
                }

                setTimeout(function () {
                    window.location.href="${pageContext.request.contextPath}/assetRepair/findAllSend.do?page=1&size=10&senderId="+JSON.parse($.getCookie("userInfo")).id+"&checkStatus=0";

                },1000)
            }
        });

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
        setSidebarActive("order-manage");

        // 列表按钮
        $("#dataList td input[type='checkbox']").iCheck({
            checkboxClass: 'icheckbox_square-blue',
            increaseArea: '20%'
        });
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
    });
</script>
</body>


</html>