/**
 * bootstrap的js
 */
$(function(){
	initLeftMenu();
	/**
	 * 左侧栏
	 */
	$('#accordion .card-link').click(function(){
		var collapseLength = $(this).parent().siblings().length;
		var thisCardHeight = $(this).height();
		var sumHeight = (collapseLength)*thisCardHeight;
		var breadcrumbHeight= $('.bootstrapHead').height();
		$('.bootstrapHead').css('margin-bottom','3px');
		var fsd = $(window).height()-breadcrumbHeight-3;
		//$('.col-sm-2').css('color','red');
		var collapseHeight = $(window).height()-sumHeight-breadcrumbHeight-24-(collapseLength)*2-3;
		$(this).parent().find('.card-body').css('padding','0px');
		var collapse = $(this).parent().find('.card-body').height(collapseHeight);
		var cardShowLength = $(this).parent().children('.collapse.show').length;
		if(cardShowLength==1){
			$('.buttomCard').show();
		}else{
			$(this).next().find('a:first').addClass('list-group-item-primary');
			$(this).next().find('a:first').siblings().removeClass('list-group-item-primary');
		}
		/*var url = $(this).next().find('a:first').attr('url');
		$.get(url, function(data) {
			$('.float-right-padding .rightPart').html(data);
			$('.apartBorder').css('cssText','border:none!important');
		});*/
	});
	/**
	 * 窗口改变大小时,这个方法保持页面不变
	 */
	$(window).resize(function(){
	    $('.float-right-padding .border').css('height','$(window).innerHeight-49px');
		var showCollapse = $('#accordion .collapse.show').parent();;
		var collapseLength = showCollapse.siblings().length;
		var lastCardHeight = $('#accordion .card').eq(1).children('.card-link').height();
		var sumHeight = (collapseLength)*lastCardHeight;
		var breadcrumbHeight= $('.bootstrapHead').height();
		var collapseHeight = $(window).height()-sumHeight-breadcrumbHeight-24-(collapseLength)*2-3;
		var collapse = showCollapse.find('.card-body').height(collapseHeight);
		$('.float-right-padding .rightPart').css("height",$(window).height()-breadcrumbHeight-$('.breadcrumb').height()-51);
		var buttomCardWidth = $(window).width();
		if(buttomCardWidth<1300&&buttomCardWidth>900){
			$('.buttomCard').css('width','16%');
		}else if(buttomCardWidth<900){
			$('.buttomCard').css('width','15.6%');
		}else if(buttomCardWidth>1300){
			$('.buttomCard').css('width','16.266667%');
		}
		if($("#comment")[0]){
			if($(window).height()<500){
				$("#comment").parent().css('height','60%');
			}else{
				$("#comment").parent().css('height','80%');
			}
		}
	});
	/**
	 * 点击今日一句的右侧显示(每日一句/今日一句)
	 */
	$('.container-fluid').on('click','#collapseOneFirst',function(){
		var url = $('#collapseOneFirst').attr('url');
		$.get(url, function(data) {
			$('.float-right-padding .rightPart').html(data);
			
		});
	});
	/**
	 * 查找全部的点击事件
	 */
	$('.container-fluid .float-right-padding ').on('click','.btn-group button:first',function(){
		$(this).addClass('btn-info');
		$(this).siblings().removeClass('btn-info');
		var url = $(this).attr('tab_url');
		var texteara = $('#myModal textarea').text();
		$.ajax({
			cache : true,
			type : "POST",
			url : url,
			data : {"texteara": texteara},
			processData : false,
			contentType : false,
			success : function(data) {
				$('.float-right-padding .rightPart').html(data);
			},
			error : function(request) {
				
			}
		});
	});
	/**
	 * 左侧的每个选项下的选项的点击后的变色
	 */
	$('.container-fluid #accordion').on('click','.card-body a',function(){
		$(this).addClass('list-group-item-primary');
		$(this).siblings().removeClass('list-group-item-primary');
	});
	/**
	 * 当前页面全选
	 */
    $('.container-fluid').on('change','#checkAll',function(event){  
        /*将所有行的选中状态设成全选框的选中状态*/  
        $('table thead tr').find('input').prop('checked',$(this).prop('checked'));  
        var $tr = $('table thead tr').find('input').parent().parent().parent().next().find('input');
        /*并调整所有选中行的CSS样式*/  
        if ($(this).prop('checked')) {  
        	$tr.prop('checked',true); 
        } else{  
        	$tr.prop('checked',false);  
        }  
        /*阻止向上冒泡，以防再次触发点击操作*/  
        event.stopPropagation();  
    });  
    /**
     * 分页
     */
    $(document).on("click",".page_num,.next_page,.prev_page,.first_page,.last_page",function(){
		var $self = $(this);
		if($self.parent().attr("class") == 'disabled'){
			return false;
		}
		//var page_current = $("#page_current").val($self.attr("data-pnum"));
		var page_current = $self.attr("data-pnum");
		var url = $("#page_current").attr('action')+"pageNum="+page_current;
		$.ajax({
			cache : true,
			type : "POST",
			url : url,
			//data : {"pageNum": page_current},
			processData : false,
			contentType : false,
			success : function(data) {
				$('.float-right-padding .rightPart').html(data);
			},
			error : function(request) {
				
			}
		});
		//$("#page_form").submit();
	});
    /**
     * 今日一句的添加,编辑,删除的模态框
     */
    var id = null;
    $('.container-fluid').on('click','#modalAdd,#modalEdit,#modalDel',function(){
    	$('.float-right-padding').next().attr('id','myModal');
    	$('#myModal .modal-content').css("margin-top","34%");
		$(this).addClass('btn-info');
		$(this).siblings().removeClass('btn-info');	
    	var thisId = $(this).attr('id');
    	
    	if(thisId.trim()=="modalAdd"){
    		$('#myModal .modal-body').html('<textarea style="width:100%;height: 80px;" placeholder=""></textarea>');
    		$('#myModal textarea').attr('placeholder',"请输入名言");
    		$('#myModal .modal-title').text('添加');
    	}else if(thisId.trim()=="modalEdit"){
    		$('#myModal .modal-body').html('<textarea style="width:100%;height: 80px;" placeholder=""></textarea>');
    		$('#myModal textarea').attr('placeholder',"请编辑名言");
    		$('#myModal .modal-title').text('编辑');
    		var delSize = $("[name=imgVo]:checked").size();
			if($(".rightPart input").hasClass("singleid")){
				$('#myModal textarea').text($('div.apartBorder').text());
				$('.apartBorder').css('cssText','border:none!important');
				id = $('.rightPart input').text();
			}else{
				if(delSize==1){
					id = $("[name=imgVo]:checked").parent().next().text();					
					$('.modal-body textarea').text($("[name=imgVo]:checked").parent().next().next().text());
				}else{
					alert("请只选择一条数据");
					$('#myModal').attr('id','yModal');
					return;
				}	
			}	
    	}else if(thisId.trim()=="modalDel"){
    		$('#myModal .modal-body').html('确定删除吗？');
    		$('#myModal .modal-title').text('删除');
    	}
    	
    });
    /**
     *  今日一句的添加,编辑,删除的模态框中的确认
     */
    $('.container-fluid').on('click','.btn_submit',function(){
    	var url = $('.btn-group .btn-info').attr('tab_url');
		var textarea_daily = $('#myModal textarea').val();
		var st = "";
		var delSize = $("[name=imgVo]:checked").size();//通过筛选 name=del 且已选中获得的元素对象数组 来得到选中的数量
		var modaltitle = $('.modal-title').text();
		if(modaltitle=='编辑'){
			st = id;
		}else if(modaltitle=='删除'){
			if($(".rightPart input").hasClass("singleid")){
				st = $('.singleid').val();
			}else{
				if(delSize==0){
					alert("请至少选择一条数据");
				}else{
				        var length = 0;
				        $("[name=imgVo]:checked").each(function(){//遍历已选中的checked数组
				            length++;
				        if(delSize>length){//当遍历的次数 等于 数组的长度时执行
				            st += $(this).parent().next().text()+",";
				        }else{
				            st += $(this).parent().next().text();//$("this")表示当前遍历的该元素对象
				        }
				    });
				}
			}		
		}
        url+='ids='+st;//为 删除链接 的 href 进行赋值
		$.ajax({
			type : "POST",
			url : url,
			cache: false,
		    dataType:'text', 
			data: { textarea_daily: textarea_daily },  
			success : function(data) {
				$('.float-right-padding .rightPart').html(data);
			},
			error : function(request) {
			    alert("请求失败");
			}
		});
    });
    /**
     * 右侧导航栏
     */
    $('.container-fluid').on('click','.card-link,.list-group-item',function(){
    	var card_header = $('.collapse.show').prev().find('.card-header').text();
		var list_group_primary = $('.collapse.show').find('.list-group-item-primary').text(); 
		var this_class = $(this)[0].className;
		if(this_class.indexOf("list-group-item-primary") >= 0){
			if($(this).find('.collapse.show').length==0){    		
	    		$('.breadcrumb .breadcrumb-item a').text(card_header);
	    		$('.breadcrumb .breadcrumb-item:last').text(list_group_primary);
	    	}
		}else if(this_class.indexOf("card-link") >= 0){
			if($(this).find('.collapse.show').length==0){
				card_header = $(this).find('.card-header').text();
				list_group_primary = $(this).next().find('.list-group-item-primary:first').text();
	    		$('.breadcrumb .breadcrumb-item a').text(card_header);
	    		$('.breadcrumb .breadcrumb-item:last').text(list_group_primary);
	    		
	    	}
		}
		
		if($.trim(list_group_primary)=='日记'){
			if($(window).height()<500){
				$("#comment").parent().css('height','60%');
			}else{
				$("#comment").parent().css('height','80%');
			}
		}
    });
    /**
     * 每日一句/座右铭
     */
    $('.container-fluid').on('click','#collapseOne a:nth-child(2)',function(){
    	var url = $(this).attr('url');
    	$.ajax({
			type : "GET",
			url : url,
			cache: false,
			success : function(data) {
				$('.rightPart').html(data);
			},
			error : function(request) {
			    alert("请求失败");
			}
		});
    });
    /**
     * 每日一句/关于我
     */
    $('.container-fluid').on('click','#collapseOne a:nth-child(3)',function(){
    	var url = $(this).attr('url');
    	$.ajax({
			type : "GET",
			url : url,
			cache: false,
			success : function(data) {
				$('.rightPart').html(data);
			},
			error : function(request) {
			    alert("请求失败");
			}
		});
    });
    /**
     * 写作/日记(获取日记模板)
     */
    $('.container-fluid').on('click','#collapseTwo a:nth-child(1)',function(){
    	$.ajax({
			type : "GET",
			url : "writing/diary.jsp",
			cache: false,
			success : function(data) {
				$('.rightPart').html(data);
			},
			error : function(request) {
			    alert("请求失败");
			},
		});
    });   
    /**
     * 写作/日记(提交数据)
     */
    $('.container-fluid').on('click',".btn-writing-submit",function(){
    	var wether = $("#sel").val();
    	var adress = $("#addr").val();
    	var date = $("#datetime").val();
    	var comment = $("#comment").val();
    	var url = $("#form-writing").attr('action');
    	url += "?wether="+wether+"&adress="+adress+"&date="+date+"&daily="+comment;
		$.ajax({
			type : "POST",
			url : url,
			cache: false,
		    dataType:'text', 
			data: { textarea_daily: "" },  
			success : function(data) {
				$('.float-right-padding .rightPart').html(data);
			},
			error : function(request) {
			    alert("请求失败");
			}
		});
    });
    /**
     * 我的作品/日记
     */
    $('.container-fluid').on('click','#collapseThree a:nth-child(1)',function(){
    	var url = $(this).attr('url');
		$.ajax({
			type : "POST",
			url : url,
			cache: false,
		    dataType:'text', 
			data: { textarea_daily: "" },  
			success : function(data) {
				$('.float-right-padding .rightPart').html(data);
			},
			error : function(request) {
			    alert("请求失败");
			}
		});
    });
    /**
     * 我的作品/日记/删除
     */
    $('.container-fluid').on('click','.dailyDelete',function(){
    	var url = $(this).parent().parent().attr('url');
		$.ajax({
			type : "POST",
			url : url,
			cache: false,
		    dataType:'text', 
			data: { textarea_daily: "" },  
			success : function(data) {
				$('.float-right-padding .rightPart').html(data);
			},
			error : function(request) {
			    alert("请求失败");
			}
		});
    });
    /**
     * 我的作品/日记/查看
     */
    $('.container-fluid').on('click','.dailyScan',function(){    	
    	var url = $(this).parent().parent().attr('url_scan');
		$.ajax({
			type : "POST",
			url : url,
			cache: false,
			data: { textarea_daily: "" },  
			success : function(data) {
				$('.float-right-padding .rightPart').html(data);
				var dailyScanDataDate = $('#dailyScanDataDate').val();
				var dailyScanDataWether = $('#dailyScanDataWether').val();
				var dailyScanDataDiary = $('#dailyScanDataDiary').val();
				var dailyScanDataAddress = $('#dailyScanDataAddress').val();
		        $("#sel option[value='" + dailyScanDataWether + "']").attr("selected", true);  
				$("#sel").val(dailyScanDataWether);
		    	$("#addr").val(dailyScanDataAddress);
		    	$("#datetime").val(dailyScanDataDate);
		    	$("#comment").val(dailyScanDataDiary);
		    	$('.btn-writing-submit').css('display','none');
		    	$("#comment").attr("disabled","disabled");
		    	$("#datetime").attr("disabled","disabled");
		    	$("#addr").attr("disabled","disabled");
		    	$("#sel").attr("disabled","disabled");
			},
			error : function(request) {
			    alert("请求失败");
			}
		});
    });
    /**
     * 写作/散文(获散文模板)
     */
    $('.container-fluid').on('click','#collapseTwo a:nth-child(2)',function(){
    	$.ajax({
			type : "GET",
			url : "writing/prose.jsp",
			cache: false,
			success : function(data) {
				$('.rightPart').html(data);
			},
			error : function(request) {
			    alert("请求失败");
			},
		});
    });
    /**
     * 写作/散文(提交数据)
     */
    $('.container-fluid').on('click',".btn-prose-submit",function(){
    	var prose = $("#prose_comment").val();
    	var url = $("#form-prose").attr('action');
    	url += "?prose="+prose;
		$.ajax({
			type : "POST",
			url : url,
			cache: false,
		    dataType:'text', 
			success : function(data) {
				$('.float-right-padding .rightPart').html(data);
			},
			error : function(request) {
			    alert("请求失败");
			}
		});
    });
    /**
     * 我的作品/散文
     */
    $('.container-fluid').on('click','#collapseThree a:nth-child(2)',function(){
    	var url = $(this).attr('url');
		$.ajax({
			type : "POST",
			url : url,
			cache: false,
		    dataType:'text', 
			data: { textarea_daily: "" },  
			success : function(data) {
				$('.float-right-padding .rightPart').html(data);
			},
			error : function(request) {
			    alert("请求失败");
			}
		});
    });
    /**
     * 我的作品/散文/删除
     */
    $('.container-fluid').on('click','.proseDelete',function(){
    	var url = $(this).parent().parent().attr('url');
		$.ajax({
			type : "POST",
			url : url,
			cache: false,
		    dataType:'text', 
			data: { textarea_daily: "" },  
			success : function(data) {
				$('.float-right-padding .rightPart').html(data);
			},
			error : function(request) {
			    alert("请求失败");
			}
		});
    });
    /**
     * 我的作品/散文/查看
     */
    $('.container-fluid').on('click','.proseScan',function(){    	
    	var url = $(this).parent().parent().attr('url_scan');
		$.ajax({
			type : "POST",
			url : url,
			cache: false,
			data: { textarea_daily: "" },  
			success : function(data) {
				$('.float-right-padding .rightPart').html(data);
				var proseScanDataDate = $('#proseScanDataDate').val();
				var proseScanDataProse = $('#proseScanDataProse').val();
		    	$("#prose_comment").val(proseScanDataProse);
		    	$('.btn-prose-submit').css('display','none');
		    	$("#prose_comment").attr("disabled","disabled");
		    	//$("#prose_comment").append(proseScanDataDate);
			},
			error : function(request) {
			    alert("请求失败");
			}
		});
    });
    /**
     * 写作/长篇小说(获取长篇小说模板)
     */
    $('.container-fluid').on('click','#collapseTwo a:nth-child(3)',function(){
    	$.ajax({
			type : "GET",
			url : "writing/novel.jsp",
			cache: false,
			success : function(data) {
				$('.rightPart').html(data);
			},
			error : function(request) {
			    alert("请求失败");
			},
		});
    });
    /**
     * 写作/长篇小说的树结构z-tree
     */
    $('.container-fluid').on('click','.btn-novel-submit',function(){
    	var novel_text = $('#novel_comment').val();
    	var novel_title = new Array();
    	var novel_parter = new Array();
    	var novel_chapter = new Array();
    	var novel_section = new Array();
    	var novel_others = new Array();
    	
        function saveStorage() {
            lStorage.mydata = t2.value;
            t1.value += "localStorage保存mydata:" + t2.value + "\n";
        }
    	
        
    	var url = $('#addNovel').attr('url');
    	
    	$(".node_name").each(function(){
   		 var node_name_parent = $(this).parent();
   		 if(node_name_parent.hasClass('level0')){
   			 novel_title.push($(this).text());
   		 }else if(node_name_parent.hasClass('level1')){
   			 novel_parter.push($(this).text());
   		 }else if(node_name_parent.hasClass('level2')){
   			 novel_chapter.push($(this).text());
   		 }else if(node_name_parent.hasClass('level3')){
   			 novel_section.push($(this).text());
   		 }else{
   			 novel_others.push($(this).text());
   		 }
    	});
    	$.ajax({
			type : "POST",
			url : url,
			cache: false,
			data : {
				novel_title : novel_title,
				novel_parter : novel_parter,
				novel_chapter : novel_chapter,
				novel_section : novel_section,
				novel_others : novel_others,
			},  
			success : function(data) {
				
			},
			error : function(request) {
			    alert("请求失败");
			}
		});
    });
    
    
});

