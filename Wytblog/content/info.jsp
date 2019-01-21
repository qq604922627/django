<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>学无止境_王云天个人博客</title>
<meta name="keywords" content="个人博客" />
<meta name="description" content="个人博客。" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="favicon.ico" />
<link href="css/base.css" rel="stylesheet">
<link href="css/index.css" rel="stylesheet">
<link href="css/m.css" rel="stylesheet">
<link href="css/pinglun.css" rel="stylesheet">
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery.easyfader.min.js"></script>
<script src="js/scrollReveal.js"></script>
<script src="js/common.js"></script>
<script src="js/page.js"></script>
<script type="text/javascript" src="js/commentinsert.js"></script>

<!--[if lt IE 9]>
<script src="js/modernizr.js"></script>
<![endif]-->
<script type="text/javascript"> 
$(function(){ 	
	$("#sp").trigger("click");
 
}); 

</script>
<script type="text/javascript">
function commentform()
{
 if(document.f.email.value=="")
 {
  alert("邮箱不能为空!");
  document.f.email.focus();
  return false;
 } 
 else if(document.f.text.value=="")
 {
  alert("评论不能为空!");
  document.f.text.focus();
  return false; 
 }
 insertcomment()
}
</script>
<script type="text/javascript">
$(document).ready(function(){$("news_con img").addClass('img-responsive');});
</script>
</head>
<body>
<c:if test="${empty bb}">
  <a href="<%=path %>/main/index"><span id="sp">自动点击</span></a>
</c:if>

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
  <h1 class="t_nav"><span>您现在的位置是：首页 > ${category1.categoryName} > ${categoryson1.categorysonName }</span><a href="<%=path %>/index.jsp" class="n1">网站首页</a><a href="javascript:void(0)" class="n2">${category1.categoryName}</a></h1>
  <div class="infosbox">
    <div class="newsview">
      <h3 class="news_title">${contentid.tiele}</h3>
      <div class="bloginfo">
        <ul>
          <li class="author"><a href="javascript:void(0)">${user.nickname}</a></li>
          <li class="lmname"><a href="javascript:void(0)">${contentid.keyword}</a></li>
          <li class="timer"><fmt:formatDate value="${contentid.time}" pattern="yyyy-M-d" /></li>
          <li class="view">${contentid.pageview}已阅读</li>
         
        </ul>
      </div>
      <div class="tags"><a href="javascript:void(0)" >${contentid.keyword}</a> </div>
      <div class="news_about"><strong>简介</strong>个人博客，记录自己生活的点点滴滴。</div>
      <div class="news_con"> 
      ${contentid.text}
      </div>
    </div>
    
    
    <div class="otherlink">
      <h2>相关文章</h2>
      <ul>
      <c:forEach items="${requestScope.contentxg }" var="xg" end="10" >    
       <li><a href="<%=path %>/content/contentid?contentid=${xg.id}" title="${xg.tiele }">${xg.tiele }</a></li>    
      </c:forEach>      
      </ul>
    </div>
    <div class="news_pl" id="news_pl">
      <h2>文章评论</h2>
      <ul>   
      <c:if test="${aa !=null}">
     		<div class="gbko"> ${aa }</div>
      </c:if>
      <c:if test="${ aa ==null}">
      	<c:forEach items="${requestScope.comment }" var="cm">
      	 <li>
      	<div class="gbko">${cm.text } </div>
      	<div class="gbko" style="text-align: right;" >
      	     
         邮箱:<a href="/">${cm.email}</a>               
        || 时间:<fmt:formatDate value="${cm.time}" pattern="yyyy-M-d" />                           	
      	 </div> 
      	 <div style="height: 2px; background: black;"> </div>  
      	  </li>  
      	</c:forEach>
      
      </c:if>
        
      </ul>
    </div>
    <div id="pagelist" style="text-align: center;"></div>
    <div style="height: 2px; background: black;"> </div>  
    <!-- 评论 -->
    <div>
    
<form action="" method="post" id="cf" name="f" class="basic-grey"  >
<h1>发布评论
</h1>
<label>
<span>邮箱 :</span>
<input id="email" type="email" name="email" placeholder="请输入您的邮箱方便博主和您联系！" />
</label>
<input id="contentid" name="contentId" value="${contentid.id }" style="display:none">
<label>
<span>评论 :</span>
<textarea id="text" name="text"  placeholder="你要说的话！"></textarea>
</label>
<label>
<span>&nbsp;</span>
<input type="submit" class="button" id="su" onclick="return commentform()"  value="提交" />
</label>
</form>
    </div>
  </div>
  <div class="sidebar">
    <div class="zhuanti">
      <h2 class="hometitle">特别推荐</h2>
      <ul>
       <c:forEach items="${requestScope.goodcontent}" var="gc" end="3">
       <c:forEach items="${gc.content }"  var="c">
        <li> <i><img src="${c.image }"></i>
          <p>${c.tiele } <span><a href="<%=path %>/content/contentid?contentid=${c.id}">阅读</a></span> </p>
        </li>
        </c:forEach>
       </c:forEach>
      </ul>
    </div>
    
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
          <p><a href="<%=path %>/content/contentid?contentid=${pg.id}">${pg.tiele }</a></p>
          <span><fmt:formatDate value="${pg.time}" pattern="yyyy-M-d" /></span> </li>
      </c:forEach>    
      </ul>
    </div>
   <div class="cloud">
      <h2 class="hometitle">标签云</h2>
      <ul>
      <c:forEach items="${requestScope.categoryson}" var="cs">
        <a href="<%=path %>/content/contentcategory?categoryid=${cs.id}">${cs.categorysonName}</a> 
        </c:forEach>
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
  <p>Design by <a href="<%=path %>/index.jsp" target="_blank">个人博客</a> <a href="/"></a>今日访问量:${fwrs }。</p>
</footer>
<a href="#" class="cd-top">Top</a>
</body>
</html>
