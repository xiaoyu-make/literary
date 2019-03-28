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
<link type="text/css" rel="stylesheet" 
	href="<%=request.getContextPath()%>/jsp/static/js/jDialog/jDialog.css" >
	
<script type="text/javascript"
	src="<%=request.getContextPath()%>/jsp/static/js/jquery.2.1.4.min.js"></script>	
<script type="text/javascript" 
	src="<%=request.getContextPath()%>/jsp/static/js/jDialog/jquery.dialog.js"></script>	
<script type="text/javascript" 
	src="<%=request.getContextPath()%>/jsp/static/js/jDialog/jquery.drag.js"></script>	
<script type="text/javascript" 
	src="<%=request.getContextPath()%>/jsp/static/js/jDialog/jquery.mask.js"></script>	

<script type="text/javascript"
	src="<%=request.getContextPath()%>/jsp/static/js/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/jsp/static/js/login.js?Fecc=esd"></script>

</head>
<body style="margin: 0; overflow: hidden" class="cbp-spmenu-push cbp-spmenu-push-toleft form_stl">

	<img id="loginimg" style="width:70%;height:1000px;" src="/literary_world/jsp/static/image/banner.jpg"/>
	<button id="showRightPush">
		<img src="/literary_world/jsp/static/image/menu-icon.png"/>
	</button>
	<div class="info" style="display: none;">
		<span>
			<a style="text-decoration:none" href="<%=request.getContextPath()%>/jsp/literary/login.jsp"><div>登录页</div></a>
			<a style="text-decoration:none" href="<%=request.getContextPath()%>/jsp/literary/aboutme.jsp"><div>关于我</div></a>
		</span>
		<div class="nav2"></div>
	</div>
	 <div class="" style="display: none;">
            <div class=""></div>
        </div>
	<form id="form">
		<input class="name_and_password username" type="text" placeholder="名字" onFocus="this.value = '';" required=""> 
		<input class="name_and_password password" type="password" placeholder="密码" onFocus="this.value = '';" required="">
		<a id="forget_pwd" href="forget_pwd.html">注册</a>
		<input class="submit_and_resgiter" style="margin-left: 9%;" type="button" value="登录"> 		
	</form>		
</body>
</html>