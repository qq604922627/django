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

<!DOCTYPE html>
<html lang="zh-CN">
<base href="<%=basePath%>"></base>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="assets/css/layui.css">
    <link rel="stylesheet" href="assets/css/login.css">
    <link rel="shortcut icon" href="../favicon.ico" />
    <script src="assets/layui.js"></script>
	<script src="js/index.js" data-main="login"></script>
	<script type="text/javascript" src="../js/loginjy.js"></script>
    <title>管理后台</title>
</head>
<body class="login-wrap">
    <div class="login-container">
        <form class="login-form" name="f" method="POST" action="<%=path %>/user/login" >
            <div class="input-group">
                <input type="text" id="username" name="username" class="input-field"  placeholder="用户名" >      
            </div>
            <div class="input-group">
            <input type="password" id="password" name="password" class="input-field"  placeholder="密码">
                
            </div>
            <button type="submit" class="login-button" onclick="return loginform()">登录<i class="ai ai-enter"></i></button>
            <div style="text-align: right;">
            <a href="<%=path %>/index.jsp" style="text-align: right;" > 返回</a>
            </div>
        </form>
    </div>
</body>

</html>