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
	href="<%=request.getContextPath()%>/jsp/static/css/login.css" />
	
<script type="text/javascript"
	src="<%=request.getContextPath()%>/jsp/static/js/jquery.2.1.4.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/jsp/static/js/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/jsp/static/js/login.js"></script>
</head>
<body style="margin: 0; overflow: hidden" class="cbp-spmenu-push cbp-spmenu-push-toleft form_stl">
	<img id="loginimg" style="width:70%;height:1000px;" src="../static/image/banner.jpg"/>
	<button id="showRight">
		<img src="../static/image/menu-icon.png"/>
	</button>
	<div class="info" style="display: none;">
		<span>
			<a style="text-decoration:none" href="<%=request.getContextPath()%>/jsp/literary/login.jsp"><div>登录页</div></a>
			<a style="text-decoration:none" href="<%=request.getContextPath()%>/jsp/literary/aboutme.jsp"><div>关于我</div></a>
		</span>
		<div class="nav2"></div>
	</div>
	<text id="form" style="margin-right:-210px;color:beige;margin-top: 10%;">
	  做本项目的是一个大帅哥，Do you kow.....<br>
   Night gathers, and now my watch begins.
　<br>It shall not end until my death.
　<br>I shall take no wife, hold no lands, father no children.
　<br>I shall wear no crowns and win no glory.
　<br>I shall live and die at my post.
　<br>I am the sword in the darkness.
　<br>I am the watcher on the walls.
　<br>I am the fire that burns against the cold,
　<br>the light that wakes the sleepers,
　<br>the shield that guards the realms of men.
　<br>I pledge my life and honor to the Night's Watch,
　<br>for this night,
　<br>and all the nights to come.
　<br>长夜将至，我从今开始守望，至死方休。
　<br>我将不娶妻，不封地，不生子。
　<br>我将不戴宝冠，不争荣宠。
　<br>我将尽忠职守，生死于斯。
　<br>我是黑暗中的利剑，长城上的守卫，
　<br>抵御寒冷的烈焰，破晓时分的光线，
　<br>唤醒眠者的号角，守护王国的坚盾。
　<br>我将生命与荣耀献给守夜人，
　<br>今夜如此，夜夜皆然。
	</text>		
</body>
</html>