<%@ page import="org.springframework.security.core.context.SecurityContext" %>
<%@ page import="org.springframework.security.core.Authentication" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!-- 页面头部 -->
<header class="main-header" style="z-index: 3">
	<!-- Logo -->
	<a href="all-admin-index.html" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
		<span class="logo-mini"><b>资产</b></span> <!-- logo for regular state and mobile devices -->
		<span class="logo-lg"><b>资产管理系统</b></span>
	</a>
	<!-- Header Navbar: style can be found in header.less -->
	<nav class="navbar ">
		<!-- Sidebar toggle button-->
		<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
			role="button"> <span class="sr-only">Toggle navigation</span>
		</a>

		<div class="navbar-custom-menu">
			<ul class="nav navbar-nav" id="headMsgPanel">
				<!-- Messages: style can be found in dropdown.less-->
				<li class="dropdown messages-menu">
					<a href="#" >
						<i class="fa fa-envelope-o"></i>
						<span class="label label-success">0</span>
					</a>
				</li>
				<!-- Notifications: style can be found in dropdown.less -->
				<li class="dropdown notifications-menu">
					<a href="#" >
						<i class="fa fa-flag-o"></i>
						<span class="label label-danger">0</span>
					</a>
				</li>
				<!-- Tasks: style can be found in dropdown.less -->
				<li class="dropdown tasks-menu">
					<a href="#" >
						<i class="fa fa-bell-o"></i>
						<span class="label label-warning">0</span>
					</a>
				</li>
				<!-- Control Sidebar Toggle Button -->
				<li>
					<a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
				</li>
				<li class="dropdown user user-menu"><a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <img id="headIcon2" src="" class="user-image" alt="User Image">


						<%--					<security:authentication property="principal.username"></security:authentication>--%>
					<%--							<security:authentication property="principal.username"></security:authentication>--%>

				</a>
					<ul class="dropdown-menu dropdown tasks-menu" >
						<!-- User image -->
						<li class="user-header"  ><img id="headIcon1" src=""
								class="img-circle" alt="User Image"></li>

						<!-- Menu Footer-->
						<li class="user-footer">
							<div class="pull-left">
								<a id="headUser" href="${pageContext.request.contextPath}/pages/user-edit.jsp" class="btn btn-default btn-flat">修改密码</a>
							</div>
							<div class="pull-right">
								<a href="${pageContext.request.contextPath}/logout.do"
								   class="btn btn-default btn-flat">注销</a>
							</div>
						</li>
					</ul></li>

			</ul>
<%--			<ul class="nav navbar-nav">--%>


<%--				--%>
<%--			</ul>--%>
		</div>
	</nav>
</header>

<!-- 页面头部 /-->

