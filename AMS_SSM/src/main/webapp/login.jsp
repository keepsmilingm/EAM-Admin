<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>昆明轨道交通集团资产管理系统 | 登陆</title>

<meta
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
	name="viewport">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/ionicons/css/ionicons.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/adminLTE/css/AdminLTE.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/iCheck/square/blue.css">
	<%--    提示信息插件--%>
	<link rel="stylesheet" type="text/css"
		  href="${pageContext.request.contextPath}/plugins/iziToast/css/iziToast.min.css">
	<%--    确认提示框--%>
	<link rel="stylesheet" type="text/css"
		  href="${pageContext.request.contextPath}/plugins/diy/sweet-alert/css/sweet-alert.css">
</head>

<body class="hold-transition login-page" style="background:url(${pageContext.request.contextPath}/img/bg.png);background-size:cover">
	<div class="login-box">
		<div class="login-logo">
			<a><b>昆明轨道交通集团</b>
				</br>--资产管理系统--</a>
		</div>
		<!-- /.login-logo -->
		<div class="login-box-body">
			<p class="login-box-msg">登录系统</p>

			<form action="${pageContext.request.contextPath}/login.do" method="post">
				<div class="form-group has-feedback">
					<input requierd type="text" name="username" class="form-control"
						placeholder="账户" > <span
						class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="password" name="password" class="form-control"
						placeholder="密码"> <span
						class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
				<div class="row">
					<div class="col-xs-8">
						<div class="checkbox icheck">
							<label><input type="checkbox"> 记住 下次自动登录</label>
						</div>
					</div>
					<!-- /.col -->
					<div class="col-xs-4">
						<button type="submit" class="btn btn-primary btn-block btn-flat" >登录</button>
<%--						<button type="button" class="btn btn-primary btn-block btn-flat" onclick="goSubmit()">登录</button>--%>
					</div>
					<!-- /.col -->
				</div>
			</form>

			<a href="#">忘记密码</a><br>


		</div>
		<!-- /.login-box-body -->
	</div>
	<!-- /.login-box -->

	<!-- jQuery 2.2.3 -->
	<!-- Bootstrap 3.3.6 -->
	<!-- iCheck -->
	<script
		src="${pageContext.request.contextPath}/plugins/jQuery/jquery-2.2.3.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/iCheck/icheck.min.js"></script>
	<script src='${pageContext.request.contextPath}/plugins/iziToast/js/iziToast.min.js'></script>
	<script src='${pageContext.request.contextPath}/plugins/diy/iziToast-diy.js'></script>
	<%--表单验证插件--%>
	<script src="${pageContext.request.contextPath}/plugins/diy/is.js"></script>

	<script src="${pageContext.request.contextPath}/plugins/diy/sweet-alert/js/sweet-alert.js"></script>
	<script src="${pageContext.request.contextPath}/plugins/diy/diy-validate.js"></script>
	<script src="${pageContext.request.contextPath}/plugins/jQuery/jquery.cookie.js"></script>
	<script>
		$(function() {
			$('input').iCheck({
				checkboxClass : 'icheckbox_square-blue',
				radioClass : 'iradio_square-blue',
				increaseArea : '20%' // optional
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

			console.log(submit_data);

			$.ajax({
				data: JSON.stringify(submit_data),
				url: "${pageContext.request.contextPath}/user/Login.do",
				dataType: "JSON",
				contentType: "application/json",
				type: "post",
				success: function (datas) {
					if (datas.state === true) {
						izToast("success", "登陆");
						$.addCookie({
							key:"userInfo",
							value:datas.data
						})
						window.location.href="${pageContext.request.contextPath}/pages/main.jsp"
					}else {
						izToast("fail", "登陆");
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
	</script>
</body>

</html>