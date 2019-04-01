<!DOCTYPE html>
<html>
<head>
<title>literary_world</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="shortcut icon" type="image/x-icon" media="screen"
	href="<%=request.getContextPath()%>/jsp/static/image/favicon.ico"/>
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/jsp/static/css/bootstamp/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/jsp/static/css/bootstamp/bootstrapMain.css?0=49">

<script type="text/javascript"
	src="<%=request.getContextPath() %>/jsp/static/js/jquery.2.1.4.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath() %>/jsp/static/js/bootstamp/bootstrap.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath() %>/jsp/static/js/bootstamp/bootstrap-table.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath() %>/jsp/static/js/bootstamp/bootstrapMain.js"></script>
</head>
<body style="overflow-x: hidden;">
	<div class="bootstrapHead">
		<div class="col-sm-6 big-title">My Literary World</div>
		<div class="col-sm-6 head-right">
			<div class="welcome-head">
				<b  title="2条未读消息" style="">小雨,欢迎你！</b>
			</div>
			<div class="head-right">
				<nav class="navbar-expand-sm float-right">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link" href="#">首页</a></li>|
						<li class="nav-item"><a class="nav-link" href="#">关于我</a></li>|
						<li class="nav-item"><a class="nav-link" href="#">大家的作品</a></li>|
						<li class="nav-item"><a class="nav-link" href="#">经典作品</a></li>|
						<li class="nav-item"><a class="nav-link" href="#">聊天</a></li>|
						<li class="nav-item"><a class="nav-link" href="#">大家的生活</a></li>|
						<li class="nav-item"><a class="nav-link" href="#">其他技能</a></li>|
						<li class="nav-item"><a class="nav-link" href="#">私人信息</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="col-sm-2 float-left">
			<div id="accordion">
				<div class="card">
					<a class="card-link" data-toggle="collapse" href="#collapseOne">
						<div class="card-header">每日一句</div>
					</a>
					<div id="collapseOne" class="collapse show" data-parent="#accordion">
						<div class="card-body">
							<div class="list-group">
								<a id="collapseOneFirst" url="<%=request.getContextPath()%>/literary/dailySentence/todaySentence" class="rounded-0 list-group-item list-group-item-action cursorPointer">今日一句</a> 
								<a url="<%=request.getContextPath() %>/literary/mottoController/getMotto" class="list-group-item list-group-item-action rounded-0 cursorPointer">座右铭</a> 
								<a url="<%=request.getContextPath() %>/literary/aboutMeSentence/getAboutMe" class="list-group-item list-group-item-action rounded-0 cursorPointer">关于我</a>
							</div>
						</div>
					</div>
				</div>
				<div class="card">
					<a class="collapsed card-link" data-toggle="collapse"
						href="#collapseTwo">
						<div class="card-header">写作</div>
					</a>
					<div id="collapseTwo" class="collapse" data-parent="#accordion">
						<div class="card-body">
							<div class="list-group">
								<a href="#" class="list-group-item list-group-item-action rounded-0">我的作品</a> 
								<a href="#" class="list-group-item list-group-item-action rounded-0">Second item</a> 
								<a href="#" class="list-group-item list-group-item-action rounded-0">Third item</a>
							</div>
						</div>
					</div>
				</div>
				<div class="card">
					<a class="collapsed card-link" data-toggle="collapse"
						href="#collapseThree">
						<div class="card-header">我的作品</div>
					</a>
					<div id="collapseThree" class="collapse" data-parent="#accordion">
						<div class="card-body">
							<div class="list-group">
								<a href="#" class="list-group-item list-group-item-action rounded-0">我的作品1</a> 
								<a href="#" class="list-group-item list-group-item-action rounded-0">我的作品2</a> 
								<a href="#" class="list-group-item list-group-item-action rounded-0">我的作品3</a>
								<a href="#" class="list-group-item list-group-item-action rounded-0">我的作品4</a> 
								<a href="#" class="list-group-item list-group-item-action rounded-0">我的作品5</a>								
							</div>
						</div>
					</div>
				</div>
				<div class="card">
					<a class="collapsed card-link" data-toggle="collapse" href="#collapseFour">
						<div class="card-header">我的收藏</div>
					</a>
					<div id="collapseFour" class="collapse" data-parent="#accordion">
						<div class="card-body">
							<div class="list-group">
								<a href="#" class="list-group-item list-group-item-action rounded-0">我的作品</a> 
								<a href="#" class="list-group-item list-group-item-action rounded-0">Second item</a> 
								<a href="#" class="list-group-item list-group-item-action rounded-0">Third item</a>
							</div>
						</div>
					</div>
				</div>
				<div class="card">
					<a class="collapsed card-link" data-toggle="collapse" href="#collapseFive">
						<div class="card-header">最近阅读</div>
					</a>
					<div id="collapseFive" class="collapse" data-parent="#accordion">
						<div class="card-body">
							<div class="list-group">
								<a href="#" class="list-group-item list-group-item-action rounded-0">我的作品</a> 
								<a href="#" class="list-group-item list-group-item-action rounded-0">Second item</a> 
								<a href="#" class="list-group-item list-group-item-action rounded-0">Third item</a>
							</div>
						</div>
					</div>
				</div>
				<div class="card">
					<a class="collapsed card-link" data-toggle="collapse" href="#collapseSix">
						<div class="card-header">我的消息</div>
					</a>
					<div id="collapseSix" class="collapse" data-parent="#accordion">
						<div class="card-body">
							<div class="list-group">
								<a href="#" class="list-group-item list-group-item-action rounded-0">我的作品</a> 
								<a href="#" class="list-group-item list-group-item-action rounded-0">Second item</a> 
								<a href="#" class="list-group-item list-group-item-action rounded-0">Third item</a>
							</div>
						</div>
					</div>
				</div>
				<div class="card">
					<a class="collapsed card-link" data-toggle="collapse" href="#collapseSeven">
						<div class="card-header">我的感悟</div>
					</a>
					<div id="collapseSeven" class="collapse" data-parent="#accordion">
						<div class="card-body">
							<div class="list-group">
								<a href="#" class="list-group-item list-group-item-action rounded-0">我的作品</a> 
								<a href="#" class="list-group-item list-group-item-action rounded-0">Second item</a> 
								<a href="#" class="list-group-item list-group-item-action rounded-0">Third item</a>
							</div>
						</div>
					</div>
				</div>				
				<div class="card buttomCard" style="display:none;"></div>
			</div>
		</div>
		<div class="col-sm-10 float-right-padding">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="#collapseOneFirst">每日一句</a></li>
				<li class="breadcrumb-item active">今日</li>
				<!-- <li class="breadcrumb-item active">Data</li> -->
			</ol>
			<div class="border">
				<div class="btn-group">
					<button tab_url="<%=request.getContextPath()%>/literary/dailySentence/getAllSentence" type="button" class="btn btn-info"><span class="glyphicon glyphicon-search"></span>查找全部</button>
					<button  data-toggle="modal" data-target="#myModal" tab_url="<%=request.getContextPath()%>/literary/dailySentence/addSentence?" type="button" class="btn" id="modalAdd" ><span class="glyphicon glyphicon-plus"></span>添加</button>
					<button  data-toggle="modal" data-target="#myModal" tab_url="<%=request.getContextPath()%>/literary/dailySentence/editSentence?" type="button" class="btn" id="modalEdit"><span class="glyphicon glyphicon-edit"></span>修改</button>
					<button  data-toggle="modal" data-target="#myModal" tab_url="<%=request.getContextPath()%>/literary/dailySentence/deleteSentence?" type="button" class="btn" id="modalDel"><span class="glyphicon glyphicon-remove"></span>删除</button>					
				</div>
				<div class="border apartBorder">
					
				</div>
			</div>
		</div>

		<!-- 模态框 -->
		<div class="modal fade" id="myModal">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<!-- 模态框头部 -->
					<div class="modal-header">
						<h4 class="modal-title">添加</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<!-- 模态框主体 -->
					<div class="modal-body"></div>
					<!-- 模态框底部 -->
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
						<button type="button" class="btn btn-info btn_submit" data-dismiss="modal">确定</button>
					</div>
				</div>
			</div>
		</div>

	</div>
<!-- 	<input type='button' name='Submit' onclick='javascript:history.back(-1);' value='Back'> -->
</body>
</html>
