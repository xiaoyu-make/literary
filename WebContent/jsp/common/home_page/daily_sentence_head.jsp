
<div class="easyui-panel daily_sentence_head" style="padding:5px;width:100%;">
	<a data-link="<%=request.getContextPath()%>/jsp/literary/findAllAboutMeDaily" onclick="findAllDailySentence();" class="easyui-linkbutton" iconCls="icon-find" data-options="toggle:true,group:'g2',plain:true">查找全部</a>		
	<a data-link="<%=request.getContextPath()%>/jsp/literary/addAboutMe" class="easyui-linkbutton" iconCls="icon-add" onclick="$('#pop-up-box').window('open');addEditWindow('add')" data-options="toggle:true,group:'g2',plain:true">添加</a>
	<a data-link="<%=request.getContextPath()%>/jsp/literary/editAboutMe" class="easyui-linkbutton" iconCls="icon-edit" onclick="addEditWindow('edit');" data-options="toggle:true,group:'g2',plain:true">修改</a>
	<a data-link="<%=request.getContextPath()%>/jsp/literary/deleteAboutMe" class="easyui-linkbutton" iconCls="icon-remove" onclick="addEditWindow('delete');" data-options="toggle:true,group:'g2',plain:true">删除</a>
	<a url="<%=request.getContextPath()%>/jsp/literary/bootstamp/homePage.jsp" class="easyui-linkbutton" iconCls="icon-remove" onclick="Bootstrap4();" data-options="toggle:true,group:'g2',plain:true">Bootstrap4</a>
</div>
<div id="pop-up-box" class="easyui-dialog" title="qwer" style="width:60%;height:300px;max-width:800px;padding:10px;overflow-x:hidden;" data-options="
			closed:true,
			iconCls:'icon-save',
			buttons: [{
					text:'Ok',
					iconCls:'icon-ok',
					handler:addEdit
				},{
					text:'Cancel',
					handler:function(){
						$('#pop-up-box').window('close');
					}
				}]
			">
	<textarea id="textarea_daily_sentence_head" style="width:100%;height:100%;font-size:16px;"></textarea>
</div>
<div id="dlg" class="easyui-dialog" title="删除" style="width:400px;height:150px;padding:10px"
		data-options="closed:true,iconCls:'icon-save',			
				buttons: [{
					text:'Ok',
					iconCls:'icon-ok',
					handler:addEdit
				},{
					text:'Cancel',
					handler:function(){
						$('#dlg').window('close');
					}
				}]" >
		确定删除吗?
</div>