$(function(){
	$('.easyui-layout .easyui-accordion .easyui-tree li').bind('click',{name:"wxy"},function(e){
		var title = $(this).text();
		var url = $(this).find('a').attr('data-link');
		var iconCls = $(this).find('a').attr('data-icon');
		var iframe = $(this).find('a').attr('iframe')==1?true:false;
		addTab(title,url,iconCls,iframe);
		//alert(e.data.name);
	})
	// 监听右键事件，创建右键菜单
	$('#wxy').tabs({
		onContextMenu : function(e, title, index) {
			e.preventDefault();
			if (index > 0) {
				$('#mm').menu('show', {
					left : e.pageX,
					top : e.pageY
				}).data("tabTitle", title);
			}
		}
	});
    //右键菜单click
	$("#mm").menu({
		onClick : function(item) {
			closeTab(this, item.name);
		}
	});
	
})


/**
 * Name 添加菜单选项 Param title 名称 Param href 链接 Param iconCls 图标样式 Param iframe
 * 链接跳转方式（true为iframe，false为href）
 */	
function addTab(title,href,iconCls,iframe) {
	//var tabPanel = $('.layout-panel-center');
	var tabPanel = $('#wxy');
	if(!tabPanel.tabs('exists',title)){						
		var content = '<iframe scrolling="auto" frameborder="0"  src="'+ href +'" style="width:100%;height:100%;"></iframe>';
		if(iframe){
			tabPanel.tabs('add',{
				title:title,
				content:content,
				iconCls:iconCls,
				fit:true,
				cls:'pd3',
				closable:true
			});
		}
		else{
			tabPanel.tabs('add',{
				title:title,
				href:href,
				iconCls:iconCls,
				fit:true,
				cls:'pd3',
				closable:true
			});
		}
	}else{
		tabPanel.tabs('select',title);
	}	
}
/**
* Name 移除菜单选项
*/
function removeTab() {
	var tabPanel = $('#wxy');
	var tab = tabPanel.tabs('getSelected');
	if (tab) {
		var index =tabPanel.tabs('getTabIndex', tab);
		tabPanel.tabs('close', index);
	}
}
//删除Tabs
function closeTab(menu, type) {
    var allTabs = $("#wxy").tabs('tabs');
    var allTabtitle = [];
    $.each(allTabs, function (i, n) {
        var opt = $(n).panel('options');
        if (opt.closable)
            allTabtitle.push(opt.title);
    });
    var curTabTitle = $(menu).data("tabTitle");
    var curTabIndex = $("#wxy").tabs("getTabIndex", $("#wxy").tabs("getTab", curTabTitle));
    switch (type) {
        case 1:
            $("#wxy").tabs("close", curTabIndex);
            return false;
            break;
        case 2:
            for (var i = 0; i < allTabtitle.length; i++) {
                $('#wxy').tabs('close', allTabtitle[i]);
            }
            break;
        case 3:
            for (var i = 0; i < allTabtitle.length; i++) {
                if (curTabTitle != allTabtitle[i])
                    $('#wxy').tabs('close', allTabtitle[i]);
            }
            $('#wxy').tabs('select', curTabTitle);
            break;
        case 4:
            for (var i = curTabIndex; i < allTabtitle.length; i++) {
                $('#wxy').tabs('close', allTabtitle[i]);
            }
            $('#wxy').tabs('select', curTabTitle);
            break;
        case 5:
            for (var i = 0; i < curTabIndex-1; i++) {
                $('#wxy').tabs('close', allTabtitle[i]);
            }
            $('#wxy').tabs('select', curTabTitle);
            break;
        case 6: //刷新
            var panel = $("#wxy").tabs("getTab", curTabTitle).panel("refresh");
            break;
    }
}
function addEditWindow(addedit){
	var title = $("body div.window-header").find(".panel-title");	
	if(addedit=="add"){
		title.text("添加");
		$('#textarea_daily_sentence_head').text('');
	}else if(addedit=="edit"){
		title.text("编辑");
		var textarea_daily = null;
		if($('#dg').length==0){
			textarea_daily = $('#dailySentence').text();
		}else{
			var getSelections = $('#dg').datagrid("getSelections");
			if(getSelections.length==1){
				textarea_daily = $('#dg').datagrid("getSelected").dailySentence;			
			}else{
				alert("请选择一条数据");
				return;
			}	
		}
		$('#textarea_daily_sentence_head').text(textarea_daily);
		$('#pop-up-box').window('open');
	}else if(addedit=="delete"){
		if($('#dg').length!=0){
		var getSelections = $('#dg').datagrid("getSelections");
		if(getSelections.length==0){
			alert("请选择至少一条数据");
			return;
		}		
	}
		$('#dlg').window('open');
	}
}
function addEdit(addedit){
	var title = $("body div.window-header").find(".panel-title").last().text();
	var data_url = null;
	var textarea_daily = $('body #textarea_daily_sentence_head').val();
	var getSelected = null;
	var getSelectIds = [];
	if(title=="添加"){
		data_url=$('.daily_sentence_head').find('a').eq(1).attr('data-link');
	}else if(title=="编辑"){
		data_url=$('.daily_sentence_head').find('a').eq(2).attr('data-link');
		if($('#dg').length==0){
			getSelected = $('div#singleId').text();
		}else{
			var getSelections = $('#dg').datagrid("getSelections");
			if(getSelections.length==1){
				getSelected = $('#dg').datagrid("getSelected").id;
			}
		}				
	}else if(title=="删除"){
		data_url=$('.daily_sentence_head').find('a').eq(3).attr('data-link');
		if($('#dg').length==0){
			getSelected = $('div#singleId').text();
		}else{
			var getSelections = $('#dg').datagrid("getSelections");
			if(getSelections.length==1){
				getSelected = $('#dg').datagrid("getSelected").id;
			}else{
				for (var i = 0; i < getSelections.length; i++) {
		              var id=getSelections[i].id;   
		              getSelectIds.push(id); 
		        }
			}
		}
	}
	$.ajax({ 
		type:'GET',  
		url:data_url, 
		cache: false,
		data: { textarea_daily: textarea_daily,getSelected:getSelected,getSelectIds:getSelectIds },  
		dataType:'text', 
		success:function(data){      
		  /*var $data = $(data);//将整个文档转化为jquery对象
			var target_div = $data.find('#wu-datagrid-22'); // 将这个div显示
		    $("body #wu-datagrid-22").append(target_div); //怎么显示你自己处理	*/				
			$('body #textarea_daily_sentence_head').val("");
			$('body #pop-up-box').window('close');
			$("body #wu-datagrid-22").html(data);
		},
		error:function(){
		    alert("请求失败");
		}
	  });
	
/*	var tabPanel = $('body .panel.window .dialog-button .l-btn-small');	
		tabPanel.click(function(){
		$('#wxy').tabs({
			onClick : function() {
				window.location.href = data_url;			
			}
		})
		});*/
	/*	tabPanel.click(function(){
			var tabPanel = $('#wxy');
			tabPanel.tabs({
				event: "click",
				Load: function() {
					window.location.href=data_url;
					alert("dfsfd");
				},
				closable:true
			});
		});*/
		
		/*	tabPanel.tabs('add',{
				href:data_url,
				fit:true,
				cls:'pd3',
				closable:true
			});*/
	/*	$( "#tabs" ).tabs({
			event: "click",//加这个就是鼠标悬浮产生事件，不加就是点击事件
			beforeLoad: function( event, ui ) {
				ui.jqXHR.error(function() {
					ui.panel.html(
						"Couldn't load this tab. We'll try to fix this as soon as possible. " +
						"If this wouldn't be a demo." );
				})			
				ui.jqXHR.error(function() {
					ui.panel.html(
						"Couldn't load this tab. We'll try to fix this as soon as possible. " +
						"If this wouldn't be a demo." );
				});
			}
	});*/
}
function findAllDailySentence(){
	var data_url=$('.daily_sentence_head').find('a').eq(0).attr('data-link');		
	$.ajax({ 
		type:'GET',  
		url:data_url, 
		cache: false,
		dataType:'text', 
		success:function(data){      
			$("body #wu-datagrid-22").html(data);
		},
		error:function(){ 
		    alert("请求失败")
		}
	  });
}	
function Bootstrap4(){
	var url = $('.daily_sentence_head').find('a').eq(4).attr('url');
	window.location.href = url;
}




