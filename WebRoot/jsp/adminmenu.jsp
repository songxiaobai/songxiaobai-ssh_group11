
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
							<li><a href="#" class="ico3">管理商品 <span class="num">3</span></a></li>
							<li><a href="#" class="ico3">进货管理 <span class="num">3</span></a></li>
							<li><a href="#" class="ico3">用户管理 <span class="num">3</span></a></li>
							
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
							<div id="container" style="width:1200px">

<div id="header" style="background-color:#FFA500;">
<h1 style="margin-bottom:0;">显示商品</h1></div>


<div id="content" style="background-color:#EEEEEE;height:650px;width:1200px;float:left;">
商品显示区域</div>

<div id="footer" style="background-color:#FFA500;clear:both;text-align:center;">
Copyright © W3Schools.com</div>

</div>
							</div>
							<ul class="states">
								</ul>
						</article>
					</div>
					<div id="tab-2" class="tab">
						<article>
							<div class="text-section">
								<h1>查询所有商品</h1>
								<p>This is a quick overview of some features</p>
							</div>
							<ul class="states">
								<li class="error">Error : This is an error placed text message.</li>
								<li class="warning">Warning: This is a warning placed text message.</li>
								<li class="succes">Succes : This is a succes placed text message.</li>
							</ul>
						</article>
					</div>
					<div id="tab-3" class="tab">
						<article>
							<div class="text-section">
								<h1>Dashboard</h1>
								<p>This is a quick overview of some features</p>
							</div>
							<ul class="states">
								<li class="error">Error : This is an error placed text message.</li>
								<li class="warning">Warning: This is a warning placed text message.</li>
								<li class="succes">Succes : This is a succes placed text message.</li>
							</ul>
						</article>
					</div>
					<div id="tab-4" class="tab">
						<article>
							<div class="text-section">
								<h1>Dashboard</h1>
								<p>This is a quick overview of some features</p>
							</div>
							<ul class="states">
								<li class="error">Error : This is an error placed text message.</li>
								<li class="warning">Warning: This is a warning placed text message.</li>
								<li class="succes">Succes : This is a succes placed text message.</li>
							</ul>
						</article>
					</div>
					<div id="tab-5" class="tab">
						<article>
							<div class="text-section">
								<h1>Dashboard</h1>
								<p>This is a quick overview of some features</p>
							</div>
							<ul class="states">
								<li class="error">Error : This is an error placed text message.</li>
								<li class="warning">Warning: This is a warning placed text message.</li>
								<li class="succes">Succes : This is a succes placed text message.</li>
							</ul>
						</article>
					</div>
					<div id="tab-6" class="tab">
						<article>
							<div class="text-section">
								<h1>Dashboard</h1>
								<p>This is a quick overview of some features</p>
							</div>
							<ul class="states">
								<li class="error">Error : This is an error placed text message.</li>
								<li class="warning">Warning: This is a warning placed text message.</li>
								<li class="succes">Succes : This is a succes placed text message.</li>
							</ul>
						</article>
					</div>
					<div id="tab-7" class="tab">
						<article>
							<div class="text-section">
								<h1>Dashboard</h1>
								<p>This is a quick overview of some features</p>
							</div>
							<ul class="states">
								<li class="error">Error : This is an error placed text message.</li>
								<li class="warning">Warning: This is a warning placed text message.</li>
								<li class="succes">Succes : This is a succes placed text message.</li>
							</ul>
						</article>
					</div>
					<div id="tab-8" class="tab">
						<article>
							<div class="text-section">
								<h1>Dashboard</h1>
								<p>This is a quick overview of some features</p>
							</div>
							<ul class="states">
								<li class="error">Error : This is an error placed text message.</li>
								<li class="warning">Warning: This is a warning placed text message.</li>
								<li class="succes">Succes : This is a succes placed text message.</li>
							</ul>
						</article>
					</div>
				</div>
			</div>
		</div>
		<aside id="sidebar">
			<strong class="logo"><a href="#">lg</a></strong>
			<ul class="tabset buttons">
				<li class="active">
					<a href="#tab-1" class="ico1"><span>查询所有商品</span><em></em></a>
					<span class="tooltip"><span>查询所有商品</span></span>
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