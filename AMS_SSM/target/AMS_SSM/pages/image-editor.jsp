<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh">
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
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/fileupload/css/default.css">
	<link href="${pageContext.request.contextPath}/plugins/fileupload/css/fileinput.css" media="all" rel="stylesheet" type="text/css" />

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
				资产管理 <small>全部资产</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="all-admin-index.html"><i
						class="fa fa-dashboard"></i> 首页</a></li>
				<li><a href="all-order-manage-list.html">资产管理</a></li>
				<li class="active">资产详情</li>
			</ol>
		</section>
		<!-- 内容头部 /-->

		<!-- 正文区域 -->
		<section class="content"> <!--资产信息-->
			<div class="panel panel-default">
				<div class="panel-heading">资产信息</div>
				<div class="row data-type">

					<div class="col-md-2 title">资产编码</div>
					<div class="col-md-4 data">
						<input type="text" class="form-control" placeholder="资产编号"
							   name="bianma" >
					</div>
					<div class="col-md-2 title">资产名称</div>
					<div class="col-md-4 data">
						<input type="text" class="form-control"
							   name="mingcheng" >
					</div>

					<div class="col-md-2 title">规格型号</div>
					<div class="col-md-4 data">
						<input type="text" class="form-control" placeholder="路线名称"
							   name="guigexinghao" >
					</div>

					<div class="col-md-2 title">单价</div>
					<div class="col-md-4 data">
						<input type="text" class="form-control"
							   name="price" >
					</div>

					<div class="col-md-2 title">部门id</div>
					<div class="col-md-4 data">
						<input type="text" class="form-control"
							   name="bumenId" >
					</div>

					<div class="col-md-2 title">部门名称</div>
					<div class="col-md-4 data">
						<input type="text" class="form-control"
							   name="bumen}" >
					</div>

					<div class="col-md-2 title">所属线路</div>
					<div class="col-md-4 data">
						<input type="text" class="form-control"
							   name="suoshuxianlu" >

					</div>
					<div class="col-md-2 title">类型</div>
					<div class="col-md-4 data">
						<input class="form-control" rows="3"
							   name="type" >

					</div>
					<div class="col-md-2 title">安装地点</div>
					<div class="col-md-4 data">
						<input class="form-control" rows="3"
							   name="anzhuangdidian" >

					</div>
					<div class="col-md-2 title">单位</div>
					<div class="col-md-4 data">
						<input class="form-control" rows="3"
							   name="danwei" >

					</div>
					<div class="col-md-2 title">数量</div>
					<div class="col-md-4 data">
						<input class="form-control" rows="3"
							   name="shuliang" >

					</div>
					<div class="col-md-2 title">产地</div>
					<div class="col-md-4 data">
						<input class="form-control" rows="3"
							   name="chandi" >

					</div>
					<div class="col-md-2 title">使用状态</div>
					<div class="col-md-4 data">
						<input class="form-control" rows="3"
							   name="useStatus}" >

					</div>
					<div class="col-md-2 title">生产厂商</div>
					<div class="col-md-4 data">
						<input class="form-control" rows="3"
							   name="shengchanchangshang" >

					</div>
					<div class="col-md-2 title">供应商</div>
					<div class="col-md-4 data">
						<input class="form-control" rows="3"
							   name="gongyingshang" >

					</div>
					<div class="col-md-2 title">出厂日期</div>
					<div class="col-md-4 data">
						<div class="input-group date">
							<div class="input-group-addon">
								<i class="fa fa-calendar"></i>
							</div>
							<input type="text" class="form-control pull-right"
								   id="datepicker-a6" name="chuchangriqi}"
							>
						</div>
					</div>
					<div class="col-md-2 title">创建时间</div>
					<div class="col-md-4 data">
						<div class="input-group date">
							<div class="input-group-addon">
								<i class="fa fa-calendar"></i>
							</div>
							<input type="text" class="form-control pull-right"
								   id="" name="createTime}"
							>
						</div>
					</div>
					<div class="col-md-2 title">创建人</div>
					<div class="col-md-4 data">
						<input class="form-control" rows="3"
							   name="creatorId" >

					</div>
					<div class="col-md-2 title">使用年限</div>
					<div class="col-md-4 data">
						<input class="form-control" rows="3"
							   name="shejishiyongnianxian" >

					</div>

					<div class="col-md-2 title">附属设备</div>
					<div class="col-md-4 data">
						<input class="form-control" rows="3"
							   name="fushushebeiqingdan" >

					</div>
					<img src="${pageContext.request.contextPath}/uploads/10c772891c1b4485854d10fc99ad6201.jpg" alt="" id="demo1">


				</div>
				<form enctype="multipart/form-data" >
					<%--							<label style="text-align: center">图片上传</label>--%>
					<input id="file-zh" name="file-zh[]" type="file" multiple>
				</form>
			</div>

			<div class="box-tools text-center">
				<button onclick=goSubmit() class="btn bg-maroon">保存</button>
				<button type="button" class="btn bg-default"
						onclick="history.back(-1);">返回</button>
			</div>
			<!--工具栏/-->


		</section>

	</div>



