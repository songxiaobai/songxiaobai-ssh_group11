<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<html>
<head>
<script type="text/javascript" src="../Javascript/Login_javascript.js"></script>
<meta charset="utf-8"/>
<title>供应商</title>
<meta name="author" content="DeathGhost" />
<link rel="stylesheet" type="text/css" href="../css/gys.css" />
<!--[if lt IE 9]>
<script src="../js/html5.js"></script>
<![endif]-->
<script src="../js/jquery.js"></script>
<script src="../js/jquery.mCustomScrollbar.concat.min.js"></script>

</head>
<body>
<!--header-->
<header>
 <h1><img src="../images/admin_logo.png"/></h1>
 <ul class="rt_nav">
  <li><a href="http://www.baidu.com" target="_blank" class="website_icon">供应商首页</a></li>
  <li><a href="login.php" class="quit_icon">退出</a></li>
 </ul>
</header>

<!--aside nav-->
<aside class="lt_aside_nav content mCustomScrollbar">
 <h2><a href="index.php">起始页</a></h2>
 <ul>
  <li>
   <dl>
    <dt>供应商</dt>
    <!--当前链接则添加class:active-->
    <dd><a href="#" class="active">供应商信息</a></dd>
   </dl>
  </li>

 </ul>
</aside>

<section class="rt_wrap content mCustomScrollbar">
 <div class="rt_content">
<link href="../css/common.css" rel="stylesheet" type="text/css">
		<link href="../css/cart.css" rel="stylesheet" type="text/css">
		<div class="container cart">
		<div class="span24">
			<div class="step step1">
				
			</div>
      <form name="f">
			<center>
			请输入供应商名称:
			<input type="text" id = "gysName" name="gysName"/>
			<input type="button" value="查询" onClick="query(0)" /></center>
			</form>
			<div id="table"></div>
				<div style="height: 30px;line-height: 30px;margin-bottom: 10px;text-align: center;overflow: hidden;border: 1px dotted #e4e4e4;background-color: #fdfdfd;">
				<input type="button" value="首页" id="fristButton" onClick="query(1)"/>
				<input type="button" value="上一页" id="upButton" onClick="query(2)"/>
				<input type="button" value="下一页" id="nextButton" onClick="query(3)"/>
				<input type="button" value="尾页" id="lastButton" onClick="query(4)"/>
				显示笔数
			<select id="pageSize" onchange="query(5)">
				<option value="3" selected>
					3
				</option>
				<option value="5">
					5
				</option>
				<option value="10">
					10
				</option>
			</select>

     <section>
      <ul class="admin_tab">
      
 </div>
</section>
</body>
<script type="text/javascript">
gys();
var gysName;
var pageSize = 3;//数据笔数
var pageCurrent = 1;//显示的页数
var xmlhttp;
var pageCount = 0;//总页数
var allCount = 0;//数据总笔数
function createXMLHTTP() {
	if (window.XMLHttpRequest) {
		xmlhttp = new XMLHttpRequest();
	} else {
		xmlhttp = new ActiveObject('Microsoft.XMLHttp');
	}
}
function gys(){
	$(document).ready(function(){
		$.post("<%=path%>/gysActoin_findByName.action",
		function hasdatatoDeal(data){
			if(data !=null){
				document.getElementById("table").innerHTML=data;
			}else{
				alert("查询失败");
			}
		});
	});
}
function query(a) {
	gysName = document.getElementById("gysName").value;
	if (a == 0) {
		pageCurrent = 1;
	} else if (a == 1) {
		pageCurrent = 1;
	} else if (a == 2) {
		pageCurrent = pageCurrent - 1;
	} else if (a == 3) {
		pageCurrent = pageCurrent + 1;
	} else if (a == 4) {
		pageCurrent = pageCount;
	} else if (a == 5) {
		pageCurrent = 1;
		pageSize = document.getElementById("pageSize").value;
	}
		$(document).ready(function(){
		$.post("<%=path%>/gysActoin_findbyName.action",{gysName:gysName,pageCurrent:pageCurrent,pageSize:pageSize},
		function hasdatatoDeal(data){
			if(data !=null){
				//document.getElementsByName("table").innerHTML=data;
				var table = $("table");
				table.empty();
				table.append(data);
				table.show();
			}else{
				alert("查询失败");
			}
		});
	});
		
}
function queryBack() {
	if (xmlhttp.readyState == 4) {
		var content = xmlhttp.responseText;
		document.getElementById("table").innerHTML = content;
		collBuffon();
	}
}
function collBuffon() {
	allCount = document.getElementById("count").value;
	//取得总页数
	if (allCount % pageSize == 0) {
		pageCount = allCount / pageSize;
	} else {
		var c = allCount % pageSize;
		pageCount = (allCount - c) / pageSize + 1;
	}
	if (pageCurrent == 1 && pageCount != 1) {
		document.getElementById("first").disabled = true;//首页按钮不可用
		document.getElementById("up").disabled = true;
		document.getElementById("next").disabled = false;
		document.getElementById("last").disabled = false;
	} else if (pageCount == 1) {
		document.getElementById("first").disabled = true;//首页按钮不可用
		document.getElementById("up").disabled = true;
		document.getElementById("next").disabled = true;
		document.getElementById("last").disabled = true;
	} else if (pageCurrent == pageCount && pageCurrent != 1) {
		document.getElementById("first").disabled = false;
		document.getElementById("up").disabled = false;
		document.getElementById("next").disabled = true;
		document.getElementById("last").disabled = true;
	} else {
		document.getElementById("first").disabled = false;
		document.getElementById("up").disabled = false;
		document.getElementById("next").disabled = false;
		document.getElementById("last").disabled = false;
	}
	document.getElementById("showMessage").innerHTML = "<font color='blue'>当前第"
			+ pageCurrent + "页,总共" + pageCount + "页,总共" + allCount
			+ "笔数据</font>";
			}
			
	</script>
</script>
</html>
