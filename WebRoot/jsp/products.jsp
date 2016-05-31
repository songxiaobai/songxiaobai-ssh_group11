<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<title>Products</title>
<link href="../css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="../js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="../css/form.css" rel="stylesheet" type="text/css" media="all" />
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
						<li><a href="login.html">登陆</a>  </li> |
						<li><a href="register.html">注册</a> </li>
					</ul>
				</div>
				<!-- start search-->
				    <div class="search-box">
					    <div id="sb-search" class="sb-search">
							<form>
								<input class="sb-search-input" placeholder="Enter your search term..." type="search" name="search" id="search">
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
					<a href="index.html"><h1>零食店</h1></a>
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
	
	<div class="dreamcrub">
	<div class="container">
			   	 <ul class="breadcrumbs">
				 
                    <li class="home">
                       <a href="../jsp/index.jsp" title="Go to Home Page"><img src="../images/home.png" alt=""/></a>&nbsp;
                       <span>&gt;</span>
                    </li>
                    <li>
                       different
                    </li>&nbsp;
                       <span>&gt;</span>
					<li>products</a></li>
                </ul>
                <ul class="previous">
                	<li><a href="../jsp/index.jsp">返回上一页</a></li>
                </ul>
                <div class="clearfix"></div>
			   </div>
			   </div>
			   <div class="container">
	   <div class="ft-ball">
     	    <div class="rsidebar span_1_of_left">
				   <section  class="sky-form">
				   <div class="product_right">
     			<h3 class="m_2">分类</h3>
     			    <select class="dropdown" tabindex="10" data-settings='{"wrapperClass":"metro"}'>
            			<option value="0">糖果饮料</option>	
						<option value="1">芒果汁</option>
						<option value="2">葡萄汁</option>
						<option value="3">布丁果汁</option>
						<option value="4">低糖燕麦糖</option>
		           </select>
				   <select class="dropdown" tabindex="50" data-settings='{"wrapperClass":"metro"}'>
						<option value="1">干货坚果</option>
						<option value="2">澳洲自然坚果</option>
						<option value="3">大杏仁</option>
						<option value="4">云南纸皮核桃</option>
						<option value="5">野生松子</option>
						<option value="6">奶油手剥山核桃</option>
			       </select>
				   <select class="dropdown" tabindex="8" data-settings='{"wrapperClass":"metro"}'>
						<option value="1">饼干糕点</option>
						<option value="2">星芙虎皮蛋糕</option>
						<option value="3">白鹤铁板鸡蛋煎饼面包</option>
						<option value="4">丹夫华夫饼营养早餐糕点</option>
						<option value="5">印尼千层蛋糕</option>
			       </select>
			       <select class="dropdown" tabindex="8" data-settings='{"wrapperClass":"metro"}'>
						<option value="1">肉类卤味</option>
						<option value="2">香靖江猪肉脯铺干</option>
						<option value="3">香干煸麻辣鸭舌</option>
						<option value="4">口水娃香辣烧烤味鱿鱼</option>
						<option value="5">四川特产天椒麻辣牛板筋</option>
						<option value="6">小牧童烧烤孜然风味烤鸡腿</option>
			       </select>
			       <select class="dropdown" tabindex="8" data-settings='{"wrapperClass":"metro"}'>
						<option value="1">蜜饯果干</option>
						<option value="2">新疆特产葡萄干</option>
						<option value="3">芒果干酸甜可口芒果干</option>
						<option value="4">黄桃罐头大片</option>
						<option value="4">干冻干草莓苏曲儿草莓脆片</option>
						<option value="4">冰糖杨梅</option>
			       </select>
