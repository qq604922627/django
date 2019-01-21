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

<!doctype html>
<html>
<base href="<%=basePath%>"></base>
<head>
<meta charset="gbk">
<title>${categoryson1.categorysonName }_个人博客 </title>
<meta name="keywords" content="个人博客" />
<meta name="description" content="个人博客" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="favicon.ico" />
<link href="css/base.css" rel="stylesheet">
<link href="css/index.css" rel="stylesheet">
<link href="css/m.css" rel="stylesheet">
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery.easyfader.min.js"></script>
<script src="js/scrollReveal.js"></script>
<script src="js/common.js"></script>
<script src="js/page2.js"></script>
<!--[if lt IE 9]>
<script src="js/modernizr.js"></script>
<![endif]-->
</head>
<body>
<header> 
  <!--menu begin-->
  <div class="menu">
    <nav class="nav" id="topnav">
      <h1 class="logo"><a href="<%=path %>/index.jsp">MY博客</a></h1>
      
      <li><a href="<%=path %>/index.jsp">网站首页</a> </li>
      <li><a href="<%=path %>/user/about">关于我</a> </li>
     
      <c:forEach items="${requestScope.category}" var="ct">
       <li><a href="javascript:void(0)">${ct.categoryName}</a>
        <ul class="sub-nav">
        <c:forEach items="${ct.cslist}" var="cs"> 
          <li><a href="${pageContext.request.contextPath }/content/contentcategory?categoryid=${cs.id}">${cs.categorysonName}</a></li>
          </c:forEach>
        </ul>
      </li>
      
      </c:forEach>   
      <li><a href="${pageContext.request.contextPath }/content/time">时间轴</a> </li>
      <li><a href="javascript:void(0)">留言</a> </li>
      <li><a href="backstage/login.jsp">登录</a> </li>
      
      
      
      <!--search begin-->
      <div id="search_bar" class="search_bar">
        <form  id="searchform" action="[!--news.url--]e/search/index.php" method="post" name="searchform">
          <input class="input" placeholder="想搜点什么呢..." type="text" name="keyboard" id="keyboard">
          <input type="hidden" name="show" value="title" />
          <input type="hidden" name="tempid" value="1" />
          <input type="hidden" name="tbname" value="news">
          <input type="hidden" name="Submit" value="搜索" />
          <span class="search_ico"></span>
        </form>
      </div>
      <!--search end--> 
    </nav>
  </div>
  <!--menu end--> 
  
  <!--mnav begin-->
  <div id="mnav">
    <h2><a href="<%=path %>/index.jsp" class="mlogo">MY博客</a><span class="navicon"></span></h2>
    <dl class="list_dl">
      <dt class="list_dt"> <a href="<%=path %>/index.jsp">网站首页</a> </dt>
      <dt class="list_dt"> <a href="<%=path %>/user/about">关于我</a> </dt>
       <c:forEach items="${requestScope.category}" var="ct">
       <dt class="list_dt"> <a href="javascript:void(0)">${ct.categoryName}</a> </dt>
      <dd class="list_dd">
        <ul>
        <c:forEach items="${ct.cslist}" var="cs"> 
          <li><a href="<%=path %>/content/contentcategory?categoryid=${cs.id}">${cs.categorysonName}</a></li>
          </c:forEach>
        </ul>
      </dd>

      
      </c:forEach>   
      <dt class="list_dt"> <a href="<%=path %>/content/time">时间轴</a> </dt>
      <dt class="list_dt"> <a href="javascript:void(0)">留言</a> </dt>
      <dt class="list_dt" ><a href="backstage/login.jsp">登录</a> </dt>
    </dl>
  </div>
  <!--mnav end--> 
</header> 
<div class="pagebg sh"></div>
<div class="container">
  <h1 class="t_nav"><span>好咖啡要和朋友一起品尝，好“模板”也要和同样喜欢它的人一起分享。 </span><a href="<%=path %>/index.jsp" class="n1">网站首页</a><a href="/" class="n2">${categoryson1.categorysonName }</a></h1>


<div class="share" id="share">
<ul>
<c:if test="${cc==0}">
博主很懒，还没有发布相关内容的文章。
</c:if>
<c:forEach items="${requestScope.content }" var="cont">
 <li> <div class="shareli"><a href="${pageContext.request.contextPath }/content/contentid?contentid=${cont.id}" target="_blank"> <i><img src="${cont.image }"></i>
      <h2><b>${cont.tiele }</b></h2>
      <span> 浏览量| ${cont.pageview }</span> </a></div> </li>
      </c:forEach>
</ul>
</div>

<div class="pagelist" id="pagelist"></div>


</div>
<footer>
  <p>Design by <a href="<%=path %>/index.jsp" target="_blank">个人博客</a> <a href="/"></a>今日访问量:${fwrs }。</p>
</footer>
<a href="#" class="cd-top">Top</a>
</body>
</html>
