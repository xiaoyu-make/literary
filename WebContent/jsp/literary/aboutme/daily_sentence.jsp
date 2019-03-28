<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="s" uri="/struts-tags"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>daily_sentence</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>login</title>
<link rel="shortcut icon" type="image/x-icon"
	href="<%=request.getContextPath()%>/jsp/static/image/favicon.ico"
	media="screen" />
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
	src="<%=request.getContextPath()%>/jsp/static/js/main.js?90=9"></script>
</head>
<body>
	<%@ include file="../../common/home_page/daily_sentence_head.jsp"%>
	<%-- <jsp:include page="../../common/home_page/daily_sentence_head.jsp"/> --%>
	<div id="wu-datagrid-22" style="height: 100%;">
		<s:iterator value="dailySentence" status="ds">
			<tr>
				<div id="singleId" style="display:none!important;"><s:property value="id" /></div>
				<td ><div id="dailySentence"><s:property value="dailySentence" /></div></td>
			</tr>
		</s:iterator>
	</div>
</body>
</html>