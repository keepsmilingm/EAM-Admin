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
						<div class="col-md-2 title">姓名</div>
						<div class="col-md-4 data">
							<input type="text" class="form-control"
								   value="" name="username">
						</div>
						<div class="col-md-2 title">账户</div>
						<div class="col-md-4 data">
							<input type="text" class="form-control"
								   value="" name="account">
						</div>
						<div class="col-md-2 title">密码</div>
						<div class="col-md-4 data">
							<input type="text" class="form-control"
								   value="" name="password">
						</div>
						<div class="col-md-2 title">邮箱</div>
						<div class="col-md-4 data">
							<input type="text" class="form-control"
								   value="" name="email">
						</div>

						<div class="col-md-2 title">电话</div>
						<div class="col-md-4 data">
							<input type="text" class="form-control"
								   value="" name="phoneNum">
						</div>

						<div class="col-md-2 title">状态</div>
						<div class="col-md-4 data">
							<select type="text" class="form-control" value="" name="status">
								<option value=""></option>
								<option value="0">在职</option>
								<option value="1">出差</option>
								<option value="2">休假</option>
							</select>
						</div>
						<div class="col-md-2 title">性别</div>
						<div class="col-md-4 data">
							<select type="text" class="form-control" value="" name="gender">
								<option value=""></option>
								<option value="0">男</option>
								<option value="1">女</option>
							</select>
						</div>
						<div class="col-md-2 title">出生日期</div>
						<div class="col-md-4 data">
							<div class="input-group date">
								<div class="input-group-addon">
									<i class="fa fa-calendar"></i>
								</div>
								<input type="date" class="form-control pull-right"
									   id="" name="birthday" >
							</div>
						</div>

						<div class="col-md-2 title">备注</div>
						<div class="col-md-4 data">
							<input type="text" class="form-control"
								   value="" name="userDesc">
						</div>

						<div class="col-md-2 title">部门名称</div>
						<div class="col-md-4 data">
							<input type="text" class="form-control"
								   value="" name="birthday">
						</div>

						<div class="col-md-2 title">所属线路</div>
						<div class="col-md-4 data">
							<input type="text" class="form-control"
								   value="" name="gender">

						</div>
						<div class="col-md-2 title">微信</div>
						<div class="col-md-4 data">
							<input class="form-control" rows="3"
								   value="" name="weChat">

						</div>
						<div class="col-md-2 title">部门id</div>
						<div class="col-md-4 data">
							<input class="form-control" rows="3"
								   value="" name="departmentId">

						</div>
						<div class="col-md-2 title">角色id</div>
						<div class="col-md-4 data">
							<input class="form-control" rows="3"
								   value="" name="roleId">

						</div>
						<div class="col-md-2 title">工作地点</div>
						<div class="col-md-4 data">
							<input class="form-control" rows="3"
								   value="" name="workPlace">
						</div>
						<br/>
						<div class="col-md-2 title">个人照片</div>
						<div class="col-md-4 data">
							<input class=""
								   value="" name="workPlace" type="file" id="file" multiple>
						</div>
<%--						<li class="title ">--%>
<%--							<span class="title">资产图片</span>--%>
<%--&lt;%&ndash;							<label for="file" class="select_input" id="file_label">点击选择文件</label>&ndash;%&gt;--%>
<%--							<input type="file" id="file" class="" style="display: none" placeholder="点击选择文件" multiple>--%>
<%--						</li>--%>

						<div id="picbox" style="display: flex;flex-wrap: wrap;justify-content: space-between;width:90%;margin:0 auto">

						</div>
<%--						<div class="col-md-4 post" style="display: inline-block">--%>
							<a href="" class="pull-right btn-box-tool"><i class="fa fa-times" style="width: 20px"></i></a>
							<img class="img-responsive" src="${pageContext.request.contextPath}${pic}" alt="" >
<%--						</div>--%>

					</div>
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

