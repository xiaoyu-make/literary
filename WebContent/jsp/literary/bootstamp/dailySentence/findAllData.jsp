<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../../../init/tags.jsp"%>
<table class="table table-bordered">
	<thead>
		<tr>
			<th><input type="checkbox" id="checkAll" /></th>
			<th data-field="id">id</th>
			<th data-field="dailySentence">daily_sentence</th>
			<th data-field="date">date</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="dailySentence" items="${allDailySentence }"
			varStatus="status">
			<tr>
				<td><input type="checkbox" name="imgVo" value="" /></td>
				<td>${dailySentence.id }</td>
				<td>${dailySentence.dailySentence }</td>
				<td><fmt:formatDate value="${dailySentence.date }" pattern="yyyy-MM-dd HH:mm:ss" /></td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<%-- <form action="${pageContext.request.contextPath }/literary/dailySentence/getAllSentence" method="get" id="page_form">
	<input type="hidden" id="page_current" name="pageNum" value="${currentPage }">
</form> --%>
<input action="${pageContext.request.contextPath }/literary/dailySentence/getAllSentence?" type="hidden" id="page_current" value="${currentPage }">

<div class="pages">
	<span style="font-size: 12px; color: #666;">共<font
		style="color: #09c; font-size: 20px;">${count }</font>条数据,<font
		style="color: #09c; font-size: 20px;">${pageCount }</font>页
	</span>
	<c:if test="${currentPage != 1 }">
		<b href="javascript:void(0)" class="first_page" data-pnum="1">首页<span
			class="sr-only"></span></b>										
	<a aria-label="Previous" href="javascript:void(0)" class="prev_page" data-pnum="${currentPage -1 }"><span aria-hidden="true">«</span></a>
	</c:if>
	<c:if test="${currentPage == 1 }">
		<b href="javascript:void(0)" class="first_page">首页<span
			class="sr-only"></span></b>
		<a aria-label="Previous" href="javascript:void(0)"><span
			aria-hidden="true">«</span></a>

	</c:if>
	<c:forEach items="${pnums }" var="pa">
		<c:if test="${pa == currentPage }">
			<b href="javascript:void(0)" class="page_num" data-pnum="${pa }">${pa }<span
				class="sr-only"></span>
			</b>

		</c:if>
		<c:if test="${pa != currentPage }">
			<a href="javascript:void(0)" class="page_num" data-pnum="${pa }">${pa }<span
				class="sr-only"></span>
			</a>

		</c:if>

	</c:forEach>

	<c:if test="${pnext_flag }">
		<a href="javascript:void(0)" aria-label="Next" class="next_page"
			data-pnum="${currentPage + 1 }"><span aria-hidden="true">»</span>
		</a>

	</c:if>
	<c:if test="${!pnext_flag }">
		<a href="javascript:void(0)" aria-label="Next"><span
			aria-hidden="true">»</span> </a>

	</c:if>

	<c:if test="${plast_flag }">
		<a href="javascript:void(0)" class="last_page"
			data-pnum="${last_page }">尾页<span class="sr-only"></span>
		</a>

	</c:if>
	<c:if test="${!plast_flag }">
		<a href="javascript:void(0)" data-pnum="${last_page }"
			class="last_page">尾页<span class="sr-only"></span>
		</a>
	</c:if>
</div>