</div>
		       <section  class="sky-form">
					<h4>价格</h4>
						<div class="row row1 scroll-pane">
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>$50.00 and Under (30)</label>
							</div>
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>¥10以下</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>¥10~¥50</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>¥50~¥100</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>¥100以上</label>
							</div>
						</div>
		       </section>
		</div>
		<div class="cont span_2_of_3">
		  <div class="mens-toolbar">
              <div class="sort">
               	<div class="sort-by">
		            <label>显示方式</label>
		            <select>
		                            <option value="">
		                	   声望		          			  </option>
		                            <option value="">
		                    	价格：高至低					</option>
		                            <option value="">
		                    	价格：低至高			      </option>
		            </select>
		            <a href=""><img src="../images/arrow2.gif" alt="" class="v-middle"></a>
               </div>
    		</div>
	          <div class="pager">   
	           <div class="limiter visible-desktop">
	            <label>显示</label>
	            <select>
	                            <option value="" selected="selected">
	                    9                </option>
	                            <option value="">
	                    15                </option>
	                            <option value="">
	                    30                </option>
	                        </select> 每页        
	             </div>
	       		<ul class="dc_pagination dc_paginationA dc_paginationA06">
				    <li><a href="#" class="previous">页面</a></li>
				    <li><a href="#">1</a></li>
				    <li><a href="#">2</a></li>
			  	</ul>
		   		<div class="clearfix"></div>
	    	</div>
     	    <div class="clearfix"></div>
	       </div>
			    <div class="box1">
				   <div class="col_1_of_single1 span_1_of_single1">
				     <div class="view1 view-fifth1">
				  	  <div class="top_box">
					  	<h3 class="m_1">汽水碳酸饮料批发350ml*6罐</h3>
					  	<p class="m_2">波霸专营店</p>
						<a href="single.html">
				         <div class="grid_img">
						   <div class="css3"><img src="../images/pic-5.png" alt=""/></div>
					          <div class="mask1">
	                       		<div class="info">波哥专卖</div>
			                  </div>
	                    </div>
                       <div class="price">¥ 23.80</div>
					   </div>
					    </div></a>
						<div class="rtng">
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
									<label for="stars-rating-1"><i class="icon-star"></i></label><span class="rtng">(5)<span>
									<div class="clearfix"></div>
								 </div>
							  </section>
						    	</span></span>
						    </fieldset>
						  </form>
						  </div>
						 <ul class="list2">
						  <li>
						  	<img src="../images/plus.png" alt=""/>
						  	<ul class="icon1 sub-icon1 profile_img">
							  <li><a class="active-icon c1" href="../jsp/cart.jsp">加入购物车</a>
							  </li>
							 </ul>
						   </li>
					     </ul>
			    	    <div class="clear"></div>
			    	</div>
				    <div class="col_1_of_single1 span_1_of_single1">
				     <div class="view1 view-fifth1">
				  	  <div class="top_box">
					  	<h3 class="m_1">椰子汁果肉椰奶245ml*1灌</h3>
					  	<p class="m_2">波霸专营店</p>
						<a href="single.html">
				         <div class="grid_img">
						   <div class="css3"><img src="../images/pic-3.png" alt=""/></div>
					          <div class="mask1">
	                       		<div class="info">波哥专卖</div>
			                  </div>
	                    </div>
                       <div class="price">¥3.99</div>
					   </div>
					    </div></a>
					   <div class="rtng">
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
									<label for="stars-rating-1"><i class="icon-star"></i></label><span class="rtng">(5)<span>
									<div class="clearfix"></div>
								 </div>
							  </section>
						    	</span></span>
						    </fieldset>
						  </form>
						  </div>
						 <ul class="list2">
						  <li>
						  	<img src="../images/plus.png" alt=""/>
						  	<ul class="icon1 sub-icon1 profile_img">
							  <li><a class="active-icon c1" href="single.html">加入购物车</a>
							  </li>
							 </ul>
						   </li>
					     </ul>
			    	    <div class="clear"></div>
			    	</div>
				   <div class="col_1_of_single1 span_1_of_single1">
				     <div class="view1 view-fifth1">
				  	  <div class="top_box">
					  	<h3 class="m_1">坚果派对黑豆即食189g*2袋</h3>
					  	<p class="m_2">波霸专营店</p>
						<a href="single.html">
				         <div class="grid_img">
						   <div class="css3"><img src="../images/pic-9.png" alt=""/></div>
					          <div class="mask1">
	                       		<div class="info">波哥专卖</div>
			                  </div>
	                    </div>
                       <div class="price">¥ 17.90</div>
					   </div>
					    </div></a>
					   <div class="rtng">
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
									<label for="stars-rating-1"><i class="icon-star"></i></label><span class="rtng">(5)<span>
									<div class="clearfix"></div>
								 </div>
							  </section>
						    	</span></span>
						    </fieldset>
						  </form>
						  </div>
						 <ul class="list2">
						  <li>
						  	<img src="../images/plus.png" alt=""/>
						  	<ul class="icon1 sub-icon1 profile_img">
							  <li><a class="active-icon c1" href="single.html">加入购物车 </a>
							  </li>
							 </ul>
						   </li>
					     </ul>
			    	    <div class="clearfix"></div>
			    	</div>
				  <div class="clearfix"></div>
			  </div>
			  <div class="box1">
				 <div class="col_1_of_single1 span_1_of_single1">
				     <div class="view1 view-fifth1">
				  	  <div class="top_box">
					  	<h3 class="m_1">炭烧腰果</h3>
					  	<p class="m_2">波霸专营店</p>
						<a href="single.html">
				         <div class="grid_img">
						   <div class="css3"><img src="../images/pic-10.png" alt=""/></div>
					          <div class="mask1">
	                       		<div class="info">波哥专卖 </div>
			                  </div>
	                    </div>
                       <div class="price">¥15.80</div>
					   </div>
					    </div></a>
					   <div class="rtng">
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
									<label for="stars-rating-1"><i class="icon-star"></i></label><span class="rtng">(5)<span>
									<div class="clearfix"></div>
								 </div>
							  </section>
						    	</span></span>
						    </fieldset>
						  </form>
						  </div>
						 <ul class="list2">
						  <li>
						  	<img src="../images/plus.png" alt=""/>
						  	<ul class="icon1 sub-icon1 profile_img">
							  <li><a class="active-icon c1" href="single.html">加入购物车</a>
							  </li>
							 </ul>
						   </li>
					     </ul>
			    	    <div class="clearfix"></div>
			    	</div>
				    <div class="col_1_of_single1 span_1_of_single1">
				     <div class="view1 view-fifth1">
				  	  <div class="top_box">
					  	<h3 class="m_1">夹心酥饼干</h3>
					  	<p class="m_2">波霸专卖店</p>
						<a href="single.html">
				         <div class="grid_img">
						   <div class="css3"><img src="../images/pic-4.png" alt=""/></div>
					          <div class="mask1">
	                       		<div class="info">波哥专卖</div>
			                  </div>
	                    </div>
                       <div class="price">¥ 29.80</div>
					   </div>
					    </div></a>
						<div class="rtng">
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
									<label for="stars-rating-1"><i class="icon-star"></i></label><span class="rtng">(5)<span>
									<div class="clearfix"></div>
								 </div>
							  </section>
						    	</span></span>
						    </fieldset>
						  </form>
						  </div>
						 <ul class="list2">
						  <li>
						  	<img src="../images/plus.png" alt=""/>
						  	<ul class="icon1 sub-icon1 profile_img">
							  <li><a class="active-icon c1" href="single.html">加入购物车</a>
							  </li>
							 </ul>
						   </li>
					     </ul>
			    	    <div class="clear"></div>
			    	</div>
				    <div class="col_1_of_single1 span_1_of_single1">
				     <div class="view1 view-fifth1">
				  	  <div class="top_box">
					  	<h3 class="m_1">蜜饯水果干果脯</h3>
					  	<p class="m_2">波霸专卖店</p>
						<a href="single.html">
				         <div class="grid_img">
						   <div class="css3"><img src="../images/pic-11.png" alt=""/></div>
					          <div class="mask1">
	                       		<div class="info">波哥专卖</div>
			                  </div>
	                    </div>
                       <div class="price">¥ 26.90</div>
					   </div>
					    </div></a>
					   <div class="rtng">
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
									<label for="stars-rating-1"><i class="icon-star"></i></label><span class="rtng">(5)<span>
									<div class="clearfix"></div>
								 </div>
							  </section>
						    	</span></span>
						    </fieldset>
						  </form>
						  </div>
						 <ul class="list2">
						  <li>
						  	<img src="../images/plus.png" alt=""/>
						  	<ul class="icon1 sub-icon1 profile_img">
							  <li><a class="active-icon c1" href="single.html">加入购物车 </a>
							  </li>
							 </ul>
						   </li>
					     </ul>
			    	    <div class="clearfix"></div>
			    	</div>
				  <div class="clearfix"></div>
			  </div>
			  <div class="box1">
				    <div class="col_1_of_single1 span_1_of_single1">
				     <div class="view1 view-fifth1">
				  	  <div class="top_box">
					  	<h3 class="m_1">粮悦手工糯米锅巴</h3>
					  	<p class="m_2">波霸专营店</p>
						<a href="single.html">
				         <div class="grid_img">
						   <div class="css3"><img src="../images/pic-6.png" alt=""/></div>
					          <div class="mask1">
	                       		<div class="info">波哥专卖</div>
			                  </div>
	                    </div>
                       <div class="price">¥ 11.90 </div>
					   </div>
					    </div></a>
					   <div class="rtng">
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
									<label for="stars-rating-1"><i class="icon-star"></i></label><span class="rtng">(5)<span>
									<div class="clearfix"></div>
								 </div>
							  </section>
						    	</span></span>
						    </fieldset>
						  </form>
						  </div>
						 <ul class="list2">
						  <li>
						  	<img src="../images/plus.png" alt=""/>
						  	<ul class="icon1 sub-icon1 profile_img">
							  <li><a class="active-icon c1" href="single.html">加入购物车 </a>
							  </li>
							 </ul>
						   </li>
					     </ul>
			    	    <div class="clearfix"></div>
			    	</div>
				    <div class="col_1_of_single1 span_1_of_single1">
				     <div class="view1 view-fifth1">
				  	  <div class="top_box">
					  	<h3 class="m_1">香辣卤味香辣猪脚猪蹄250g</h3>
					  	<p class="m_2">波霸专营店</p>
						<a href="single.html">
				         <div class="grid_img">
						   <div class="css3"><img src="../images/pic-7.png" alt=""/></div>
					          <div class="mask1">
	                       		<div class="info">波哥专卖</div>
			                  </div>
	                    </div>
                       <div class="price">¥ 26.80</div>
					   </div>
					    </div></a>
					   <div class="rtng">
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
									<label for="stars-rating-1"><i class="icon-star"></i></label><span class="rtng">(5)<span>
									<div class="clearfix"></div>
								 </div>
							  </section>
						    	</span></span>
						    </fieldset>
						  </form>
						  </div>
						 <ul class="list2">
						  <li>
						  	<img src="../images/plus.png" alt=""/>
						  	<ul class="icon1 sub-icon1 profile_img">
							  <li><a class="active-icon c1" href="single.html">加入购物车</a>
							  </li>
							 </ul>
						   </li>
					     </ul>
			    	    <div class="clearfix"></div>
			    	</div>
				    <div class="col_1_of_single1 span_1_of_single1">
				     <div class="view1 view-fifth1">
				  	  <div class="top_box">
					  	<h3 class="m_1"> 纯瘦肉酱肘子</h3>
					  	<p class="m_2">波霸专营店</p>
						<a href="single.html">
				         <div class="grid_img">
						   <div class="css3"><img src="../images/pic-8.png" alt=""/></div>
					          <div class="mask1">
	                       		<div class="info">波哥专卖</div>
			                  </div>
	                    </div>
                       <div class="price">¥ 14.90</div>
					   </div>
					    </div></a>
					   <div class="rtng">
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
									<label for="stars-rating-1"><i class="icon-star"></i></label><span class="rtng">(5)<span>
									<div class="clearfix"></div>
								 </div>
							  </section>
						    	</span></span>
						    </fieldset>
						  </form>
						  </div>
						 <ul class="list2">
						  <li>
						  	<img src="../images/plus.png" alt=""/>
						  	<ul class="icon1 sub-icon1 profile_img">
							  <li><a class="active-icon c1" href="single.html">加入购物车</a>
							  </li>
							 </ul>
						   </li>
					     </ul>
			    	    <div class="clearfix"></div>
			    	</div>
				  <div class="clearfix"></div>
			  </div>
			  <div class="box1">
				   <div class="col_1_of_single1 span_1_of_single1">
				     <div class="view1 view-fifth1">
				  	  <div class="top_box">
					  	<h3 class="m_1">芒果干</h3>
					  	<p class="m_2">波霸专营店</p>
						<a href="single.html">
				         <div class="grid_img">
						   <div class="css3"><img src="../images/pic-2.png" alt=""/></div>
					          <div class="mask1">
	                       		<div class="info">波哥专卖</div>
			                  </div>
	                    </div>
                       <div class="price">¥ 29.99</div>
					   </div>
					    </div></a>
					   <div class="rtng">
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
									<label for="stars-rating-1"><i class="icon-star"></i></label><span class="rtng">(5)<span>
									<div class="clearfix"></div>
								 </div>
							  </section>
						    	</span></span>
						    </fieldset>
						  </form>
						  </div>
						 <ul class="list2">
						  <li>
						  	<img src="../images/plus.png" alt=""/>
						  	<ul class="icon1 sub-icon1 profile_img">
							  <li><a class="active-icon c1" href="single.html">加入购物车</a>
							  </li>
							 </ul>
						   </li>
					     </ul>
			    	    <div class="clearfix"></div>
			    	</div>
				    <div class="col_1_of_single1 span_1_of_single1">
				     <div class="view1 view-fifth1">
				  	  <div class="top_box">
					  	<h3 class="m_1">乡巴佬鸡腿鸡爪鸡脖鸭腿</h3>
					  	<p class="m_2">波霸专营店</p>
						<a href="single.html">
				         <div class="grid_img">
						   <div class="css3"><img src="../images/pic-1.png" alt=""/></div>
					          <div class="mask1">
	                       		<div class="info">波哥专卖</div>
			                  </div>
	                    </div>
                       <div class="price">¥37.99</div>
					   </div>
					    </div></a>
					   <div class="rtng">
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
									<label for="stars-rating-1"><i class="icon-star"></i></label><span class="rtng">(5)<span>
									<div class="clearfix"></div>
								 </div>
							  </section>
						    	</span></span>
						    </fieldset>
						  </form>
						  </div>
						 <ul class="list2">
						  <li>
						  	<img src="../images/plus.png" alt=""/>
						  	<ul class="icon1 sub-icon1 profile_img">
							  <li><a class="active-icon c1" href="single.html">加入购物车 </a>
							  </li>
							 </ul>
						   </li>
					     </ul>
			    	    <div class="clearfix"></div>
			    	</div>
				   <div class="col_1_of_single1 span_1_of_single1">
				     <div class="view1 view-fifth1">
				  	  <div class="top_box">
					  	<h3 class="m_1">卜珂蔓越莓榛子手工黄油曲奇饼干</h3>
					  	<p class="m_2">波霸专卖店</p>
						<a href="single.html">
				         <div class="grid_img">
						   <div class="css3"><img src="../images/pic.png" alt=""/></div>
					          <div class="mask1">
	                       		<div class="info">波哥专卖</div>
			                  </div>
	                    </div>
                       <div class="price">¥ 9.90</div>
					   </div>
					    </div></a>
					   <div class="rtng">
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
									<label for="stars-rating-1"><i class="icon-star"></i></label><span class="rtng">(5)<span>
									<div class="clearfix"></div>
								 </div>
							  </section>
						    	</span></span>
						    </fieldset>
						  </form>
						  </div>
						 <ul class="list2">
						  <li>
						  	<img src="../images/plus.png" alt=""/>
						  	<ul class="icon1 sub-icon1 profile_img">
							  <li><a class="active-icon c1" href="single.html">加入购物车</a>
							  </li>
							 </ul>
						   </li>
					     </ul>
			    	    <div class="clearfix"></div>
			    	</div>
				  <div class="clearfix"></div>
			  </div>
			  </div>
			  <div class="clearfix"></div>
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