<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/backstage/";
%>
<base href="<%=basePath%>"></base>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="assets/css/layui.css"  />
<link rel="stylesheet" href="assets/css/view.css"  />
<link rel="icon" href="/favicon.ico">
<title>管理后台</title>
</head>
<body class="layui-view-body">
	<div class="layui-content">
		<div class="layui-page-header">
			<div class="pagewrap">
				<span class="layui-breadcrumb"> <a href="">首页</a> <a href="">用户</a>
					<a><cite>用户组</cite></a>
				</span>
				<h2 class="title">用户组</h2>
			</div>
		</div>
		<div class="layui-row">
			<div class="layui-card">
				<div class="layui-card-body">
					<div class="form-box">
						<div class="layui-form layui-form-item">
							<div class="layui-inline">
								<div class="layui-form-mid">用户名:</div>
								<div class="layui-input-inline" style="width: 100px;">
									<input type="text" autocomplete="off" class="layui-input">
								</div>
								<div class="layui-form-mid">邮箱:</div>
								<div class="layui-input-inline" style="width: 100px;">
									<input type="text" autocomplete="off" class="layui-input">
								</div>
								<div class="layui-form-mid">性别:</div>
								<div class="layui-input-inline" style="width: 100px;">
									<select name="sex">
										<option value="1">男</option>
										<option value="2">女</option>
									</select>
								</div>
								<button class="layui-btn layui-btn-blue">查询</button>
								<button class="layui-btn layui-btn-primary">重置</button>
							</div>
						</div>
						<button class="layui-btn layui-btn-blue">
							<i class="layui-icon">&#xe654;</i>新增
						</button>
						<table id="demo"></table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript"  src="../js/layui.all.js" charset="UTF-8" ></script>
	<script>
		var element = layui.element;
		var table = layui.table;
		var form = layui.form;

		//展示已知数据
		table.render({
			elem : '#demo',
			cols : [ [ //标题栏
			{
				field : 'id',
				title : 'ID',
				width : 80,
				sort : true
			}, {
				field : 'username',
				title : '用户名',
				width : 120
			}, {
				field : 'nickname',
				title : '昵称',
				minWidth : 150
			}, {
				field : 'sex',
				title : '性别',
				minWidth : 150
			}, {
				field : 'age',
				title : '年龄',
				minWidth : 150
			},  {
				field : 'birthday',
				title : '生日',
				minWidth : 150
			},  {
				field : 'email',
				title : '邮箱',
				minWidth : 150
			}, {
				field : 'registtime',
				title : '注册时间',
				width : 80,
				sort : true
			}, {
				field : 'state',
				title : '状态',
				width : 80,
				sort : true
			} ] ],
			data : [ {
				"id" : "10008",
				"username" : "贤心",
				"nickname" : "浙江杭州",
				"sex" : "男",	
				"age" : "人生恰似一场修行",
				"birthday" : "106",
				"email" : "192.168.0.8",
				"registtime" : "106",
				"state" : "2016-10-14"
			} ],
			skin : 'line' //表格风格
			,
			even : true,
			page : true //是否显示分页
			,
			limits : [ 5, 7, 10 ],
			limit : 5
		//每页默认显示的数量
		});
	</script>
</body>
</html>