<%@ page isELIgnored="false" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<base href="<%=basePath%>"></base>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="shortcut icon" href="favicon.ico" />
<title>发布文章</title>
 <script src="ckeditor/ckeditor.js"></script>
 <script src="js/jquery.min.js" type="text/javascript"></script>
 <script src="js/select.js" type="text/javascript"></script>
 <script type="text/javascript" src="js/contentinsert.js"></script>
 <script type="text/javascript" src="ckeditor/ckeditor.js"></script>
 <script type="text/javascript">
function contentform()
{
 if(document.fc.tiele.value.length==0)
 {
  alert("文章标题不能为空!");
  document.fc.tiele.focus();
  return false;
 } 
 else if(document.fc.categoryId.value=="0")
 {
  alert("请选择文章分类!");
  document.fc.categoryId.focus();
  return false; 
 }else if(document.fc.image.value.length==0){
	 alert("请添加文章显示图片！!");
	 document.fc.image.focus();
	 return false; 
 }else if(CKEDITOR.instances.message.getData()==""){
	 alert("请输入文章内容！")
	 document.fc.text.focus();
	 return false; 
 }else if(document.fc.keyword.value.length==0){
	 alert("请输入文章关键词！")
	 document.fc.keyword.focus();
	 return false; 
 }
 $('#message').val(CKEDITOR.instances.message.getData());
	insertcontent()	

}
</script>
</head>
<body>
<div style="width: 100%;height: 400px; margin: 0 auto; " >
<form method="post" action="" name="fc" id="fc">
	<input type="text" name="userId" value="${sessionScope.user.id }" readonly="readonly" style="display:none">
			标题:<input type="text" name="tiele">
			类别:<select id="category" name="category" onChange="findClass()">
			<option value="0">请选择</option>
			
			<c:forEach items="${requestScope.category}" var="ct">
			<option value="${ct.id }">${ct.categoryName }</option>	
			</c:forEach>
			</select>	
			<select id="csonId" name="categoryId">  
   				<option value="0" >选择类别</option>  
                </select>  
                图片:<input type="text" name="image">	
           <textarea name="text" id="message" rows="5" cols="80"></textarea>

 			<script>
  			CKEDITOR.replace("message");     
 		</script>
            关键词:<input type="text" name="keyword">
            <input type="submit" value="发布" id="subid" onclick="return contentform()"/>
            <div id="rrr"></div>
        </form>
        </div>
</body>
</html>