</div>
<!-- 内容区域 /-->



</div>

<script
		src="${pageContext.request.contextPath}/plugins/jQuery/jquery-2.2.3.min.js"></script>
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

<script>window.jQuery || document.write('<script src="${pageContext.request.contextPath}/plugins/fileupload/js/jquery-1.11.0.min.js"><\/script>')</script>
<script src="${pageContext.request.contextPath}/plugins/fileupload/js/fileinput.js" type="text/javascript"></script>
<!--简体中文-->
<script src="${pageContext.request.contextPath}/plugins/fileupload/js/locales/zh.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/plugins/filerobot-image-editor/js/filerobot-image-editor.min.js" type="text/javascript"></script>
<script>
	$('#demo1').click(function(){
		const ImageEditor1 = new FilerobotImageEditor();
		ImageEditor1.open('http://localhost:8888/AMS_SSM/uploads/10c772891c1b4485854d10fc99ad6201.jpg');
	})
	var picArr=[];//待上传存储图片路径
	$('#file-zh').fileinput({
		language: 'zh',
		uploadUrl: '${pageContext.request.contextPath}/file/fileuploadDemo.do',
		// allowedFileExtensions : ['jpg', 'png','gif'],
		uploadAsync:true //是否为异步上传  同步上传
	});
	//文件上传成功时（fileuploaded）的回调函数，同步上传时无法调用
	$("#file-zh").on("fileuploaded", function(event, data, previewId, index) {
		console.log(data.response.filePath);
		picArr.push(data.response.filePath)
	});
	$(document).ready(function() {
		$("#test-upload").fileinput({
			'showPreview' : false,
			'allowedFileExtensions' : ['jpg', 'png','gif'],
			'elErrorContainer': '#errorBlock'
		});
	});
	function goSubmit(){
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
		picArr=picArr.filter(function (s) {
			return s && s.trim(); // 注：IE9(不包含IE9)以下的版本没有trim()方法
		});
		submit_data.pic=picArr.join(",").trim();

		if ( submit_data.pic.substr(0,1)===',') {
			submit_data.pic= submit_data.pic.substr(1);
		}
		console.log(submit_data);

		$.ajax({
			data: JSON.stringify(submit_data),
			url: "${pageContext.request.contextPath}/asset/add.do",
			dataType:"JSON",
			contentType:"application/json",
			type:"post",
			success: function (datas) {
				setTimeout(function(){
					window.location.href="${pageContext.request.contextPath}/pages/asset-page-list.jsp"
				},1000);
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
	$(document).ready(function() {
		// 选择框
		$(".select2").select2();

		// WYSIHTML5编辑器
		$(".textarea").wysihtml5({
			locale : 'zh-CN'
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


	$(document).ready(function() {

		// 激活导航位置
		setSidebarActive("order-manage");

		// 列表按钮
		$("#dataList td input[type='checkbox']").iCheck({
			checkboxClass : 'icheckbox_square-blue',
			increaseArea : '20%'
		});
		// 全选操作
		$("#selall").click(function() {
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