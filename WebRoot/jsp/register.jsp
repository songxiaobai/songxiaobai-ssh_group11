<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<title>Register</title>
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
						<li><a href="../jsp/products.jsp" class="root">糖果饮料</a>
							<ul>
								<li><a href="../jsp/products.jsp">芒果汁</a></li>
								<li><a href="../jsp/products.jsp">葡萄汁</a></li>
								<li><a href="../jsp/products.jsp">水果棒棒糖</a></li>
								<li><a href="../jsp/products.jsp">果汁软糖橡皮糖</a></li>
								<li><a href="../jsp/products.jsp">布丁果汁</a></li>
								<li><a href="../jsp/products.jsp">低糖燕麦糖</a></li>
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
	<!-- header-section-ends -->
	<!-- content-section-starts -->
	<div class="content">
		
		<div class="dreamcrub">
		<div class="container">
			   	 <ul class="breadcrumbs">
                    <li class="home">
                       <a href="../jsp/index.jsp" title="Go to Home Page"><img src="../images/home.png" alt=""/></a>&nbsp;
                       <span>&gt;</span>
                    </li>
                    <li>
                    	  注册	
                    </li>
                </ul>
                <ul class="previous">
                	<li><a href="../jsp/index.jsp">返回上一页</a></li>
                </ul>
                <div class="clearfix"></div>
			   </div>
			   </div>
			   <div class="container">
		<div class="main-register-form">
		  <div class="register">
		  	  <form> 
				 <div class="register-top-grid">
					<h3>个人信息</h3>
					 <div class="wow fadeInLeft" data-wow-delay="0.4s">
						<span>姓名<label>*</label></span>
						<input type="text"> 
					 </div>
					 <div class="wow fadeInRight" data-wow-delay="0.4s">
						 <span>手机号码<label>*</label></span>
						 <input type="text"> 
					 </div>
					 <div class="clearfix"> </div>
					   <a class="news-letter" href="#">
					   </a>
					 </div>
				     <div class="register-bottom-grid">
						    <h3>登陆信息</h3>
							 <div class="wow fadeInLeft" data-wow-delay="0.4s">
								<span>密码<label>*</label></span>
								<input type="password">
							 </div>
							 <div class="wow fadeInRight" data-wow-delay="0.4s">
								<span>确认密码<label>*</label></span>
								<input type="password">
							 </div>
					 </div>
				</form>
				<div class="clearfix"> </div>
				<div class="register-but">
				   <form>
					   <input type="submit" value="提交">
					   <div class="clearfix"> </div>
				   </form>
				</div>
		   </div>
	    </div>
		</div>
		</div>
	<!-- content-section-ends -->
	<!-- footer-section-starts -->
	<div class="footer"> 
		<div class="container">
			<div class="col-md-3 shop">
				<h3>商店</h3>
				<ul>
					<li><a href="#">新品</a></li>
					<li><a href="#">糖果饮料</a></li>
					<li><a href="#">干货坚果</a></li>
					<li><a href="#">饼干糕点</a></li>
					<li><a href="#">肉类卤味</a></li>
					<li><a href="#">蜜饯果干</a></li>
					<li><a href="#">休闲食品</a></li>
				</ul>
			</div>
			<div class="col-md-3 shop">
				<h3>帮助</h3>
				<ul>
					<li><a href="#">frequently asked questions</a></li>
					<li><a href="#">women</a></li>
					<li><a href="#">style videos</a></li>
					<li><a href="#">sale</a></li>
					<li><a href="#">trends</a></li>
					<li><a href="#">style videos</a></li>
				</ul>
			</div>
			<div class="col-md-3 shop">
				<h3>账户</h3>
				<ul>
					<li><a href="#">my sports</a></li>
					<li><a href="#">my orders</a></li>
					<li><a href="#">my shopping bag</a></li>
					<li><a href="#">my wishlist</a></li>
				</ul>
			</div>
			<div class="col-md-3 shop">
				<h3>流行</h3>
				<ul>
					<li><a href="#">accessories</a></li>
					<li><a href="#">brands</a></li>
					<li><a href="#">frequently asked questions</a></li>
					<li><a href="#">style videos</a></li>
					<li><a href="#">women</a></li>
					<li><a href="#">my orders</a></li>
				</ul>
			</div>
			<div class="clearfix"></div>
			<div class="copy-rights">
			</div>
		</div>
	</div>
	<!-- footer-section-ends -->
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>