<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>login</title>
<link rel="shortcut icon" type="image/x-icon"
	href="<%=request.getContextPath()%>/jsp/static/image/favicon.ico" media="screen" />
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/jsp/static/css/easyui.css" />
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/jsp/static/css/icon.css" />
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/jsp/static/css/demo.css" />
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/jsp/static/css/main.css" />	
	
<script type="text/javascript"
	src="<%=request.getContextPath()%>/jsp/static/js/jquery.2.1.4.min.js"></script>	
<script type="text/javascript"
	src="<%=request.getContextPath()%>/jsp/static/js/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/jsp/static/js/main.js?0=s9"></script>
</head>
<body class="easyui-layout">
	<div data-options="region:'north',border:false" style="height: 57px;">
		<div class="wu-header"
			data-options="region:'north',border:false,split:true">
			<div class="wu-header-left">
				<h1>EasyUI Web Admin</h1>
			</div>
			<div class="wu-header-right">
				<p>
					<strong class="easyui-tooltip" title="2条未读消息">admin</strong>，欢迎您！
				</p>
				<p>
					<a href="#">首页</a>|<a href="#">关于我</a>|<a href="#">大家的作品</a>|<a href="#">经典作品</a>| <a 
					href="#">聊天</a>|<a href="#">大家的生活</a>|<a href="#">其他技能</a>|<a href="#">私人信息</a>
				</p>
			</div>
		</div>
	</div>
	<div data-options="region:'west',split:true,title:'导航菜单'" style="width: 230px;">
		<div class="easyui-accordion" data-options="fit:true,border:false">
			<div title="每日一句"
				data-options="selected:true,iconCls:'icon-application-cascade'" style="padding: 2px;">
 				<ul class="easyui-tree">
					<li iconCls="icon-book"><a style="text-decoration:none;color:black"
						data-icon="icon-book" data-link="<%=request.getContextPath()%>/jsp/literary/aboutme" iframe="0">今日一句</a></li>
				</ul> 
		<%-- 	<ul class="easyui-tree">
					<li iconCls="icon-book"><a href="<%=request.getContextPath()%>/jsp/literary/aboutme" style="text-decoration:none;color:black"
						data-icon="icon-book" data-link="" iframe="0">今日一句</a></li>
				</ul> --%>
			</div>
			<div title="写作" data-options="iconCls:'icon-book-add'" style="padding: 2px;">
				<ul class="easyui-tree">
					<li iconCls="icon-book-addresses"><a href="javascript:void(0)" style="text-decoration:none;color:black"
						data-icon="icon-book-addresses" data-link="" iframe="0">我的作品</a></li>
				</ul>
			</div>
			<div title="我的作品" style="padding: 2px;" data-options="iconCls:'icon-plugin'">
				<ul class="easyui-tree">
					<li iconCls="icon-book-red" onclick="addPanel();">
						<a href="javascript:void(0)" style="text-decoration:none;color:black"
						data-icon="icon-book-red" data-link="" iframe="0">我的作品1</a></li>
					<li iconCls="icon-book-red" onclick="addPanel();">
						<a href="javascript:void(0)" style="text-decoration:none;color:black"
						data-icon="icon-book-red" data-link="" iframe="0">我的作品2</a></li>
					<li iconCls="icon-book-red" onclick="addPanel();">
						<a href="javascript:void(0)" style="text-decoration:none;color:black"
						data-icon="icon-book-red" data-link="" iframe="0">我的作品3</a></li>
					<li iconCls="icon-book-red" onclick="addPanel();">
						<a href="javascript:void(0)" style="text-decoration:none;color:black"
						data-icon="icon-book-red" data-link="" iframe="0">我的作品4</a></li>
					<li iconCls="icon-book-red" onclick="addPanel();">
						<a href="javascript:void(0)" style="text-decoration:none;color:black"
						data-icon="icon-book-red" data-link="" iframe="0">我的作品5</a></li>
				</ul>
			</div>
			<div title="我的收藏" style="padding: 2px;"  data-options="iconCls:'icon-house-star'">
				<ul class="easyui-tree">
					<li data-options="iconCls:'icon-house-star'">
						<a href="javascript:void(0)" style="text-decoration:none;color:black"
						data-icon="icon-house-star" data-link="" iframe="0">我的 作品</a></li>
				</ul>
			</div>
			<div title="最近阅读" style="padding: 2px;" data-options="iconCls:'icon-book-open'">content2</div>
			<div title="我的消息" style="padding: 2px;" data-options="iconCls:'icon-images'">content2</div>
			<div title="我的感悟" style="padding: 2px;" data-options="iconCls:'icon-book-next'">content2</div>			
		</div>
	</div>
	<div data-options="region:'center',">
		<div id="wxy" class="easyui-tabs" data-options="border:false,fit:true">
			<!-- <div title="首页"
				data-options="href:'temp/layout-1.html',closable:false,iconCls:'icon-tip',cls:'pd3'"></div> -->
			<div title="首页" style="text-align: center;line-height: 23;font-size: 30px;position: fixed;background-image: url(../static/image/snow/bg.jpg);"
				data-options="closable:false,iconCls:'icon-tip',cls:'pd3'">			
				<div id="snowMask"></div>
			 欢迎来到我的文学世界
			</div>
		</div>
	</div>
	<div id="mm" class="easyui-menu" style="width: 170px;">
		<div id="mm-tabclosrefresh" data-options="name:6">刷新</div>
		<div id="mm-tabclose" data-options="name:1">关闭</div>
		<div id="mm-tabcloseall" data-options="name:2">全部关闭</div>
		<div id="mm-tabcloseother" data-options="name:3">除此之外全部关闭</div>
		<div class="menu-sep"></div>
		<div id="mm-tabcloseright" data-options="name:4">当前页右侧全部关闭</div>
		<div id="mm-tabcloseleft" data-options="name:5">当前页左侧全部关闭</div>
	</div>
</body>
</html>