<%@ page isELIgnored="false" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>显示所有数据</title>
</head>
<body>



<c:forEach items="${requestScope.allcontent}" var="all">

<div>
标题</div>
<div style="background-color: red;">
${msg}
${all.id}
${all.tiele}
</div>
</c:forEach>



</body>
</html>