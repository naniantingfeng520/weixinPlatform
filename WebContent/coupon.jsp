<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Coupon</title>
<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$.get("coupon?action=get",
			function(data,status){
				//alert(data);
				data = $.trim(data);
				if(data=="error")
					alert("no coupon");
				else{
					$("#main_content").text(data);
				}
			}
		);
		var child_flag = false;
		$(".parent_nav").click(function(){
			child_flag = !child_flag;
			if(child_flag){
				$(".child_nav").fadeIn();
				$(".left_nav_selected").addClass("left_nav");
				$(".left_nav_selected").removeClass("left_nav_selected");
				$(this).removeClass("left_nav");
				$(this).addClass("left_nav_selected");
			}
			else{
				$(".child_nav").css("display","none");
			}
		});
	});
</script>
<style type="text/css">
	#main{
		height:350px;
	}
</style>
</head>
<body>
	<jsp:include page="head.jsp" flush="true" />
	<div id="main">
		<div id="main_container">
			<div class="global_title">
				<span>优惠信息</span>
			</div>
			<div id="main_left">
				<ul class="left_menu">
					<li class="left_nav parent_nav"><a href="javascript:;">积分管理</a></li>
					<li class="child_nav"><a href="javascript:;">发布积分</a></li>
					<li class="child_nav"><a href="integral.jsp">历史记录</a></li>
					<li class="left_nav_selected"><a href="javascript:;">优惠券管理</a></li>
				</ul>
			</div>
			<div id="main_content">
			</div>
		</div>
	</div>
	<jsp:include page="foot.jsp" flush="true" />
</body>
</html>