<script>
	var picArr2=[];//待上传存储图片路径
	//图片上传
	var input = document.getElementById("file");
	var result,div;
	console.log("hello");
	if(typeof FileReader==='undefined'){
		result.innerHTML = "抱歉，你的浏览器不支持 FileReader";
		input.setAttribute('disabled','disabled');
	}else{
		input.addEventListener('change',readFile,false);
	}　　　　　//handler
	var dataArr = null; //直接传base64数据

	var fd = null;  //FormData方式发送请求
	var index=[];

	function readFile(){
		dataArr = { data : [] };
		fd = new FormData();
		var iLen = this.files.length;
		for(var i=0;i<iLen;i++){
			if (!input['value'].match(/.jpg|.gif|.png|.bmp/i)){　　//判断上传文件格式
				return tishi("上传的图片格式不正确，请重新选择");
			}
			var reader = new FileReader();
			reader.onload = function(e){
				var imgMsg = {
					name : fileName,//获取文件名
					base64 : this.result   //reader.readAsDataURL方法执行完后，base64数据储存在reader.result里
				};
				dataArr.data.push(imgMsg);
				// result = '<span class="glyphicon glyphicon-remove delPic" style="position: absolute;left:80%;z-index: 999"></span><div style="display:none" class="result" ></div><img src="'+this.result+'" alt=""/></div>';
				result = '<span href="" class="pull-right btn-box-tool delPic"><i class="fa fa-times" ></i></span><div style="display:none" class="result" ></div><img class="img-responsive" src="'+this.result+'" alt=""/></div>';
				div = document.createElement('div');
				div.innerHTML = result;
				div['className'] = 'col-md-4 post';
				// document.getElementsByTagName('body')[0].appendChild(div);  　　//插入dom树
				document.getElementById('picbox').appendChild(div);  　　//插入dom树
				var img = div.getElementsByTagName('img')[0];
				img.onload = function(){
					var nowHeight = ReSizePic(this); //设置图片大小
					this.parentNode.style.display = 'block';
					var oParent = this.parentNode;
					if(nowHeight){
						oParent.style.paddingTop = (oParent.offsetHeight - nowHeight)/2 + 'px';
					}
				}
			};

			fd.append(i,this.files[i],this.files[i].name);


			reader.readAsDataURL(this.files[i]);  //转成base64
			var fileName = this.files[i].name;
		}

		afterCS();
		var $float;
		var $delPic;
		//解决同步问题
		setTimeout(function(){
			$float= $('.post');
			$delPic=$('.delPic');
			console.log("post类长度："+$float.length);
			for(var i=0;i<$float.length;i++){

				let j=i;
				$delPic[i].onclick=function () {
					$float[j].remove();
					// console.log(fd.get(j));
					fd.delete(j);
					// arr.delete(j);
					delete picArr2[j];
					console.log(picArr2);

				}
			}
		}, 200);

		function afterCS() {
			var tempFd=fd;
			var arr=[];
			for (var key of tempFd.keys()) {
				arr.push(key);

			}
			console.log(arr.length);
			if(arr.length>0){

				// for(var i=0;i<arr.length;i++){
				// 	// console.log(i);
				// 	console.log(arr[i]);
				// 	console.log(tempFd.get(arr[i]));
					sendPic(tempFd);
				// 	// tempFd.delete(arr[i]);
				// 	// console.log(arr.length);
				// 	// console.log(tempFd);
				// }
			}
		}
	}

	function sendPic(formdata){

		$.ajax({
			url : "${pageContext.request.contextPath}/file/fileuploadDemo.do",
			type : 'post',
			data : formdata,
			// dataType: 'json',
			processData: false,   //用FormData传fd时需有这两项
			contentType: false,
			success : function(data){
				// var json=JSON.parse(data);

				if (data=="error") {
					alert("文件提交失败!");
				}else{
					console.log(data);
					var arr = data.split(',');
					for(var i in arr){
						picArr2.push(arr[i].replace("//s/g", ""));
					}

					// picArr2.push(data);
					console.log(picArr2);
				}

			}
		})
	}


	/*
     用ajax发送fd参数时要告诉jQuery不要去处理发送的数据，
     不要去设置Content-Type请求头才可以发送成功，否则会报“Illegal invocation”的错误，
     也就是非法调用，所以要加上“processData: false,contentType: false,”
     * */


	function ReSizePic(ThisPic) {
		var RePicWidth = 250; //这里修改为您想显示的宽度值

		var TrueWidth = ThisPic.width; //图片实际宽度
		var TrueHeight = ThisPic.height; //图片实际高度

		if (TrueWidth > TrueHeight) {
			//宽大于高
			var reWidth = RePicWidth;
			ThisPic.width = reWidth;
			//垂直居中
			var nowHeight = TrueHeight * (reWidth / TrueWidth);
			return nowHeight;  //将图片修改后的高度返回，供垂直居中用
		} else {
			//宽小于高
			var reHeight = RePicWidth;
			ThisPic.height = reHeight;
		}
	}

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
		picArr2=picArr2.filter(function (s) {
			return s && s.trim(); // 注：IE9(不包含IE9)以下的版本没有trim()方法
		});
		submit_data.pic=picArr2.join(",").trim();

		if ( submit_data.pic.substr(0,1)===',') {
			submit_data.pic= submit_data.pic.substr(1);
		}
		console.log(submit_data);

		$.ajax({
			data: JSON.stringify(submit_data),
			url: "${pageContext.request.contextPath}/user/add.do",
			dataType:"JSON",
			contentType:"application/json",
			type:"post",
			success: function (datas) {
				setTimeout(function(){
					window.location.href="${pageContext.request.contextPath}/pages/user-page-list.jsp"
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