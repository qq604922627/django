<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

    <%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<base href="<%=basePath%>"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>发布文章</title>
 <script src="ckeditor/ckeditor.js"></script>
</head>
<body>
	<div style="width: 50%;height: 300px; margin: 0 auto; " >
<form method="post" action="${pageContext.request.contextPath }/content/insertcontent">


			标题:<input type="text" name="tiele">
			
            <textarea name="text" id="editor1" rows="10" cols="80">
                     发布文章！
            </textarea>
            <script>
                // Replace the <textarea id="editor1"> with a CKEditor
                // instance, using default configuration.
                CKEDITOR.replace( 'editor1' );
            </script>
            关键词:<input type="text" name="keyword">
            <input type="submit" value="发布" />
        </form>
        </div>
</body>
</html>