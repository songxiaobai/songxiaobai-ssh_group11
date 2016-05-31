<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Home</title>
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
	<!-- header-section-ends -->
	<!-- content-section-starts -->
	<div class="content">
		<div class="container">
			<div class="brand">
				<div class="col-md-8 main">
					<img src="../images/main.png" alt="" />
				</div>
				<div class="col-md-4 sub">
					<img src="../images/side-img.png" alt="" />
					<div class="add-to-cart">
					<p>70种感恩回馈零食大礼包</p>
					 <form action="" class="sky-form">
						     <fieldset>					
							   <section>
							     <div class="rating">
									<input type="radio" name="stars-rating" id="stars-rating-5">
									<label for="stars-rating-5"><i class="icon-star"></i></label>
									<input type="radio" name="stars-rating" id="stars-rating-4">
									<label for="stars-rating-4"><i class="icon-star"></i></label>
									<input type="radio" name="stars-rating" id="stars-rating-3">
									<label for="stars-rating-3"><i class="icon-star"></i></label>
									<input type="radio" name="stars-rating" id="stars-rating-2">
									<label for="stars-rating-2"><i class="icon-star"></i></label>
									<input type="radio" name="stars-rating" id="stars-rating-1">
									<label for="stars-rating-1"><i class="icon-star"></i></label>
									<div class="clearfix"></div>
								 </div>
							  </section>
						    </fieldset>
						  </form>
						<span>¥298</span>
						<button class="cart-button">
							<i class="white-cart"></i>
						    <span>| 加入购物车</span>
						</button>
						</div>
						<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="watch-and-buy">
				<div class="select">
					<h2>watch & Buy</h2>
				</div>
				<div class="preview">
					<img src="../images/side2.png" alt="" />
					<i class="bag"></i>
				</div>
				<div class="preview">
					<img src="../images/side1.png" alt="" />
					<i class="bag"></i>
				</div>
				<div class="preview span_66">
					<img src="../images/side.png" alt="" />
					<i class="bag"></i>
				</div>
				<div class="clearfix"></div>
		    </div>
	<div class="sap_tabs">	
						 <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
						  <ul class="resp-tabs-list">
						  	  <li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>新品上架</span></li>
							  <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>促销商品</span></li>
							  <li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>零食大礼包</span></li>
							  <div class="clearfix"></div>
						  </ul>				  	 
							<div class="resp-tabs-container">
							    <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
									<ul class="tab_img">
									  <li>
										<div class="view view-first">
					   		  			   <img src="../images/pic1.png" class="img-responsive" alt=""/>
										   <div class="info1"><h4>hot</h4> </div>
											 <div class="mask">
						                        
								              </div>
								              <div class="tab_desc">
											  <div class="tab_desc_1">
												  <h5>好兆头好照头脆骨香辣猪脆骨加鱼仔</h5>
											  </div>
											  <div class="tab_desc_2">
												  <p>¥0.60</p>
											  </div>
											  <div class="clearfix"></div>
											  </div>
											
										  </div>
										  <img src="../images/rating.png" alt="" />
										</li>
										<li>
										  <div class="view view-first">
					   		  			   <img src="../images/pic2.png" class="img-responsive" alt=""/>
											 <div class="mask">
						                        <div class="info1"> </div>
								              </div>
								              <div class="tab_desc">
											  <div class="tab_desc_1">
												  <h5>香港进口零食谷道仙松塔原味饼干</h5>
											  </div>
											  <div class="tab_desc_2">
												  <p>¥1.66</p>
											  </div>
											  <div class="clearfix"></div>
											  </div>
										  </div>
										  <img src="../images/rating.png" alt="" />
										</li>
										<li class="last">
										  <div class="view view-first">
					   		  			   <img src="../images/pic3.png" class="img-responsive" alt=""/>
											 <div class="mask">
						                        <div class="info1"> </div>
								              </div>
								              <div class="tab_desc">
											  <div class="tab_desc_1">
												  <h5>EGO金小熊饼干儿童灌心饼干</h5>
											  </div>
											  <div class="tab_desc_2">
												  <p>¥1.68</p>
											  </div>
											  <div class="clearfix"></div>
											  </div>
										  </div>
										  <img src="../images/rating.png" alt="" />
										</li>
									    <li>
									     <div class="view view-first">
					   		  			   <img src="../images/pic4.png" class="img-responsive" alt=""/>
											 <div class="mask">
						                        <div class="info1"> </div>
								              </div>
								              <div class="tab_desc">
											  <div class="tab_desc_1">
												  <h5>蜀道香麻辣小鱼仔</h5>
											  </div>
											  <div class="tab_desc_2">
												  <p>¥1.31</p>
											  </div>
											  <div class="clearfix"></div>
											  </div>
										  </div>
										  <img src="../images/rating.png" alt="" />
										</li>
										<li>
										 <div class="view view-first">
					   		  			   <img src="../images/pic12.png" class="img-responsive" alt=""/>
											 <div class="mask">
						                        <div class="info1"> </div>
								              </div>
								              <div class="tab_desc">
											  <div class="tab_desc_1">
												  <h5>麦得隆干吃汤圆</h5>
											  </div>
											  <div class="tab_desc_2">
												  <p>¥0.90</p>
											  </div>
											  <div class="clearfix"></div>
											  </div>
										  </div>
										  <img src="../images/rating.png" alt="" />
										</li>
										<li class="last">
										  <div class="view view-first">
					   		  			   <img src="../images/pic6.png" class="img-responsive" alt=""/>
											 <div class="mask">
						                        <div class="info1"> </div>
								              </div>
								              <div class="tab_desc">
											  <div class="tab_desc_1">
												  <h5>甘源蟹黄瓜子仁</h5>
											  </div>
											  <div class="tab_desc_2">
												  <p>¥0.90</p>
											  </div>
											  <div class="clearfix"></div>
											  </div>
										  </div>
										  <img src="../images/rating.png" alt="" />
										</li>
										<div class="clearfix"></div>
									</ul>
							     </div>	
							     <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
									<ul class="tab_img">
									  <li>
										<div class="view view-first">
					   		  			   <img src="../images/pic8.png" class="img-responsive" alt=""/>
											 <div class="mask">
						                        <div class="info1"> </div>
								              </div>
								              <div class="tab_desc">
											  <div class="tab_desc_1">
												  <h5>澳洲自然坚果夏威夷果</h5>
											  </div>
											  <div class="tab_desc_2">
												  <p>¥21.80</p>
											  </div>
											  <div class="clearfix"></div>
											  </div>
										  </div>
										  <img src="../images/rating.png" alt="" />
										</li>
										<li>
										  <div class="view view-first">
					   		  			   <img src="../images/pic7.png" class="img-responsive" alt=""/>
											 <div class="mask">
						                        <div class="info1"> </div>
								              </div>
								              <div class="tab_desc">
											  <div class="tab_desc_1">
												  <h5>炒货瓜子葵花籽口纤手香瓜子</h5>
											  </div>
											  <div class="tab_desc_2">
												  <p>¥0.75</p>
											  </div>
											  <div class="clearfix"></div>
											  </div>
										  </div>
										  <img src="../images/rating.png" alt="" />
										</li>
										<li class="last">
										  <div class="view view-first">
					   		  			   <img src="../images/pic13.png" class="img-responsive" alt=""/>
											 <div class="mask">
						                        <div class="info1"> </div>
								              </div>
								             <div class="tab_desc">
											  <div class="tab_desc_1">
												  <h5>阿里山甘草西瓜子</h5>
											  </div>
											  <div class="tab_desc_2">
												  <p>¥0.80</p>
											  </div>
											  <div class="clearfix"></div>
											  </div>
										  </div>
										  <img src="../images/rating.png" alt="" />
										</li>
									    <li>
									     <div class="view view-first">
					   		  			   <img src="../images/pic9.png" class="img-responsive" alt=""/>
											 <div class="mask">
						                        <div class="info1"> </div>
								              </div>
								              <div class="tab_desc">
											  <div class="tab_desc_1">
												  <h5>特级香缘里缘香腰果袋装</h5>
											  </div>
											  <div class="tab_desc_2">
												  <p>¥23.80</p>
											  </div>
											  <div class="clearfix"></div>
											  </div>
										  </div>
										  <img src="../images/rating.png" alt="" />
										</li>
										<li>
										 <div class="view view-first">
					   		  			   <img src="../images/pic14.png" class="img-responsive" alt=""/>
											 <div class="mask">
						                        <div class="info1"> </div>
								              </div>
								              <div class="tab_desc">
											  <div class="tab_desc_1">
												  <h5>山核桃长寿果</h5>
											  </div>
											  <div class="tab_desc_2">
												  <p>¥19.80</p>
											  </div>
											  <div class="clearfix"></div>
											  </div>
										  </div>
										  <img src="../images/rating.png" alt="" />
										</li>
										<li class="last">
										  <div class="view view-first">
					   		  			   <img src="../images/pic15.png" class="img-responsive" alt=""/>
											 <div class="mask">
						                        <div class="info1"> </div>
								              </div>
								              <div class="tab_desc">
											  <div class="tab_desc_1">
												  <h5>大杏仁手剥薄壳杏仁</h5>
											  </div>
											  <div class="tab_desc_2">
												  <p>¥19.80</p>
											  </div>
											  <div class="clearfix"></div>
											  </div>
										  </div>
										  <img src="../images/rating.png" alt="" />
										</li>
										<div class="clearfix"></div>
									</ul>
							     </div>	
							     <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
									<ul class="tab_img">
									  <li>
										<div class="view view-first">
					   		  			   <img src="../images/pic10.png" class="img-responsive" alt=""/>
											 <div class="mask">
						                        <div class="info1"> </div>
								              </div>
								              <div class="tab_desc">
											  <div class="tab_desc_1">
												  <h5>送女友零食套餐大礼包</h5>
											  </div>
											  <div class="tab_desc_2">
												  <p>¥88.00</p>
											  </div>
											  <div class="clearfix"></div>
											  </div>
										  </div>
										  <img src="../images/rating.png" alt="" />
										</li>
										<li>
										  <div class="view view-first">
					   		  			   <img src="../images/pic16.png" class="img-responsive" alt=""/>
											 <div class="mask">
						                        <div class="info1"> </div>
								              </div>
								              <div class="tab_desc">
											  <div class="tab_desc_1">
												  <h5>送女友零食套餐大礼包</h5>
											  </div>
											  <div class="tab_desc_2">
												  <p>¥68.00</p>
											  </div>
											  <div class="clearfix"></div>
											  </div>
										  </div>
										  <img src="../images/rating.png" alt="" />
										</li>
										<li class="last">
										  <div class="view view-first">
					   		  			   <img src="../images/pic17.png" class="img-responsive" alt=""/>
											 <div class="mask">
						                        <div class="info1"> </div>
								              </div>
								              <div class="tab_desc">
											  <div class="tab_desc_1">
												  <h5>送女友零食套餐大礼包</h5>
											  </div>
											  <div class="tab_desc_2">
												  <p>¥198.00</p>
											  </div>
											  <div class="clearfix"></div>
											  </div>
										  </div>
										  <img src="../images/rating.png" alt="" />
										</li>
									    <li>
									     <div class="view view-first">
					   		  			   <img src="../images/pic18.png" class="img-responsive" alt=""/>
											 <div class="mask">
						                        <div class="info1"> </div>
								              </div>
								              <div class="tab_desc">
											  <div class="tab_desc_1">
												  <h5>送女友零食套餐大礼包</h5>
											  </div>
											  <div class="tab_desc_2">
												  <p>¥168.00</p>
											  </div>
											  <div class="clearfix"></div>
											  </div>
										  </div>
										  <img src="../images/rating.png" alt="" />
										</li>
										<li>
										 <div class="view view-first">
					   		  			   <img src="../images/pic5.png" class="img-responsive" alt=""/>
											 <div class="mask">
						                        <div class="info1"> </div>
								              </div>
								              <div class="tab_desc">
											  <div class="tab_desc_1">
												  <h5>送女友零食套餐大礼包</h5>
											  </div>
											  <div class="tab_desc_2">
												  <p>¥89.00</p>
											  </div>
											  <div class="clearfix"></div>
											  </div>
										  </div>
										  <img src="../images/rating.png" alt="" />
										</li>
										<li class="last">
										  <div class="view view-first">
					   		  			   <img src="../images/pic11.png" class="img-responsive" alt=""/>
											 <div class="mask">
						                        <div class="info1"> </div>
								              </div>
								              <div class="tab_desc">
											  <div class="tab_desc_1">
												 <h5>送女友零食套餐大礼包</h5>
											  </div>
											  <div class="tab_desc_2">
												  <p>¥168.00</p>
											  </div>
											  <div class="clearfix"></div>
											  </div>
										  </div>
										  <img src="../images/rating.png" alt="" />
										</li>
										<div class="clearfix"></div>
									</ul>
							     </div>	
							    <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-3">
									<ul class="tab_img">
									  <li>
										<div class="view view-first">
					   		  			   <img src="../images/pic10.png" class="img-responsive" alt=""/>
											 <div class="mask">
						                        <div class="info1"> </div>
								              </div>
								              <div class="tab_desc">
											  <div class="tab_desc_1">
												  <h5>Lorem ipsum dolor</h5>
											  </div>
											  <div class="tab_desc_2">
												  <p>$59.95</p>
											  </div>
											  <div class="clearfix"></div>
											  </div>
										  </div>
										  <img src="../images/rating.png" alt="" />
										</li>
										<li>
										  <div class="view view-first">
					   		  			   <img src="../images/pic2.jpg" class="img-responsive" alt=""/>
											 <div class="mask">
						                        <div class="info1"> </div>
								              </div>
								              <div class="tab_desc">
											  <div class="tab_desc_1">
												  <h5>Lorem ipsum dolor</h5>
											  </div>
											  <div class="tab_desc_2">
												  <p>$59.95</p>
											  </div>
											  <div class="clearfix"></div>
											  </div>
										  </div>
										  <img src="../images/rating.png" alt="" />
										</li>
										<li>
										  <div class="view view-first">
					   		  			   <img src="../images/pic9.jpg" class="img-responsive" alt=""/>
											 <div class="mask">
						                        <div class="info1"> </div>
								              </div>
								              <div class="tab_desc">
											  <div class="tab_desc_1">
												 <h5>Lorem ipsum dolor</h5>
											  </div>
											  <div class="tab_desc_2">
												  <p>$59.95</p>
											  </div>
											  <div class="clearfix"></div>
											  </div>
										  </div>
										  <img src="../images/rating.png" alt="" />
										</li>
									    <li>
									     <div class="view view-first">
					   		  			   <img src="../images/pic4.jpg" class="img-responsive" alt=""/>
											 <div class="mask">
						                        <div class="info1"> </div>
								              </div>
								              <div class="tab_desc">
											  <div class="tab_desc_1">
												  <h5>Lorem ipsum dolor</h5>
											  </div>
											  <div class="tab_desc_2">
												  <p>$59.95</p>
											  </div>
											  <div class="clearfix"></div>
											  </div>
										  </div>
										  <img src="../images/rating.png" alt="" />
										</li>
										<li>
										 <div class="view view-first">
					   		  			   <img src="../images/pic13.jpg" class="img-responsive" alt=""/>
											 <div class="mask">
						                        <div class="info1"> </div>
								              </div>
								              <div class="tab_desc">
											  <div class="tab_desc_1">
												  <h5>Lorem ipsum dolor</h5>
											  </div>
											  <div class="tab_desc_2">
												  <p>$59.95</p>
											  </div>
											  <div class="clearfix"></div>
											  </div>
										  </div>
										  <img src="../images/rating.png" alt="" />
										</li>
										<li class="last">
										  <div class="view view-first">
					   		  			   <img src="../images/pic8.jpg" class="img-responsive" alt=""/>
											 <div class="mask">
						                        <div class="info1"> </div>
								              </div>
								             <div class="tab_desc">
											  <div class="tab_desc_1">
												  <h5>Lorem ipsum dolor</h5>
											  </div>
											  <div class="tab_desc_2">
												  <p>$59.95</p>
											  </div>
											  <div class="clearfix"></div>
											  </div>
										  </div>
										  <img src="../images/rating.png" alt="" />
										</li>
										<div class="clearfix"></div>
									</ul>
							</div>		        					 	        					 
					</div>	
              </div>
         </div>
		</div>
			<div class="shipping">
				<div class="container">
					<div class="shipping-section-grid">
						<div class="col-md-7 shipping-left-grid">
							<h3>免运费</h3>
							<div class="icon">
								<img src="../images/shipping-icon.png" alt="" />
							</div>
							<div class="icon-text">
								<p>Lorem ipsum is dolor sit suspendise amet latest videos of lorem   feworem ipsum is dolor sit sud spendi desig sunpoen controey   feworem ipsum is dolor sit suspendi desig.</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="col-md-5 shipping-right-grid">
							<h3>时事通讯</h3>
							<div class="news-search-box">
                         <form> 
                         <input type="text" class="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}">
                          <input type="submit" value>
	                    </form> 
	                   </div>
				    </div>
					<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<div class="map">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d396369.7968760607!2d-94.5757195!3d39.091919000000004!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x87c0f75eafe99997%3A0x558525e66aaa51a2!2sKansas+City%2C+MO%2C+USA!5e0!3m2!1sen!2sin!4v1416895090472"  frameborder="0" style="border:0"></iframe>
				<div class="map-layer">
					<div class="map-layer-bottom text-center">
						<h4>follow us</h4>
						<div class="social-icons">
							<i class="facebook"></i>
							<i class="twitter"></i>
							<i class="google-pluse"></i>
							<i class="pinterest"></i>
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
				<h3>shop</h3>
				<ul>
					<li><a href="#">new arrivals</a></li>
					<li><a href="#">men</a></li>
					<li><a href="#">accessories</a></li>
					<li><a href="#">kids</a></li>
					<li><a href="#">brands</a></li>
					<li><a href="#">trends</a></li>
					<li><a href="#">sale</a></li>
					<li><a href="#">style videos</a></li>
				</ul>
			</div>
			<div class="col-md-3 shop">
				<h3>help</h3>
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
				<h3>account</h3>
				<ul>
					<li><a href="#">my sports</a></li>
					<li><a href="#">my orders</a></li>
					<li><a href="#">my shopping bag</a></li>
					<li><a href="#">my wishlist</a></li>
				</ul>
			</div>
			<div class="col-md-3 shop">
				<h3>popular</h3>
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
