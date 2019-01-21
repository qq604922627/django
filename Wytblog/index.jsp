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
<title>首页_王云天个人博客 </title>
<meta name="keywords" content="个人博客," />
<meta name="description" content="个人博客" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="favicon.ico" />
<link href="css/base.css" rel="stylesheet">
<link href="css/index.css" rel="stylesheet">
<link href="css/m.css" rel="stylesheet">

<!--  -->
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery.easyfader.min.js"></script>
<script src="js/scrollReveal.js"></script>
<script src="js/common.js"></script>
<!--[if lt IE 9]>
<script src="js/modernizr.js"></script>
<![endif]-->

<script type="text/javascript"> 
 
$(function(){ 
	$("#sp").trigger("click");
 
}); 
</script>
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
<article> 
  <!--banner begin-->
 <div class="picsbox"> 
  <div class="banner">
    <div id="banner" class="fader">
    	<c:forEach items="${requestScope.goodcontent}" var="gc">
    	<c:forEach items="${gc.content }"  var="c">
    	<li class="slide" ><a href="<%=path %>/content/contentid?contentid=${c.id}" target="_blank"><img src="${c.image }"><span class="imginfo">${c.tiele } </span></a></li>
    	</c:forEach>   	
    	</c:forEach>
      <div class="fader_controls">
        <div class="page prev" data-target="prev">&lsaquo;</div>
        <div class="page next" data-target="next">&rsaquo;</div>
        <ul class="pager_list">
        </ul>
      </div>
    </div>
  </div>
  <!--banner end-->
  <div class="toppic">
  
  <c:forEach items="${requestScope.goodcontent}" begin="1" var="gc">
    	<c:forEach items="${gc.content }"  var="c">   	
    	 <li> <a href="<%=path %>/content/contentid?contentid=${c.id}" target="_blank"> 
    	 <i><img src="${c.image }"></i>
     	 <h2>${c.tiele }</h2>
      	 <span>学无止境</span> </a> </li>     	 
    	</c:forEach>   	
  </c:forEach>
   
    
  </div>
  </div>
  <div class="blank"></div>
  <!--blogsbox begin-->
  
  
  <div class="blogsbox">

  
  <c:if test="${empty aa}">
  <a href="${pageContext.request.contextPath }/main/index"><span id="sp">自动点击</span></a>
</c:if>

  <c:forEach items="${requestScope.content}" var="allcontent">
    <div class="blogs" data-scroll-reveal="enter bottom over 1s" >
      <h3 class="blogtitle"><a href="${pageContext.request.contextPath }/content/contentid?contentid=${allcontent.id}" target="_blank">
      ${allcontent.tiele} 
      </a></h3>
      <span class="blogpic"><a href="${pageContext.request.contextPath }/content/contentid?contentid=${allcontent.id}" title=""><img src="${allcontent.image }" alt=""></a></span>
      
      <c:if test="${fn:length(allcontent.text)>100 }" >
      
      <a href="${pageContext.request.contextPath }/content/contentid?contentid=${allcontent.id}">
      <span class="blogtext"> ${fn:substring(allcontent.text, 0, 100)}...</span> </a>
      </c:if>
      <c:if test="${fn:length(allcontent.text)<100}" >
      <a href="${pageContext.request.contextPath }/content/contentid?contentid=${allcontent.id}">
      <span class="blogtext">  ${allcontent.text} </span> </a>
      </c:if>    
      <div class="bloginfo">
        <ul>
        <c:forEach items="${allcontent.user}" var="user"> 
        <li class="author"><a href="javascript:void(0)">${user.nickname}</a></li>
          </c:forEach>        
          <li class="lmname"><a href="javascript:void(0)">${allcontent.keyword}</a></li>
          <li class="timer"><fmt:formatDate value="${allcontent.time}" pattern="yyyy-M-d" /></li>          
          <li class="view"><span>${allcontent.pageview}</span>已阅读</li>          
        </ul>
      </div>
    </div>
    </c:forEach>
  </div>
  <!--blogsbox end-->
  <div class="sidebar">   
    <div class="tuijian">
      <h2 class="hometitle">点击排行</h2>
      <ul class="tjpic">
      <c:forEach items="${requestScope.pageview }" begin="0" end="0" var="pg">
        <i><img src="${pg.image }"></i>
        <p><a href="${pageContext.request.contextPath }/content/contentid?contentid=${pg.id}">${pg.tiele }</a></p>
        </c:forEach>
      </ul>
       <ul class="sidenews">
      <c:forEach items="${requestScope.pageview }" begin="1" var="pg">
      <li> <i><img src="${pg.image }"></i>
          <p><a href="${pageContext.request.contextPath }/content/contentid?contentid=${pg.id}">${pg.tiele }</a></p>
          <span><fmt:formatDate value="${pg.time}" pattern="yyyy-M-d" /></span> </li>
      </c:forEach>    
      </ul>
    </div>
    <div class="cloud">
      <h2 class="hometitle">标签云</h2>
      <ul>
      <c:forEach items="${requestScope.categoryson}" var="cs">
        <a href="${pageContext.request.contextPath }/content/contentcategory?categoryid=${cs.id}">${cs.categorysonName}</a> 
        </c:forEach>
      </ul>
    </div>
    <div class="links">
      <h2 class="hometitle">友情链接</h2>
      <ul>
        <li><a href="http://www.yangqq.com" target="_blank">杨青博客</a></li>
        <li><a href="http://www.yangqq.com" target="_blank">D设计师博客</a></li>
        <li><a href="http://www.yangqq.com" target="_blank">优秀个人博客</a></li>
      </ul>
    </div>
    <div class="guanzhu" id="follow-us">
      <h2 class="hometitle">关注我们 么么哒！</h2>
      <ul>
        <li class="sina"><a href="https://weibo.com/2661567107/profile?rightmod=1&wvr=6&mod=personinfo&is_hot=1" target="_blank"><span>新浪微博</span>阴天云天下雨天</a></li>
        <li class="tencent"><a href="http://t.qq.com/a7101401" target="_blank"><span>腾讯微博</span>腾讯微博</a></li>
        <li class="qq"><a href="http://wpa.qq.com/msgrd?v=3&uin=604922627&site=qq&menu=yes" target="_blank"><span>QQ号</span>604922627</a></li>
        <li class="email"><a href="mailto:604922627@qq.com" target="_blank"><span>邮箱帐号</span>604922627@qq.com</a></li>      
      </ul>
    </div>
  </div>
</article>
<footer>
  <p>Design by <a href="<%=path %>/main/index" target="_blank">个人博客</a> <a href="/"></a>今日访问量:${fwrs }。</p>
</footer>
<a href="#" class="cd-top">Top</a>


</body>
</html>
