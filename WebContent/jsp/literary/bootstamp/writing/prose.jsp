<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../../../init/tags.jsp"%>
<input type="hidden" id="dailyScanDataDiary" value="${scanMyWorkDiary.diary}">

<form id="form-prose" action="<%=request.getContextPath() %>/literary/prose/addProse" class="form-inline" style="display: unset;">
	<div class="form-group" style="height: 93%;margin-right: -35px;margin-left: -36px;}">
		<textarea class="form-control height-100" id="prose_comment" name="prose_comment" style="text-decoration:none;margin:0 3%;">
		</textarea>
	</div>
	  <button type="button" class="btn btn-primary btn-prose-submit" style="margin-top: 7px;margin-left:13px;">提交</button>
</form>