<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>显示所有数据</title>
</head>
<body>

<a href="${pageContext.request.contextPath }/content/all.action">点我啊</a>
<table>

<tr>
<td>
标题
</td>
<td>
${msg}
</td>
</tr>


</table>

</body>
</html>