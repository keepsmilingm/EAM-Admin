<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
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
<!-- bootstrap-datetimepicker -->

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
<!-- bootstrap-datetimepicker -->
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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">
</head>

<body class="hold-transition skin-purple sidebar-mini">

	<div class="wrapper">

		<!-- 页面头部 -->
		<jsp:include page="header.jsp"></jsp:include>
		<!-- 页面头部 /-->
		<!-- 导航侧栏 -->
		<jsp:include page="aside.jsp"></jsp:include>
		<!-- 导航侧栏 /-->

		<!-- 内容区域 -->
		<!-- @@master = admin-layout.html-->
		<!-- @@block = content -->

		<div class="content-wrapper">

			<!-- 内容头部 -->
			<section class="content-header">
				<h1>
					数据管理 <small>数据列表</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
					<li><a href="#">数据管理</a></li>
					<li class="active">数据列表</li>
				</ol>
			</section>
			<!-- 内容头部 /-->

			<!-- 正文区域 -->
			<section class="content">

				<!-- .box-body -->
				<div class="box box-primary">
					<div class="box-header with-border">
						<h3 class="box-title">列表</h3>
					</div>

					<div class="box-body table-responsive">

						<!-- 数据表格 -->
						<div class="table-box">

							<!--工具栏-->
							<div class="pull-left">
								<div class="form-group form-inline">
									<div class="btn-group">
										<security:authorize access="hasRole('UserManager')">
										<button type="button" class="btn btn-default" title="新建"
											onclick="location.href='${pageContext.request.contextPath}/pages/user-add.jsp'">
											<i class="fa fa-file-o"></i> 新建
										</button>
										<button type="button" class="btn btn-default" title="删除" id="deleteItems">
											<i class="fa fa-trash-o"></i> 删除
										</button>
										</security:authorize>

										<button type="button" class="btn btn-default" title="删除" id="generate-excel">
											<i class="fa fa-save"></i> 导出excel
										</button>


										<a  href="${pageContext.request.contextPath}/user/fuzzyQuery.do?page=1&size=10&condition=&orderbys=" class="btn btn-default" title="刷新">
											<i class="fa fa-refresh"></i> 刷新
										</a>
										<button type="button" class="btn btn-info" title="发送消息" id="MsgItems">
											<i class="fa fa-magnet"></i>发送消息
										</button>
									</div>
								</div>
							</div>
							<form action="${pageContext.request.contextPath}/user/findAll.do?" method="post">
								<div class="box-tools pull-right">
									<div class="has-feedback" style="width: 90%;display: inline-block;margin-left: 0;position: relative" >
										<input  type="text" class=" hidden form-control input-sm"
												name="page" value="1">
										<input type="text" class="hidden form-control input-sm"
											   name="size" value="10">
										<input id="condition" type="text" class="form-control input-sm"
											 name="conditions">
										<button  type="submit" class="glyphicon glyphicon-search " style="border:none;background-color:#fff;position: absolute;right: 1%;top:20%" ></button>
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
										<th  class=" sorting_asc hidden" >ID</th>
										<th id="account" class="orderBy sorting_asc">账户</th>
										<th id="username" class="orderBy sorting_asc ">姓名</th>
										<th id="status" class="orderBy sorting_asc ">状态</th>
										<th id="departmentId" class="orderBy sorting_asc ">部门id</th>
										<th id="workplace" class="orderBy sorting_asc ">工作地点</th>
										<th class=" sorting_asc sorting_asc_disabled">电话号码</th>
										<th class=" text-center">操作</th>
									</tr>
								</thead>
								<tbody>


									<c:forEach items="${pageInfo.list}" var="orders">

										<tr>
											<td><input name="ids" type="checkbox" value="${orders.id }"></td>
											<td class="hidden">${orders.id }</td>
											<td>${orders.account }</td>
											<td>${orders.username }</td>
											<td>${orders.statusStr }</td>
											<td>${orders.departmentId}</td>
											<td>${orders.workPlace }</td>
											<td>${orders.phoneNum }</td>
											<td class="text-center">
