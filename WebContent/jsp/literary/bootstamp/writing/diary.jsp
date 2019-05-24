<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../../../init/tags.jsp"%>
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/jsp/static/css/bootstamp/datetimepicker/font-awesome.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/jsp/static/css/bootstamp/datetimepicker/base.css">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/jsp/static/css/bootstamp/datetimepicker/highlight.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/jsp/static/css/bootstamp/datetimepicker/tempusdominus-bootstrap-4.css">	

<script type="text/javascript"
	src="<%=request.getContextPath() %>/jsp/static/js/bootstamp/datetimepicker/popper.min.js"></script>	
<script type="text/javascript"
	src="<%=request.getContextPath() %>/jsp/static/js/bootstamp/datetimepicker/moment-with-locales.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath() %>/jsp/static/js/bootstamp/datetimepicker/moment-timezone-with-data-2012-2022.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath() %>/jsp/static/js/bootstamp/datetimepicker/base.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath() %>/jsp/static/js/bootstamp/datetimepicker/highlight.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath() %>/jsp/static/js/bootstamp/datetimepicker/tempusdominus-bootstrap-4.js"></script>	

<input type="hidden" id="dailyScanDataDate" value="${scanMyWorkDiary.date}">
<input type="hidden" id="dailyScanDataWether" value="${scanMyWorkDiary.wether}">
<input type="hidden" id="dailyScanDataAddress" value="${scanMyWorkDiary.address}">
<input type="hidden" id="dailyScanDataDiary" value="${scanMyWorkDiary.diary}">


<form id="form-writing" action="<%=request.getContextPath() %>/literary/diary/addDiary" class="form-inline" style="display: unset;">
	<div class="form-group" style="padding-top: 10px;">
		<b for="sel">天气:</b> 
		<select class="form-control margin-left7" id="sel">
			<option>晴</option>
			<option>阴</option>
			<option>风</option>
			<option>小雨</option>
			<option>大雨</option>
			<option>小雪</option>
			<option>大雪</option>
		</select> 
		<b class="margin-left15" for="addr">地点:</b>
		<input type="text" class="form-control margin-left7" id="addr" style="width:250px;">
		<b class="margin-left15" for="dat">日期:</b>
 		<div class="input-group date margin-left7" id="datetimepicker1" data-target-input="nearest">
    		<input type="text" id = "datetime" class="form-control datetimepicker-input" data-target="#datetimepicker1"/>
    		<div class="input-group-append" data-target="#datetimepicker1" data-toggle="datetimepicker">
        		<div class="input-group-text"><i class="fa fa-calendar"></i></div>
    		</div>
    	</div>		
	</div>
	<b for="comment">正文:</b>
	<div class="form-group" style="height: 80%;margin-right:9px;">
		<textarea class="form-control height-100" id="comment" name="comment" style="text-decoration:underline;margin:0 3%;">   </textarea>
	</div>
	  <button type="button" class="btn btn-primary btn-writing-submit" style="margin-top: 7px;margin-left: 3%;">提交</button>
</form>
<script type="text/javascript">
$(function(){
	$('#datetimepicker1').datetimepicker();
});		
</script>