<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Update</title>
<link href="../css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="../js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Dancing+Script:400,700' rel='stylesheet' type='text/css'>
<script src="../js/jquery.easydropdown.js"></script>
<script src="../js/responsiveslides.min.js"></script>
<script>
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	nav: true,
      	speed: 500,
        namespace: "callbacks",
        pager: true,
      });
    });
</script>
<script src="../js/easyResponsiveTabs.js" type="text/javascript"></script>
		    <script type="text/javascript">
			    $(document).ready(function () {
			        $('#horizontalTab').easyResponsiveTabs({
			            type: 'default', //Types: default, vertical, accordion           
			            width: 'auto', //auto or any width like 600px
			            fit: true   // 100% fit in a container
			        });
			    });
</script>
<script type="text/javascript" src="../js/easing.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
				});
			});
		</script>

</head>
<body>
    <!-- header-section-starts -->
	<div class="header">
		<div class="top-header">
			<div class="container">
				<div class="header-left">
					<p><span style="font-size:16px;color:white;">酷爱零嘴</span></p>
				</div>
				<div class="login-section">
					<ul>
						<li><a href="dingdan.jsp">我的订单</a></li>
						<li><a href="../jsp/login.jsp">登陆</a>  </li> |
						<li><a href="../jsp/register.jsp">注册</a> </li>
					</ul>
				</div>
				<!-- start search-->
				    <div class="search-box">
					    <div id="sb-search" class="sb-search">
							<form>
								<input class="sb-search-input" placeholder="请输入你要查找的商品..." type="search" name="search" id="search">
								<input class="sb-search-submit" type="submit" value="">
								<span class="sb-icon-search"> </span>
							</form>
						</div>
				    </div>
					<!-- search-scripts -->
					<script src="../js/classie.js"></script>
					<script src="../js/uisearch.js"></script>
						<script>
							new UISearch( document.getElementById( 'sb-search' ) );
						</script>
					<!-- //search-scripts -->
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="bottom-header">
			<div class="container">
				<div class="logo">
					<a href="../jsp/index.jsp"><h1>零食店</h1></a>
				</div>
				<div class="header_bottom_right">
				<!-- start h_menu4 -->
					<div class="h_menu4">
					<a class="toggleMenu" href="">菜单</a>
					<ul class="nav">
						<li class="active"><a href="../jsp/index.jsp">主页</a></li>
						<li><a href="products.html" class="root">糖果饮料</a>
							<ul>
								<li><a href="products.html">芒果汁</a></li>
								<li><a href="products.html">葡萄汁</a></li>
								<li><a href="products.html">水果棒棒糖</a></li>
								<li><a href="products.html">果汁软糖橡皮糖</a></li>
								<li><a href="products.html">布丁果汁</a></li>
								<li><a href="products.html">低糖燕麦糖</a></li>
							</ul>
						</li>
						<li><a href="bikes.html">干货坚果</a>
							<ul>
								<li><a href="bikes.html">澳洲自然坚果</a></li>
								<li><a href="bikes.html">大杏仁</a></li>
								<li><a href="bikes.html">云南纸皮核桃</a></li>
								<li><a href="bikes.html">三星大枣 </a></li>
								<li><a href="bikes.html">奶油手剥山核桃</a></li>
								<li><a href="bikes.html">野生松子</a></li>
							</ul>
						</li>
						<li><a href="products.html">饼干糕点</a>
							<ul>
								<li><a href="products.html">星芙虎皮蛋糕</a></li>
								<li><a href="products.html">白鹤铁板鸡蛋煎饼面包</a></li>
								<li><a href="products.html">丹夫华夫饼营养早餐糕点</a></li>
								<li><a href="products.html">印尼千层蛋糕</a></li>
							</ul>
						</li>
						<li><a href="bikes.html">肉类卤味</a>
							<ul>
								<li><a href="bikes.html">香靖江猪肉脯铺干</a></li>
								<li><a href="bikes.html">香干煸麻辣鸭舌</a></li>
								<li><a href="bikes.html">口水娃香辣烧烤味鱿鱼</a></li>
								<li><a href="bikes.html">四川特产天椒麻辣牛板筋</a></li>
								<li><a href="bikes.html">小牧童烧烤孜然风味烤鸡腿</a></li>
							</ul>
						</li>
						<li><a href="bikes.html">蜜饯果干</a>
							<ul>
								<li><a href="bikes.html">新疆特产葡萄干</a></li>
								<li><a href="bikes.html">芒果干酸甜可口芒果干</a></li>
								<li><a href="bikes.html">黄桃罐头大片</a></li>
								<li><a href="bikes.html">干冻干草莓苏曲儿草莓脆片</a></li>
								<li><a href="bikes.html">冰糖杨梅</a></li>
							</ul>
						</li>
						</ul>
						<script type="text/javascript" src="../js/nav.js"></script>
				</div>
				<!-- end h_menu4 -->
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<div class="content">
		
		<div class="login-page">
			    <div class="dreamcrub">
				<div class="container">
			   	 <ul class="breadcrumbs">
                    <li class="home">
                       <a href="../jsp/index.jsp" title="Go to Home Page"><img src="../images/home.png" alt=""/></a>&nbsp;
                       <span>&gt;</span>
                    </li>
                    <li class="women">
                    	个人信息
                    </li>
                </ul>
                <ul class="previous">
                	<li><a href="../jsp/index.jsp">返回上一页</a></li>
                </ul>
                <div class="clearfix"></div>
			   </div>
			   </div>
			</div>
		</div>
		<div class="content">
		<div class="login-page">
			    <div class="dreamcrub">
				<div class="container">
		  <p>个人资料</p>
		  <link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
  		<script src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
  		<script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
  		<link rel="stylesheet" href="jqueryui/style.css">
  		<script>
  		$(function() {
    	$( "#tabs" ).tabs({
      	event: "mouseover"
    	});
  		});
  		</script>
		<div id="tabs">
  		<ul>
    	<li><a href="#tabs-1">基本资料</a></li>
    	<li><a href="#tabs-2">头像照片</a></li>
    	<li><a href="#tabs-3">安全中心</a></li>
    	<li><a href="#tabs-4">账户中心</a></li>
  		</ul>
  		<div id="tabs-1">
  		<table border="0" cellpadding="=5" cellspacing="3">
  		<tr><td align="right">当前头像:</td><td><input type="image" name="image"/></td></tr>
  		<tr><td align="right">昵称:</td><td><input type="text" name="username"/></td></tr>
  		<tr><td align="right">真实姓名:</td><td><input type="text" name="username"/></td></tr>
  		<tr><td align="right">性别:</td><td><input type="radio" name="sex">男&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="sex">女</td></tr>
  		<tr><td align="right">注册日期:</td><td><input type="text" name="username"/></td></tr>
  		<tr><td align="right">电话:</td><td><input type="text" name="username"/></td></tr>
  		<tr><td align="right">身份证号码:</td><td><input type="text" name="username"/></td></tr>
  		<tr><td colspan="2"><center><input type="button" value="确认"/>&nbsp;&nbsp;<input type="button" value="取消"/></center></td></tr>
  		</table>
  		</div>
		  <div id="tabs-2">
		  <input type="file" name="" value="上传本地头像">
		   <input type="button" value="确认"><input type="button" value="取消">
			</div>
			<div id="tabs-3">
			<table border="0" cellpadding="=5" cellspacing="3">
			<tr><td align="right">旧密码:<input type="password" name="oldpass"></td></tr>
			<tr><td align="right">新密码:<input type="password" name="newpass"></td></tr>
			<tr><td align="right">再次输入密码:<input type="password" name="newpass"></td></tr>
			<tr><td colspan="2"><center><input type="button" value="确认"/>&nbsp;&nbsp;<input type="button" value="取消"/></center></td></tr>
		  </div>
		  <div id="tabs-4">
		
		  </div>
		  </div>
		  </div>
</body>
</html>