/**
 * 初始化
 */
function initLeftMenu(){
	var firstCollapse = $('#accordion .card:first');
	 $('#accordion .card').css('border-radius','0px');
	var collapseLength = firstCollapse.siblings().length;
	var lastCardHeight = $('#accordion .card').eq(1).height();
    $('.float-right-padding .border').css('height','$(window).innerHeight-49px');
	var sumHeight = (collapseLength)*lastCardHeight;
	var breadcrumbHeight= $('.bootstrapHead').height();
	$('.bootstrapHead').css('margin-bottom','3px');
	var collapseHeight = $(window).height()-sumHeight-breadcrumbHeight-24-(collapseLength)*2-3;
	firstCollapse.find('.card-body').css('padding','0px');
	var collapse = firstCollapse.find('.card-body').height(collapseHeight);
	$('.float-right-padding .rightPart').css("height",$(window).height()-breadcrumbHeight-$('.breadcrumb').height()-$('.btn-group').height()-51);
	$('.container-fluid').children('.col-sm-2.float-left').css('padding-left','0px');
	$('.container-fluid').children('.col-sm-2.float-left').css('padding-right','5px');	
	$('.container-fluid').css('padding-left','5px');
	$('.container-fluid').css('padding-right','0px');
	$('.col-sm-10').children('.bg-secondary.mb-3').css('margin-right','-10px');
	firstCollapse.find('.card-body a:first').addClass('list-group-item-primary');
	var buttomCardWidth = $(window).width();
	if(buttomCardWidth<1300&&buttomCardWidth>900){
		$('.buttomCard').css('width','16%');
	}else if(buttomCardWidth<900){
		$('.buttomCard').css('width','15.6%');
	}else if(buttomCardWidth>1300){
		$('.buttomCard').css('width','16.26667%');
	}
	var url = $('#collapseOneFirst').attr('url');
	$.get(url, function(data) {
		$('.float-right-padding .rightPart').html(data);
		$('.apartBorder').css('cssText','border:none!important');
	});
}


