
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="0">
<title>登录</title>

<link href="css/login1.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.js"></script>
<script type="text/javascript" src="js/util.js"></script>
<script type="text/javascript">
	$(window)
			.ready(
					function() {
						document.getElementById("y").onblur = function() {
							//发异步请求

							var xhr = getXmlHttpRequest();
							xhr.onreadystatechange = function() {
								if (xhr.readyState < 4) {
									document.getElementById("yzmspan").innerHTML = "判断验证码是否正确中~";
								}
								if (xhr.readyState == 4) {
									if (xhr.status == 200) {
										var a = xhr.responseText;
										//获取响应正文
										document.getElementById("yzmspan").innerHTML = a;
										if (a == "<font color='black'>验证码正确</font>") {
											document.bb.submit.disabled = false
										} else {
											document.bb.submit.disabled = true
										}
									}
								}

							}
							xhr.open("POST", "/OnlineClass/code?time="
									+ new Date().getTime());
							xhr.setRequestHeader("Content-Type",
									"application/x-www-form-urlencoded");
							xhr.send("yzm=" + this.value);
						}

					})
</script>
<script type="text/javascript">
	function checkUserByAjax() {
		var user = $("#name").val();//获取表单元素值  
		var pwd = $("#pwd").val();
		var yzm=$("#y").val();
		if (user == "") {
			$("#namespan").html("用户名不能为空!");
			return false;
		} else if (pwd == "") {
			$("#namespan").html("");
			$("#pwdspan").html("密码不能为空!");
			return false;
		} else if(yzm == ""){
			$("#yzmspan").html("验证码不能为空!");
			return false;
		}else if( yzm =="验证码"){
			$("#yzmspan").html("验证码错误!");
			return false;
		}else
		{
			return true;
		}
	}

	function myReload() {
		document.getElementById("CreateCheckCode").src = document
				.getElementById("CreateCheckCode").src
				+ "?nocache=" + new Date().getTime();
	}
</script>
</head>
<body>
	<div class="login_box">
		<div class="login_l_img">
			<a href="../index.jsp"><img src="image/login_img.png" /></a>
		</div>
		<div class="login">
			<div class="login_name">
				<p>用户登录</p>
			</div>
			<form name="bb" method="post" action="${pageContext.request.contextPath }/user/login"
				onsubmit="return checkUserByAjax()">
				<input id="name" name="username" type="text" value="用户名"> <span
					class="aa" id="namespan"></span> <br> <input name="password"
					type="password" id="pwd" /> <span class="aa" id="pwdspan"></span>
				<br> <input id="y" type="text" name="yzm" style="width: 50%;"
					value="验证码"> <img src="pictureCheckCode"
					id="CreateCheckCode" align="middle"
					style="margin-top: 7px; float: right;"> <a href=""
					onclick="myReload()"
					style="font-size: 12px; color: red; margin-left: 156px; float: right;">看不清,换一个</a>
				<br> <span class="aa" id="yzmspan"></span> <input name="submit" value="登录"
					style="width: 100%;" type="submit"> <br> <a
					href="Regist.jsp" style="float: right;">还没有注册呢！</a>
			</form>
		</div>
		</div>
</body>
</html>
