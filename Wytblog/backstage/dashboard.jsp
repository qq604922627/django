<%@ page isELIgnored="false" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/backstage/";
%>
<base href="<%=basePath%>"></base>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="assets/css/layui.css">
    <link rel="stylesheet" href="assets/css/admin.css">
    <link rel="icon" href="/favicon.ico">
    <script src="../js/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript"> 
 
$(function(){ 
	$("#sp").trigger("click");
 
}); 
</script>
    <title>后台管理</title>
    
</head>
<body class="layui-layout-body">
  <c:if test="${empty sessionScope.user}">
  <a href="${pageContext.request.contextPath }/backstage/login.jsp"><span id="sp">自动点击</span></a>
</c:if>
    <div class="layui-layout layui-layout-admin">
        <div class="layui-header custom-header">
            
            <ul class="layui-nav layui-layout-left">
                <li class="layui-nav-item slide-sidebar" lay-unselect>
                    <a href="javascript:;" class="icon-font"><i class="ai ai-menufold"></i></a>
                </li>
            </ul>

            <ul class="layui-nav layui-layout-right">
                <li class="layui-nav-item">
                    <a href="javascript:;">${sessionScope.user.nickname }</a>
                    <dl class="layui-nav-child">
                        <dd><a href="">帮助中心</a></dd>
                        <dd><a href="backstage/login.jsp">退出</a></dd>
                    </dl>
                </li>
            </ul>
        </div>

        <div class="layui-side custom-admin">
            <div class="layui-side-scroll">

                <div class="custom-logo">
                    <img src="assets/images/logo.png" alt=""/>
                    <h1>管理</h1>
                </div>
                <ul id="Nav" class="layui-nav layui-nav-tree">
                    <li class="layui-nav-item">
                        <a href="javascript:;">
                            <i class="layui-icon">&#xe609;</i>
                            <em>主页</em>
                        </a>
                        <dl class="layui-nav-child">
                            <dd><a href="views/console.jsp">控制台</a></dd>
                        </dl>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:;">
                            <i class="layui-icon">&#xe857;</i>
                            <em>相关管理</em>
                        </a>
                        <dl class="layui-nav-child">
                            <dd><a href="<%=path %>/content/insertstart">发布文章</a></dd>
<!--                             <dd> -->
<!--                                 <a href="javascript:;">页面</a> -->
<!--                                 <dl class="layui-nav-child"> -->
<!--                                     <dd> -->
<!--                                         <a href="login.html">登录页</a> -->
<!--                                     </dd> -->
<!--                                 </dl> -->
<!--                             </dd> -->
						<dd><a href="">文章管理</a></dd>
                        </dl>
                    </li>
                    
                    <li class="layui-nav-item">
                        <a href="javascript:;">
                            <i class="layui-icon">&#xe612;</i>
                            <em>分类</em>
                        </a>
                        <dl class="layui-nav-child">
                            <dd><a href="views/users.html">分类管理</a></dd>                         
                        </dl>
                    </li>
                    
                    <li class="layui-nav-item">
                        <a href="javascript:;">
                            <i class="layui-icon">&#xe612;</i>
                            <em>用户</em>
                        </a>
                        <dl class="layui-nav-child">
                            <dd><a href="<%=path %>/user/allUser">用户管理</a></dd>                         
                        </dl>
                    </li>
                    
                </ul>

            </div>
        </div>

        <div class="layui-body">
             <div class="layui-tab app-container" lay-allowClose="true" lay-filter="tabs">
                <ul id="appTabs" class="layui-tab-title custom-tab"></ul>
                <div id="appTabPage" class="layui-tab-content"></div>
            </div>
        </div>

        <div class="layui-footer">
            <p>个人博客后台管理<a href="<%=path %>/index.jsp" target="_blank">个人博客</a></p>
        </div>

        <div class="mobile-mask"></div>
    </div>
    <script src="assets/layui.js"></script>
    <script src="js/index.js" data-main="home"></script>
</body>
</html>