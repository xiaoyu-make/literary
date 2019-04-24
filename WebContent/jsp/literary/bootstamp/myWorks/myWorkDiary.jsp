<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../../../init/tags.jsp"%>
<%@ include file="../../../common/bootstamp/crud.jsp"%>
<div class="border apartBorder">
	<table class="table table-bordered">
		<thead>
			<tr>
				<th data-field="id">id</th>
				<th data-field="userid">用户id</th>
				<th data-field="wether">天气</th>	
				<th data-field="address">地址</th>	
				<th data-field="date">日期</th>
				<th data-field="diary">日记</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="myWorksDiary" items="${allMyWorksDiary}" varStatus="status">
				<tr>
					<td>${myWorksDiary.id }</td>
					<td>${myWorksDiary.userid}</td>
					<td>${myWorksDiary.wether }</td>
					<td>${myWorksDiary.address }</td>
					<td><fmt:formatDate value="${myWorksDiary.date }" pattern="yyyy-MM-dd HH:mm:ss" /></td>
					<td>${myWorksDiary.diary }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<input action="${pageContext.request.contextPath }/literary/myworksdiary/getAllMyWorksDiary?"
		type="hidden" id="page_current" value="${currentPage }">
	<div class="pages">
		<span style="font-size: 12px; color: #666;">共<font
			style="color: #09c; font-size: 20px;">${count }</font>条数据,<font
			style="color: #09c; font-size: 20px;">${pageCount }</font>页
		</span>
		<c:if test="${currentPage != 1 }">
			<b href="javascript:void(0)" class="first_page cursorPointer"
				data-pnum="1">首页<span class="sr-only"></span></b>
			<a aria-label="Previous" href="javascript:void(0)" class="prev_page"
				data-pnum="${currentPage -1 }"><span aria-hidden="true">«</span></a>
		</c:if>
		<c:if test="${currentPage == 1 }">
			<b href="javascript:void(0)" class="first_page cursorPointer">首页<span
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
</div>
