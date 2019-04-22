<div class="btn-group">
	<button tab_url="<%=request.getContextPath()%>/literary/dailySentence/getAllSentence" type="button" class="btn btn-info"><span class="glyphicon glyphicon-search"></span>查找全部</button>
	<button  data-toggle="modal" data-target="#myModal" tab_url="<%=request.getContextPath()%>/literary/dailySentence/addSentence?" type="button" class="btn" id="modalAdd" ><span class="glyphicon glyphicon-plus"></span>添加</button>
	<button  data-toggle="modal" data-target="#myModal" tab_url="<%=request.getContextPath()%>/literary/dailySentence/editSentence?" type="button" class="btn" id="modalEdit"><span class="glyphicon glyphicon-edit"></span>修改</button>
	<button  data-toggle="modal" data-target="#myModal" tab_url="<%=request.getContextPath()%>/literary/dailySentence/deleteSentence?" type="button" class="btn" id="modalDel"><span class="glyphicon glyphicon-remove"></span>删除</button>					
</div>