<%--												<button type="button" class="btn bg-olive btn-xs">订单</button>--%>
												<button type="button" class="btn bg-olive btn-xs" onclick="location.href='${pageContext.request.contextPath}/user/findById.do?id=${orders.id}'">详情</button>
											<security:authorize access="hasRole('UserManager')">
												<button type="button" class="btn bg-olive btn-xs" onclick="location.href='${pageContext.request.contextPath}/user/delete.do?id=${orders.id}'">删除</button>
												<a href="${pageContext.request.contextPath}/user/findUserByIdAndAllRole.do?id=${orders.id}" class="btn bg-olive btn-xs">添加角色</a>
											</security:authorize>

											</td>
										</tr>
									</c:forEach>
								</tbody>
								<!--
                            <tfoot>
                            <tr>
                            <th>Rendering engine</th>
                            <th>Browser</th>
                            <th>Platform(s)</th>
                            <th>Engine version</th>
                            <th>CSS grade</th>
                            </tr>
                            </tfoot>-->
							</table>
							<!--数据列表/-->

							<!--工具栏-->


						</div>
						<!-- 数据表格 /-->


					</div>
					<!-- /.box-body -->

					<!-- .box-footer-->
                <div class="box-footer">
                    <div class="pull-left">
                        <div class="form-group form-inline">
							第<span id="pageNum">${pageInfo.pageNum}</span>页，共<span id="allPages">${pageInfo.pages}</span>页。 每页
                            <input class="form-control" id="changePageSize" onchange="changePageSize()" placeholder="${pageInfo.pageSize}"/>
								条
                        </div>
                    </div>

                    <div class="box-tools pull-right">
						<ul class="pagination" style="height: inherit">
							<li>
								<a href="${pageContext.request.contextPath}/user/findAll.do?page=1&size=${pageInfo.pageSize}&condition=<%=session.getAttribute("condition")%>&orderbys=<%=session.getAttribute("orderbys")%>" aria-label="Previous">首页</a>
							</li>
							<li><a href="${pageContext.request.contextPath}/user/findAll.do?page=${pageInfo.pageNum-1}&size=${pageInfo.pageSize}&condition=<%=session.getAttribute("condition")%>&orderbys=<%=session.getAttribute("orderbys")%>">上一页</a></li>
							<%--                           <c:forEach begin=usernd="${pageInfo.pages}" var="pageNum">--%>
							<%--							   <li><a href="usereContext.request.contextPath}/asset/findAll.do?page=${pageNum}&size=${pageInfo.pageSize}">${pageNum}</a></li>--%>
							<%--						   </c:forEach>--%>
							<li><a href="${pageContext.request.contextPath}/user/findAll.do?page=${pageInfo.pageNum+1}&size=${pageInfo.pageSize}&condition=<%=session.getAttribute("condition")%>&orderbys=<%=session.getAttribute("orderbys")%>">下一页</a></li>
							<li>
								<a href="${pageContext.request.contextPath}/user/findAll.do?page=${pageInfo.pages}&size=${pageInfo.pageSize}&condition=<%=session.getAttribute("condition")%>&orderbys=<%=session.getAttribute("orderbys")%>" aria-label="Next">尾页</a>
							</li>
						</ul>
                    </div>

                </div>
                <!-- /.box-footer-->



				</div>

			</section>
			<!-- 正文区域 /-->

		</div>
		<!-- @@close -->
		<!-- 内容区域 /-->



	</div>


	<script
		src="${pageContext.request.contextPath}/plugins/jQuery/jquery-2.2.3.min.js"></script>
	<script src="${pageContext.request.contextPath}/plugins/jQuery/jquery.cookie.js"></script>
	<script
			src="${pageContext.request.contextPath}/plugins/jQuery/jquery.cookie.js"></script>
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
		src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/locales/bootstrap-datetimepicker.zh-CN.js"></script>
	<script src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/locales/bootstrap-datetimepicker.zh-CN.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/excel-generate/external/jszip.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/excel-generate/external/FileSaver.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/excel-generate/scripts/excel-gen.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/excel-generate/scripts/demo.page.js"></script>
	<%--消息提示--%>
	<script src='${pageContext.request.contextPath}/plugins/iziToast/js/iziToast.min.js'></script>
	<script src='${pageContext.request.contextPath}/plugins/diy/iziToast-diy.js'></script>
	<script src="${pageContext.request.contextPath}/js/aside.js"></script>
	<script>

		var url_str = location.href; //取得整个地址栏
		var paras=url_str.split("?");//
		console.log(paras);
		var para=paras[1].split("&");
		console.log(para);
		if(!para===""?condition=para[2].split("="):condition="")

		// var condition=para[2].split("=");

		$("#changePageSize").attr("placeholder",${pageInfo.pageSize});
		function changePageSize() {
			//获取下拉框的值
			var $page=$("#changePageSize")
			var pageSize = $page.val();

			//向服务器发送请求，改变没页显示条数
			if(condition[1]=="" || condition[1]===undefined){
				location.href = "${pageContext.request.contextPath}/user/findAll.do?page=1&size="
						+ pageSize+"&condition=";
			}else{
				location.href = "${pageContext.request.contextPath}/user/findAll.do?page=1&size="
						+ pageSize+"&condition="+condition[1]+"&orderbys="+$.getCookie("orderbys");
			}



		}
		$("#deleteItems").click(function () {
			console.log("hhh");

			var value_str="";
			var value_arr=[];
			var $inputCheckedArr =$("input[type='checkbox']");//获取input控件
			//拿到被选中checkbox的value
			$inputCheckedArr.each(function () {

				if ($(this).prop('checked') === true) {
					//4.将每个input的值放进结果集

					value_arr.push($(this).val());
					value_str = value_str + $(this).val() + ","
				}
			});
			value_arr=$.makeArray(value_arr);
			console.log(value_arr);
			console.log(value_str);
			$.ajax({
				url:"${pageContext.request.contextPath}/user/deleteItems.do",
				type:"post",
				traditional:true,
				// dataType:"text",
				data: {
					ids:value_arr
				},
				success: function (datas) {
					console.log((datas));
					location.href = "${pageContext.request.contextPath}/user/findAll.do?page=1&size=10&condition="+condition[1];
				}
			});

		})

		$("#MsgItems").click(function () {


			var value_str="";
			var value_arr=[];
			var $inputCheckedArr =$("input[type='checkbox']");//获取input控件
			//拿到被选中checkbox的value
			$inputCheckedArr.each(function () {

				if ($(this).prop('checked') === true) {
					//4.将每个input的值放进结果集

					value_arr.push($(this).val());
					value_str = value_str + $(this).val() + ","
				}
			});
			// value_arr=$.makeArray(value_arr);
			// console.log(value_arr);
			console.log(value_str);
			$.addCookie({
				path:"/",
				key:"receivers",
				value:value_arr.toString()
			})
			setTimeout(function (){
				window.location.href="${pageContext.request.contextPath}/pages/message-to-users.jsp"
			},500)


		})
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

		function fuzzyQuery(){
			var condition=$("#condition").val();
			console.log($("#condition").val());
			$.ajax({
				url:"${pageContext.request.contextPath}/user/findAll.do",
				type:"post",
				// traditional:true,
				dataType:"text",
				data: {
					condition:$("#condition").val()
				},
				success: function () {
					location.href = "${pageContext.request.contextPath}/user/findAll.do?page=1&size=10&condition="+condition[1];
				}
			});

		}


		//排序
		$(document).ready(function(){

			$('.orderBy').bind('click',test)
		});
		function test(){
			var $orderBys=$('.orderBy')
			var orderArr=[];
			var orderStr;
			var ids=[];
			var classname=[];
			var classJson={};
			if($(this).hasClass("sorting_asc")?$(this).attr("class","orderBy sorting_desc"):$(this).attr("class","orderBy sorting_asc"))
			$orderBys.each(function () {
				if ($(this).hasClass("sorting_asc")) {
					orderArr.push($(this).attr("id")+" asc");
				}else if($(this).hasClass("sorting_desc")){
					orderArr.push($(this).attr("id")+" desc");
				}
				ids.push($(this).attr("id"));
				classname.push($(this).attr("class"))
				// orderArr=orderArr.push(1);
			});
			addJson(classJson,ids,classname);
			orderStr=orderArr.toString();
			location.href = "${pageContext.request.contextPath}/user/findAll.do?page=1&size=10&condition="+condition[1]+"&orderbys="+orderStr;
			//数组、Json存入cookie会变成字符串，所以在下一次取出时需转换
			$.addCookie({
				key:"orderbys",
				value:orderStr
			});
			$.addCookie({
				key:"ids",
				value:ids.toString()
			});
			$.addCookie({
				key:"classJson",
				value:classJson
			});
			console.log(orderArr);
			console.log(orderStr);



		}

		function addJson(data, key_arr, var_arr) {
			for (var i = 0; i < key_arr.length; i++) {
				data[key_arr[i]] = var_arr[i];
			}
			data = JSON.stringify(data);
		}


		$(document).ready(function() {

			// 激活导航位置
			setSidebarActive("admin-datalist");

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
			var ids=[];
			console.log($.getCookie("ids"));
			if($.getCookie("ids") !== ""&&$.getCookie("ids") !== undefined){
				ids=($.getCookie("ids")).split(",");
			}

			// var ids=($.getCookie("ids")).split(",");
			var classJson={};
			if($.getCookie("classJson") !== ""&&$.getCookie("classJson") !== undefined){
				classJson=$.parseJSON($.getCookie("classJson"));
			}

			console.log(typeof classJson.bianma);
			for (var i=0;i<ids.length;i++){
				console.log(ids[i]);
				// var currentId=ids[i];
				// console.log(classJson.ids[i]);
				$('#'+ids[i]).attr("class",classJson[ids[i]]);

			}

		});
	</script>
</body>

</html>