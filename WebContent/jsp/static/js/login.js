$(function(){
	$('.form_stl').on('click', '#showRightPush', function() {
		if($("div.info").css("display")=='none'){
			$("div.info").css("display","block");
			$(".form_stl #form").css("margin-right","-276px"); 
			
		}		
	})
	
	$('.form_stl').on('mouseleave', '#showRightPush,.info', function(e) {
       x = e.pageX;
       y = e.pageY;                 
       //x的值相对于文档的左边缘。y的值相对于文档的上边缘
       //x,y是全局变量;
       //判断鼠标是否在某DIV中
       var div = $('.info');//获取你想要的DIV
       var showRightPush = $('#showRightPush');
       var y1 = div.offset().top;  //div上面两个的点的y值
       var y2 = y1 + div.height();//div下面两个点的y值
       var x1 = div.offset().left;  //div左边两个的点的x值
       var x3 = showRightPush.offset().left;  //div左边两个的点的x值
       if( x < x1 || x > x3 || y < y1 || y > y2){
    	   $("div.info").hide();
           $(".form_stl #form").css("margin-right","-137px"); 
       }else{
    	   $('div.info span a').hover(function() {
			if ($(this).index() == 0) {
				console.log("aaa");
				$('div.info span a').css("cursor", '');
				$(this).children('div').toggleClass('backgroupcol');
				$('div.info div.nav2').toggleClass('backgroupcol');
				$(this).css("cursor", "pointer");
			} else {
				$('div.info span a').css("cursor", '');
				$(this).children('div').toggleClass('backgroupcol');
				$(this).css("cursor", "pointer");
			}
		})	   	   
       };
	});
	
	$('.form_stl').on('click', '#showRight', function() {
		if($("div.info").css("display")=='none'){
			$("div.info").css("display","block");
			$(".form_stl #form").css("margin-right","-349px"); 		
		}else{
			$("div.info").css("display","none");
			$(".form_stl #form").css("margin-right","-210px");			
		}		
	})
	$(".form_stl").on("click",".submit_and_resgiter",function(){
		login();
	})
})

	function login() {
		var username = $(".username").val();
		var pass = $(".password").val();
		if (username == "") {
			var dialog = jDialog.tip('请输入用户名',{
				target : $('.username'),
					position : 'top',
					trianglePosFromStart :0,
				autoClose : 1000,
				offset : {
		    		top :-20,
					left:10,
					right:0,
					bottom:0
					}
			});
		} else if (pass == "") {
			$('.j-dialog').hide();
			var dialog = jDialog.tip('请输入密码',{
				target : $('.password'),
					position : 'top',
					trianglePosFromStart :0,
				autoClose : 1000,
				offset : {
		    		top :-20,
					left:10,
					right:0,
					bottom:0
					}
			});
		}else if (username != "123" | pass != "123") {
			$('.j-dialog').hide();
			var dialog = jDialog.tip('请输入正确的用户名或密码',{
				target : $('.username'),
					position : 'bottom',
					trianglePosFromStart :0,
				autoClose : 1000,
				offset : {
		    		top :-20,
					left:10,
					right:0,
					bottom:0
					}
			});			
		}else if (username == "123" && pass == "123") {
			window.location.href = "jsp/literary/home_page.jsp";
		}
	}

	