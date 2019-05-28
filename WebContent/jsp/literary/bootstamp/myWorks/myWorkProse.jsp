<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../../../init/tags.jsp"%>
<%@ include file="../../../common/bootstamp/crud.jsp"%>
<div class="border apartBorder">
	<table class="table table-bordered">
		<thead>
			<tr>
				<th data-field="id" style= "width:2%">id</th>
				<th data-field="" style= "width:2%">用户id</th>
				<th data-field="diary" style= "width:77%">散文</th>
				<th data-field="date" style= "width:4%">日期</th>
				<th style= "width:6%;">操作</th>				
			</tr>
		</thead>
		<tbody>
			<c:forEach var="myWorksProse" items="${allMyWorksProse}" varStatus="status">
				<tr url="${pageContext.request.contextPath }/literary/myworksprose/deleteMyWorkProse?id=${myWorksProse.id }" url_scan="${pageContext.request.contextPath }/literary/myworksprose/scanMyWorkProse?id=${myWorksProse.id }">
					<td>${myWorksProse.id }</td>
					<td>${myWorksProse.userId}</td>
					<td>${myWorksProse.prose }</td>
					<td><fmt:formatDate value="${myWorksProse.date }" pattern="yyyy-MM-dd HH:mm:ss" /></td>
					<td><button class="proseDelete" style="cursor:pointer;">删除</button><button class="proseScan" style="cursor:pointer;margin-top: 20px;">查看</button></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<input action="${pageContext.request.contextPath }/literary/myworksprose/getAllMyWorksProse?" type="hidden" id="page_current" value="${currentPage }">
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
