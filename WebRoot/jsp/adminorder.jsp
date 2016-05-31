
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<head>
	<meta charset="utf-8">
	<title>AdminMenu</title>
	<link media="all" rel="stylesheet" type="text/css" href="../css/all.css" />
	<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
	<script type="text/javascript">window.jQuery || document.write('<script type="text/javascript" src="../js/jquery-1.7.2.min.js"><\/script>');</script>
	<script type="text/javascript" src="../js/jquery.main.js"></script>
	<!--[if lt IE 9]><link rel="stylesheet" type="text/css" href="../css/ie.css" /><![endif]-->
</head>
<body>
	<div id="wrapper">
		<div id="content">
			<div class="c1">
				<div class="controls">
					<nav class="links">
						<ul>
							<li><a href="#" class="ico1">消息 <span class="num">26</span></a></li>
							<li><a href="#" class="ico2">查看库存 <span class="num">5</span></a></li>
							<li><a href="#" class="ico3">管理商品<span class="num">3</span></a></li>
						</ul>
					</nav>
					<div class="profile-box">
						<span class="profile">
							<a href="#" class="section">
								<img class="image" src="../images/img1.png" alt="image description" width="26" height="26" />
								<span class="text-box">
									欢迎
									<strong class="name">管理员</strong>
								</span>
							</a>
							
							<a href="#" class="opener">opener</a>
						</span>
						<a href="#" class="btn-on">On</a>
					</div>
				</div>
				<div class="tabs">
					<div id="tab-1" class="tab">
						<article>
							<div class="text-section">
								 <link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
  <script src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
  <script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
  <link rel="stylesheet" href="jqueryui/style.css">
  <script>
  $(function() {
    $( "#tabs" ).tabs({
      collapsible: true
    });
  });
  </script>
</head>
<body>
 
<div id="tabs">
  <ul>
    <li><a href="#tabs-1">所有订单</a></li>
    <li><a href="#tabs-2"> 待发货</a></li>
    <li><a href="#tabs-3">待收货</a></li>
    <li><a href="#tabs-3">待退款</a></li>
  </ul>
  <div id="tabs-1">
    <p><strong>0000000</strong></p>
  </div>
  <div id="tabs-2">
    <p><strong>再次点击标签页来关闭内容面板。</strong></p>
    <p>Morbi tincidunt, dui sit amet facilisis feugiat, odio metus gravida ante, ut pharetra massa metus id nunc. Duis scelerisque molestie turpis. Sed fringilla, massa eget luctus malesuada, metus eros molestie lectus, ut tempus eros massa ut dolor. Aenean aliquet fringilla sem. Suspendisse sed ligula in ligula suscipit aliquam. Praesent in eros vestibulum mi adipiscing adipiscing. Morbi facilisis. Curabitur ornare consequat nunc. Aenean vel metus. Ut posuere viverra nulla. Aliquam erat volutpat. Pellentesque convallis. Maecenas feugiat, tellus pellentesque pretium posuere, felis lorem euismod felis, eu ornare leo nisi vel felis. Mauris consectetur tortor et purus.</p>
  </div>
  <div id="tabs-3">
    <p><strong>再次点击标签页来关闭内容面板。</strong></p>
    <p>Duis cursus. Maecenas ligula eros, blandit nec, pharetra at, semper at, magna. Nullam ac lacus. Nulla facilisi. Praesent viverra justo vitae neque. Praesent blandit adipiscing velit. Suspendisse potenti. Donec mattis, pede vel pharetra blandit, magna ligula faucibus eros, id euismod lacus dolor eget odio. Nam scelerisque. Donec non libero sed nulla mattis commodo. Ut sagittis. Donec nisi lectus, feugiat porttitor, tempor ac, tempor vitae, pede. Aenean vehicula velit eu tellus interdum rutrum. Maecenas commodo. Pellentesque nec elit. Fusce in lacus. Vivamus a libero vitae lectus hendrerit hendrerit.</p>
  </div>
</div>
						</article>
					</div>
					<div id="tab-2" class="tab">
						<article>
							<div class="text-section">
		
		<aside id="sidebar">
			<strong class="logo"><a href="#">lg</a></strong>
			<ul class="tabset buttons">
				<li class="active">
					<a href="#tab-1" class="ico1"><span>Dashboard</span><em></em></a>
					<span class="tooltip"><span>Dashboard</span></span>
				</li>
				<li>
					<a href="#tab-2" class="ico2"><span>Gallery</span><em></em></a>
					<span class="tooltip"><span>Gallery</span></span>
				</li>
				<li>
					<a href="#tab-3" class="ico3"><span>Pages</span><em></em></a>
					<span class="tooltip"><span>Pages</span></span>
				</li>
				<li>
					<a href="#tab-4" class="ico4"><span>Widgets</span><em></em></a>
					<span class="tooltip"><span>Widgets</span></span>
				</li>
				<li>
					<a href="#tab-5" class="ico5"><span>Archive</span><em></em></a>
					<span class="tooltip"><span>Archive</span></span>
				</li>
				<li>
					<a href="#tab-6" class="ico6">
						<span>Comments</span><em></em>
					</a>
					<span class="num">11</span>
					<span class="tooltip"><span>Comments</span></span>
				</li>
				<li>
					<a href="#tab-7" class="ico7"><span>Plug-in</span><em></em></a>
					<span class="tooltip"><span>Plug-in</span></span>
				</li>
				<li>
					<a href="#tab-8" class="ico8"><span>Settings</span><em></em></a>
					<span class="tooltip"><span>Settings</span></span>
				</li>
			</ul>
			<span class="shadow"></span>
		</aside>
	</div>
</body>
</html>