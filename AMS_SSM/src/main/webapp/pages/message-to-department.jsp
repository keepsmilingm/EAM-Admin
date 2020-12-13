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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/fileupload/css/default.css">
    <link href="${pageContext.request.contextPath}/plugins/fileupload/css/fileinput.css" media="all" rel="stylesheet"
          type="text/css"/>

    <%--	表单验证提示插件--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/diy/sweet-alert/css/sweet-alert.css">
    <%--	折叠菜单插件--%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/toggle/css/normalize.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/toggle/css/default.css">
    <link rel='stylesheet prefetch' href='${pageContext.request.contextPath}/plugins/toggle/css/foundation.css'>
    <%--    折叠菜单--%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/toggle/css/styles.css">
    <%--    提示信息插件--%>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/plugins/iziToast/css/iziToast.min.css">
    <%--    确认提示框--%>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/plugins/diy/sweet-alert/css/sweet-alert.css">


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
                新建部门消息
<%--                <small>全部部门</small>--%>
            </h1>
            <ol class="breadcrumb">
                <li><a href="all-admin-index.html"><i
                        class="fa fa-dashboard"></i> 首页</a></li>
                <li><a href="all-order-manage-list.html">消息管理</a></li>
                <li class="active">新建部门消息</li>
            </ol>
        </section>

        <section class="content">
            <div class="row" style="max-width: 100%">
                <div class="col-md-3">
                    <ul class="mtree">
                        <c:forEach items="${departments}" var="departments">
                            <li><a onclick=getDetail(${departments.id})>${departments.name }</a>
                            <c:forEach items="${departments.childDepartment}" var="child">
                                <li><a onclick=getDetail(${child.id })>${child.name }</a>

                                    <ul>
                                            <%--											<li><a href="#">${child.name }</a>--%>
                                        <c:forEach items="${child.childDepartment}" var="secondchild">
                                            <li><a onclick=getDetail(${secondchild.id })>${secondchild.name }</a>

                                                <ul>
                                                    <c:forEach items="${secondchild.childDepartment}" var="lastchild">
                                                    <li><a onclick=getDetail(${lastchild.id })>${lastchild.name }</a>
                                                        </c:forEach>
                                                </ul>
                                            </li>
                                        </c:forEach>
                                            <%--											</li>--%>
                                    </ul>
                                </li>
                            </c:forEach>
                            </li>
                        </c:forEach>
                    </ul>

                </div>
                <div class="col-md-9">
                    <div class="box box-primary " id="detailPanel" style="display: none"><!--收件箱-->
                        <form >

                            <div class="box-body">
                                <div class="col-md-12 row data-type">
                                    <div class="col-md-12 title">接收部门</div>
                                    <input placeholder="" class="form-control receive" name="name">
                                    <input  placeholder="" class="form-control hidden receive" name="id">
                                    <div class="col-md-12 title">标题</div>
                                    <input placeholder="" class="form-control msg" name="des">
                                    <div class="col-md-12 title">消息类型</div>
                                    <select placeholder="" class="form-control msg" name="type">
                                        <option value="0">一般消息</option>
                                        <option value="1">紧急消息</option>
                                        <option value="2">通知消息</option>
                                    </select>
                                    <div class="col-md-12 title">内容</div>
                                    <textarea placeholder="" class="form-control msg" rows="10" name="detail"></textarea>
                                    <input placeholder="" class="form-control hidden msg" name="sender">
                                    <input placeholder="" class="form-control hidden msg" name="senderId">

                                    <form enctype="multipart/form-data">
                                        <%--							<label style="text-align: center">图片上传</label>--%>
                                        <input id="file-zh" name="file-zh[]" type="file" multiple>
                                    </form>
                                </div>
                            </div>
                            <div class="box-footer">
                                <div class="pull-right">
                                    <button type="button" class="btn btn-default" data-btn-type="save_draft"><i
                                            class="fa fa-pencil"></i> 保存为草稿
                                    </button>
                                    <button type="button" class="btn btn-primary" data-btn-type="send" onclick=goSubmit()><i
                                            class="fa fa-envelope-o"></i> 发送
                                    </button>
                                </div>
                                <button type="reset" class="btn btn-default" data-btn-type="cancel_draft"><i
                                        class="fa fa-times"></i> 取消
                                </button>
                            </div>
                            <input type="hidden" value=""><input type="hidden" value=""></form>
                    </div>

                </div>
            </div>

        </section>
        <script src="${pageContext.request.contextPath}/js/base-message.js"></script>


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
        <script src="${pageContext.request.contextPath}/plugins/fileupload/js/fileinput.js"
                type="text/javascript"></script>
        <!--简体中文-->
        <script src="${pageContext.request.contextPath}/plugins/fileupload/js/locales/zh.js"
                type="text/javascript"></script>


        <%--	折叠菜单插件--%>
        <script src='${pageContext.request.contextPath}/plugins/toggle/js/stopExecutionOnTimeout.js?t=1'></script>
        <script src='${pageContext.request.contextPath}/plugins/toggle/js/jquery.velocity.min.js'></script>

        <%--	表单填充--%>
        <script src='${pageContext.request.contextPath}/plugins/diy/loadData.js'></script>
        <%--消息提示--%>
        <script src='${pageContext.request.contextPath}/plugins/iziToast/js/iziToast.min.js'></script>
        <script src='${pageContext.request.contextPath}/plugins/diy/iziToast-diy.js'></script>
        <%--表单验证插件--%>
        <script src="${pageContext.request.contextPath}/plugins/diy/is.js"></script>

        <script src="${pageContext.request.contextPath}/plugins/diy/sweet-alert/js/sweet-alert.js"></script>
        <script src="${pageContext.request.contextPath}/plugins/diy/diy-validate.js"></script>
        <script src="${pageContext.request.contextPath}/plugins/diy/diy-optionToast.js"></script>
        <script src="${pageContext.request.contextPath}/js/aside.js"></script>
        <script>


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
                $("input[name='sender']").val(JSON.parse($.getCookie("userInfo")).username)
                $("input[name='senderId']").val(JSON.parse($.getCookie("userInfo")).id)
                // getLoginUser();//得到当前登陆用户的信息，作为消息的发送者消息
                var key_arr = [];
                var value_arr = [];
                var $inputArr = $('.msg'); //获取input控件
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
                    url: "${pageContext.request.contextPath}/message/add.do",
                    dataType: "JSON",
                    contentType: "application/json",
                    type: "post",
                    success: function (datas) {
                        if (datas.state === true) {
                            sendMsg(datas.msgId);
                        }else {
                            izToast("fail", "发送");
                        }


                    }
                });
            }


            function sendMsg(msgId) {

                $.ajax({
                    data: JSON.stringify({
                        receiveDepId:$.getCookie("departmentId"),
                        messageId:msgId

                    }),
                    url: "${pageContext.request.contextPath}/message/sendMsg.do",
                    dataType: "JSON",
                    contentType: "application/json",
                    type: "post",
                    success: function (datas) {
                        if (datas.state === true) {
                            izToast("success", "发送");
                        }else{
                            izToast("fail", "发送");
                        }

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


            //	获取部门详情
            function getDetail(id) {
                $("#detailPanel").css("display", "block");

                $.addCookie({
                    key:"departmentId",
                    value: id
                })
                loadData($.getCookie("depInfo"));

                $.ajax({
                    url: "${pageContext.request.contextPath}/department/mobileFindById.do",
                    dataType: "json",
                    contentType: "application/json;charset=UTF-8",
                    type: "post",
                    data: JSON.stringify({"departmentId": id}),
                    success: function (data) {
                        console.log(data);
                        loadData(data.data)

                    }
                })
            }






            //折叠菜单
            ;(function ($, window, document, undefined) {
                if ($('.mtree').length) {
                    var collapsed = true;
                    var close_same_level = false;
                    var duration = 400;
                    var listAnim = true;
                    var easing = 'easeOutQuart';
                    $('.mtree ul').css({
                        'overflow': 'hidden',
                        'height': collapsed ? 0 : 'auto',
                        'display': collapsed ? 'none' : 'block'
                    });
                    var node = $('.mtree li:has(ul)');
                    node.each(function (index, val) {
                        $(this).children(':first-child').css('cursor', 'pointer');
                        $(this).addClass('mtree-node mtree-' + (collapsed ? 'closed' : 'open'));
                        $(this).children('ul').addClass('mtree-level-' + ($(this).parentsUntil($('ul.mtree'), 'ul').length + 1));
                    });
                    $('.mtree li > *:first-child').on('click.mtree-active', function (e) {
                        if ($(this).parent().hasClass('mtree-closed')) {
                            $('.mtree-active').not($(this).parent()).removeClass('mtree-active');
                            $(this).parent().addClass('mtree-active');
                        } else if ($(this).parent().hasClass('mtree-open')) {
                            $(this).parent().removeClass('mtree-active');
                        } else {
                            $('.mtree-active').not($(this).parent()).removeClass('mtree-active');
                            $(this).parent().toggleClass('mtree-active');
                        }
                    });
                    node.children(':first-child').on('click.mtree', function (e) {
                        var el = $(this).parent().children('ul').first();
                        var isOpen = $(this).parent().hasClass('mtree-open');
                        if ((close_same_level || $('.csl').hasClass('active')) && !isOpen) {
                            var close_items = $(this).closest('ul').children('.mtree-open').not($(this).parent()).children('ul');
                            if ($.Velocity) {
                                close_items.velocity({height: 0}, {
                                    duration: duration,
                                    easing: easing,
                                    display: 'none',
                                    delay: 100,
                                    complete: function () {
                                        setNodeClass($(this).parent(), true);
                                    }
                                });
                            } else {
                                close_items.delay(100).slideToggle(duration, function () {
                                    setNodeClass($(this).parent(), true);
                                });
                            }
                        }
                        el.css({'height': 'auto'});
                        if (!isOpen && $.Velocity && listAnim)
                            el.find(' > li, li.mtree-open > ul > li').css({'opacity': 0}).velocity('stop').velocity('list');
                        if ($.Velocity) {
                            el.velocity('stop').velocity({
                                height: isOpen ? [
                                    0,
                                    el.outerHeight()
                                ] : [
                                    el.outerHeight(),
                                    0
                                ]
                            }, {
                                queue: false,
                                duration: duration,
                                easing: easing,
                                display: isOpen ? 'none' : 'block',
                                begin: setNodeClass($(this).parent(), isOpen),
                                complete: function () {
                                    if (!isOpen)
                                        $(this).css('height', 'auto');
                                }
                            });
                        } else {
                            setNodeClass($(this).parent(), isOpen);
                            el.slideToggle(duration);
                        }
                        e.preventDefault();
                    });

                    function setNodeClass(el, isOpen) {
                        if (isOpen) {
                            el.removeClass('mtree-open').addClass('mtree-closed');
                        } else {
                            el.removeClass('mtree-closed').addClass('mtree-open');
                        }
                    }

                    if ($.Velocity && listAnim) {
                        $.Velocity.Sequences.list = function (element, options, index, size) {
                            $.Velocity.animate(element, {
                                opacity: [
                                    1,
                                    0
                                ],
                                translateY: [
                                    0,
                                    -(index + 1)
                                ]
                            }, {
                                delay: index * (duration / size / 2),
                                duration: duration,
                                easing: easing
                            });
                        };
                    }
                    if ($('.mtree').css('opacity') == 0) {
                        if ($.Velocity) {
                            $('.mtree').css('opacity', 1).children().css('opacity', 0).velocity('list');
                        } else {
                            $('.mtree').show(200);
                        }
                    }
                }
            }(jQuery, this, this.document));
            $(document).ready(function () {
                var mtree = $('ul.mtree');
                mtree.wrap('<div class=mtree-demo></div>');
                var skins = [
                    'bubba',
                    'skinny',
                    'transit',
                    'jet',
                    'nix'
                ];
                mtree.addClass(skins[0]);
                $(this).toggleClass('active');
                // $('body').prepend('<div class="mtree-skin-selector"><ul class="button-group radius"></ul></div>');
                // var s = $('.mtree-skin-selector');
                // $.each(skins, function (index, val) {
                // 	s.find('ul').append('<li><button class="small skin">' + val + '</button></li>');
                // });
                // s.find('ul').append('<li><button class="small csl active">Close Same Level</button></li>');
                // s.find('button.skin').each(function (index) {
                // 	$(this).on('click.mtree-skin-selector', function () {
                // 		s.find('button.skin.active').removeClass('active');
                // 		$(this).addClass('active');
                // 		mtree.removeClass(skins.join(' ')).addClass(skins[index]);
                // 	});
                // });
                // s.find('button:first').addClass('active');
                // s.find('.csl').on('click.mtree-close-same-level', function () {
                // 	$(this).toggleClass('active');
                // });
            });

        </script>
</body>

</html>