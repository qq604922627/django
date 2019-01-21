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
<head>
<base href="<%=basePath%>"></base>
<meta charset="gbk">
<title>关于我_个人博客 </title>
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
<div class="pagebg ab"> </div>
<div class="container">
  <h1 class="t_nav"><span>一心只想发家致富的青年~！</span><a href="/" class="n1">网站首页</a><a href="/" class="n2">关于我</a></h1>
  <div class="news_infos">
    <ul>
    <li>
      <p>
      希望自己能不断进步吧。
      </p>
      <br/>
      <h2>About my blog</h2>
      &nbsp;
      <p>域 名：www.xhnxh.com </p>
      <br />
      <p>服务器：腾讯云服务器</p>
      <br />
      <p>备案号：暂无</p>
      <br />     
      <p>程 序：SSM</p>
      </li>
    </ul>
  </div>
  <div class="sidebar">
    <div class="about">
      <p class="avatar"> <img src="https://wx3.sinaimg.cn/mw1024/9ea44a83ly1fmu3tmydk2j20ku0rdjv2.jpg" alt=""> </p>
      <p class="abname">WangDDDDD | 王云天</p>
      <p class="abposition">啥都喜欢，啥都不会！</p>
      <p class="abtext"> 未来可能会秃顶的程序员！ </p>
    </div>
     <div class="guanzhu" id="follow-us">
      <h2 class="hometitle">关注我！</h2>
      <ul>
        <li class="sina"><a href="https://weibo.com/2661567107/profile?rightmod=1&wvr=6&mod=personinfo&is_hot=1" target="_blank"><span>新浪微博</span>阴天云天下雨天</a></li>
        <li class="tencent"><a href="http://t.qq.com/a7101401" target="_blank"><span>腾讯微博</span>腾讯微博</a></li>
        <li class="qq"><a href="http://wpa.qq.com/msgrd?v=3&uin=604922627&site=qq&menu=yes" target="_blank"><span>QQ号</span>604922627</a></li>
        <li class="email"><a href="mailto:604922627@qq.com" target="_blank"><span>邮箱帐号</span>604922627@qq.com</a></li>
        
      </ul>
    </div>
  </div>
 
</div>
<footer>
  <p>Design by <a href="<%=path %>/index.jsp" target="_blank">个人博客</a> <a href="/"></a>今日访问量:${fwrs }。</p>
</footer>
<a href="#" class="cd-top">Top</a>
</body>
</html>
