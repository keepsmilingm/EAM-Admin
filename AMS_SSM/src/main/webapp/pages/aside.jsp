<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<aside class="main-sidebar" style="z-index: 2">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img id="asideIcon" src="" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p class="user-name-label">

                    <%--					<security:authentication property="principal.username"></security:authentication>--%>
                </p>
                <a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
            </div>
        </div>

        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
            <li class="header">菜单</li>
            <li id="admin-index"><a
                    href="${pageContext.request.contextPath}/pages/main.jsp"><i
                    class="fa fa-dashboard"></i> <span>首页</span></a></li>

            <li class="treeview">

                <a href="#"> <i class="fa fa-user-o"></i>
                    <span>用户管理</span> <span class="pull-right-container"> <i
                            class="fa fa-angle-left pull-right"></i>
				    </span>
                </a>
                <ul class="treeview-menu">
                    <li id="system-setting">
                        <a href="${pageContext.request.contextPath}/user/fuzzyQuery.do?page=1&size=10&condition=">
                            <i class="fa fa-circle-o"></i> 用户管理
                        </a>

                    </li>
                    <li id="system-setting">
                    <security:authorize access="hasRole('ADMIN')">
                        <a href="${pageContext.request.contextPath}/role/findAll.do"> <i class="fa fa-circle-o"></i> 角色管理</a>
                    </security:authorize>
                    </li>
                    <%--					<li id="s"><a--%>
                    <%--						href="${pageContext.request.contextPath}/permission/findAll.do">--%>
                    <%--							<i class="fa fa-circle-o"></i> 资源权限管理--%>
                    <%--					</a></li>--%>

                </ul>

            </li>
            <li class="treeview"><a href="#"> <i class="fa fa-cube"></i>
                <span>资产管理</span> <span class="pull-right-container"> <i
                        class="fa fa-angle-left pull-right"></i>
				</span>
            </a>
                <ul class="treeview-menu">

<%--                    <li><a--%>
<%--                            href="${pageContext.request.contextPath}/product/findAll.do">--%>
<%--                        <i class="fa fa-circle-o"></i> 产品管理--%>
<%--                    </a></li>--%>
<%--                    <li><a--%>
<%--                            href="${pageContext.request.contextPath}/orders/findAll.do?page=1&size=10"> <i--%>
<%--                            class="fa fa-circle-o"></i> 订单管理--%>
<%--                    </a></li>--%>
                    <li>
                        <a href="${pageContext.request.contextPath}/asset/fuzzyQuery.do?page=1&size=10&condition=">
                            <i class="fa fa-circle-o"></i> 资产列表</a>
                    </li>
                    <li><a id="repairHerf"><i class="fa fa-circle-o"></i> 维修管理</a></li>
                    <li><a id="scrapHerf"> <i class="fa fa-circle-o"></i> 报废管理
                    </a></li>
                    <li><a id="AllotHerf"> <i class="fa fa-circle-o"></i> 移交管理</a></li>
                    <li><a id="InventoryHerf"> <i class="fa fa-circle-o"></i> 盘点管理</a></li>


                </ul>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/department/findAll.do">
                    <i class="fa fa-paragraph"></i>部门管理</a>
            </li>
            <li>
                <a id="msgJump">
                    <i class="fa fa-magic"></i>消息管理</a>
            </li>

            <li class="treeview"><a href="#"> <i class="fa fa-cogs"></i>
                <span>系统管理</span> <span class="pull-right-container"> <i
                        class="fa fa-angle-left pull-right"></i>
				</span>
            </a>
                <ul class="treeview-menu">

                    <li id="">
                        <security:authorize access="hasRole('ADMIN')">
                            <a
                                    href="${pageContext.request.contextPath}/sysLog/findAll.do"> <i
                                    class="fa fa-circle-o"></i> 访问日志
                            </a>
                        </security:authorize>
                    </li>

                </ul>
            </li>


        </ul>
    </section>
    <!-- /.sidebar -->
</aside>