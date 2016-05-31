<%@ page contentType="text/html; charset=utf-8" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String name = request.getParameter("id");
	String password = request.getParameter("password");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<head>
	<meta charset="utf-8">
	<title>Admin</title>
	<link media="all" rel="stylesheet" type="text/css"
		href="../css/all.css" />
	<script type="text/javascript" src="<%=path%>/js/jquery-1.10.2.js">
</script>
	<script type="text/javascript">
window.jQuery
		|| document
				.write('<script type="text/javascript" src="../js/jquery-1.7.2.min.js"><\/script>');</script>
	<script type="text/javascript" src="../js/jquery.main.js">
</script>
</head>
<body>
	<div id="wrapper">
		<div id="content">
			<div class="c1">
				<div class="controls">
					<nav class="links">
					<ul>
						<li>
							<a href="#" class="ico1">消息 <span class="num">26</span> </a>
						</li>
						<li>
							<a href="#" class="ico2">查看库存 <span class="num">5</span> </a>
						</li>
						<li>
							<a href="#" class="ico3">管理商品 <span class="num">3</span> </a>
						</li>
						<li>
							<a href="#" class="ico3">进货管理 <span class="num">3</span> </a>
						</li>
						<li>
							<a href="#" class="ico3">用户管理 <span class="num">3</span> </a>
						</li>

					</ul>
					</nav>
					<div class="profile-box">
						<span class="profile"> <a href="#" class="section"> <img
									class="image" src="../images/2.JPG" alt="image description"
									width="30" height="30" /> <span class="text-box">欢迎 <strong
									class="name"><%=name%></strong> </span> </a> <a href="#" class="opener"></a>
						</span>
						<a href="admin.jsp" class="btn-on">On</a>
					</div>
				</div>
				<div class="tabs">
					<div id="tab-1" class="tab">
						<article>
						<div class="text-section">
							<link href="../css/common.css" rel="stylesheet" type="text/css">
							<link href="../css/cart.css" rel="stylesheet" type="text/css">
							<div class="container cart">
								<div class="span24">
									<div class="step step1">

									</div>
									<form name="f">
										<center>
											请输入商品类型:
											<input type="text" id="goodType" name="goodType" />
											请输入商品名称:
											<input type="text" id="goodName" name="goodName" />
											<input type="button" value="查询" onClick="query(0)" />
											<input type="button" value="新增" onClick="goadd()" />
										</center>
									</form>
									<div id="table"></div>
									<div
										style="height: 30px; line-height: 30px; margin-bottom: 10px; text-align: center; overflow: hidden; border: 1px dotted #e4e4e4; background-color: #fdfdfd;">
										<input type="button" value="首页" id="fristButton"
											onClick="query(1)" />
										<input type="button" value="上一页" id="upButton"
											onClick="query(2)" />
										<input type="button" value="下一页" id="nextButton"
											onClick="query(3)" />
										<input type="button" value="尾页" id="lastButton"
											onClick="query(4)" />
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
										<script type="text/javascript">
action();
var goodName;
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
function action() {
	$(document)
			.ready(
					function() {
						$
								.post(
										"<%=path%>/goodInfoActoin_findById.action",
										function hasdatatoDeal(data) {
											if (data != null) {
												document
														.getElementById("table").innerHTML = data;
											} else {
												alert("查询失败");
											}
										});
					});
}

function query(a) {
	goodName = document.getElementById("goodName").value;
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
	$(document).ready(function() {
		$.post("<%=path%>/goodInfoActoin_findbyName.action", {
			goodName : goodName,
			pageCurrent : pageCurrent,
			pageSize : pageSize
		}, function hasdatatoDeal(data) {
			if (data != null) {
				//document.getElementsByName("table").innerHTML=data;
				var table = $("table");
				table.empty();
				table.append(data);
				table.show();
			} else {
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
										<script type="text/javascript">
function goadd() {
	window
			.open(
					"add.jsp",
					window,
					"width=400,height=385,top=160,left=80,toolbar=no, menubar=no, scrollbars=no, resizable=no");
}
</script>
										<span id="showMessage"></span>
									</div>
								</div>
							</div>
						</div>
						<ul class="states">
						</ul>
						</article>
					</div>
					<div id="tab-2" class="tab">
						<article>
						<div class="text-section">
							<link href="../css/common.css" rel="stylesheet" type="text/css">
							<link href="../css/cart.css" rel="stylesheet" type="text/css">
							<div class="container cart">
								<div class="span24">
									<div class="step step1">

									</div>
									<form name="f">
									</form>
									<div id="table1"></div>
						
										<script type="text/javascript">
jh();
function jh() {
	$(document)
			.ready(
					function() {
						$
								.post(
										"<%=path%>/goodInfoActoin_findByNa.action",
										function hasdatatoDeal(data) {
											if (data != null) {
												document
														.getElementById("table1").innerHTML = data;
											} else {
												alert("查询失败");
											}
										});
					});
}
function stock(ojb) {
	var goodId = ojb.id;
	var store = document.getElementById("st" + ojb.id).value;
	$(document).ready(function() {
		$.post("<%=path%>/goodInfoActoin_stock.action", {
			goodId : goodId,
			statNum : store
		}, function hasdatatoDeal(data) {
			if (data == "true") {
				alert("进货成功");
				jh();
			} else {
				alert("进货失败，资源不足");
			}
			document.getElementById("table1").innerHTML = data;
		});
	});

}
</script>
									</div>
									</article>
								</div>
								<div id="tab-3" class="tab">
									<article>
									<div class="text-section">
										<link href="../css/common.css" rel="stylesheet"
											type="text/css">
										<link href="../css/cart.css" rel="stylesheet" type="text/css">
										<div class="container cart">
											<div class="span24">
												<div class="step step1">

												</div>
												<script type="text/javascript"
													src="<%=path%>/laydate/laydate.js">
</script>
												<form name="f">
													<center>
														请输入要查询的订单日期:
														<input type="text" id="orderDate" name="goodAdddate"
															onClick="laydate()" />
														<input type="button" value="查询" onClick="find(0)" />
												</form>
												<div id="table2"></div>
												<div
													style="height: 30px; line-height: 30px; margin-bottom: 10px; text-align: center; overflow: hidden; border: 1px dotted #e4e4e4; background-color: #fdfdfd;">
													<input type="button" value="首页" id="fristButton"
														onClick="find(1)" />
													<input type="button" value="上一页" id="upButton"
														onClick="find(2)" />
													<input type="button" value="下一页" id="nextButton"
														onClick="find(3)" />
													<input type="button" value="尾页" id="lastButton"
														onClick="find(4)" />
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
													<script type="text/javascript">
order();
function order() {
	$(document)
			.ready(
					function() {
						$
								.post(
										"<%=path%>/orderActoin_findbyId.action",
										function hasdatatoDeal(data) {
											if (data != null) {
												document
														.getElementById("table2").innerHTML = data;
											} else {
												alert("查询失败");
											}
										});
					});
}
function find(a) {
	orderDate = document.getElementById("orderDate").value;
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
	$(document).ready(function() {
		$.post("<%=path%>/orderActoin_findbydate.action", {
			orderDate : orderDate,
			pageCurrent : pageCurrent,
			pageSize : pageSize
		}, function hasdatatoDeal(data) {
			if (data != null) {
				var table = $("table2");
				table2.empty();
				table2.append(data);
				table2.show();
			} else {
				alert("查询失败");
			}
		});
	});

}
function queryBack() {
	$(document).ready(function(){
                $.post("<%=path%>/orderActoin_findbydate.action",{orderDate : orderDate},
                function hasDataToDeal(data){  //执行Action完成之后返回的内容
                	allSize = data;
                	var a = allSize%pageSize;
					if(a == 0){
						allCurrent = allSize/pageSize;
					}else{
						allCurrent = (allSize-a)/pageSize + 1;
					}
					collBuffon();
                });
       		 });
		}

</script>
													<script type="text/javascript">
function doDel() {
	$(document).ready(function() {
		$.post("<%=path%>/orderActoin_doDel.action", {
			orderId : orderId
		}, function hasdatatoDeal(data) {
			if (data == "true") {
				alert("删除成功");
				order();
			} else {
				alert("删除失败");
			}
		});
	});
}
</script>
													<script type="text/javascript">
function doUpdOrder(orderId, orderState) {
	$(document).ready(function() {
		$.post("<%=path%>/orderActoin_doUpdOrder.action", {
			orderId : orderId,
			orderState : orderState
		}, function hasdatatoDeal(data) {
			if (data == "true") {
				alert("操作成功");
				order();
			} else {
				alert("操作失败");
			}
		});
	});
}
</script>
												</div>

												</article>
											</div>
											<div id="tab-4" class="tab">
												<article>
												<div class="text-section">
													<link href="../css/common.css" rel="stylesheet"
														type="text/css">
													<link href="../css/cart.css" rel="stylesheet"
														type="text/css">
													<div class="container cart">
														<div class="span24">
															<div class="step step1">

															</div>
															<form name="f">
																<center>
																	请输入要查询的用户:
																	<input type="text" name="orderId" />
																	<input type="button" value="查询" />
															</form>
															<div id="table3"></div>
															<div
																style="height: 30px; line-height: 30px; margin-bottom: 10px; text-align: center; overflow: hidden; border: 1px dotted #e4e4e4; background-color: #fdfdfd;">
																<input type="button" value="首页" id="fristButton"
																	onClick="query(1)" />
																<input type="button" value="上一页" id="upButton"
																	onClick="query(2)" />
																<input type="button" value="下一页" id="nextButton"
																	onClick="query(3)" />
																<input type="button" value="尾页" id="lastButton"
																	onClick="query(4)" />
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
																<script type="text/javascript">
user();
function user() {
	$(document)
			.ready(
					function() {
						$
								.post(
										"<%=path%>/userActoin_findbyAll.action",
										function hasdatatoDeal(data) {
											if (data != null) {
												document
														.getElementById("table3").innerHTML = data;
											} else {
												alert("查询失败");
											}
										});
					});
}
</script>
																<script type="text/javascript">
function UpdState(userId, userState) {
	$(document).ready(function() {
		$.post("<%=path%>/userActoin_doUpdUser.action", {
			userId : userId,
			userState : userState
		}, function hasdatatoDeal(data) {
			if (data == "true") {
				alert("操作成功");
				user();
			} else {
				alert("操作失败");
			}
		});
	});
}
</script>
															</div>
															</article>
														</div>
														<div id="tab-5" class="tab">
															<article>
															<div class="text-section">
																<link href="../css/common.css" rel="stylesheet"
																	type="text/css">
																<link href="../css/cart.css" rel="stylesheet"
																	type="text/css">
																<div class="container cart">
																	<div class="span24">
																		<div class="step step1">

																		</div>
																		<form name="f">
																		</form>
																		<div id="table4"></div>
																		总收入:
																		<input type="text" id="txt" />
																		<script type="text/javascript">
his();
function his() {
	$(document)
			.ready(
					function() {
						$
								.post(
										"<%=path%>/hisActoin_findbyHis.action",
										function hasdatatoDeal(data) {
											if (data != null) {
												document
														.getElementById("table4").innerHTML = data;
											} else {
												alert("查询失败");
											}
										});
					});
}
</script>
																	</div>

																	</article>
																</div>
																<div id="tab-6" class="tab">
																	<article>
																	<div class="text-section">

																	</div>

																	</article>
																</div>
																<div id="tab-7" class="tab">
																	<article>
																	<div class="text-section">

																	</div>

																	</article>
																</div>
																<div id="tab-8" class="tab">
																	<article>
																	<div class="text-section">

																	</div>

																	</article>
																</div>
															</div>
														</div>
													</div>
													<aside id="sidebar">
													<strong class="logo"><a href="#">lg</a> </strong>
													<ul class="tabset buttons">
														<li class="active">
															<a href="#tab-1" class="ico1"><span>查询所有商品</span><em></em>
															</a>
															<span class="tooltip"><span>查询所有商品</span> </span>
														</li>
														<li>
															<a href="#tab-2" class="ico2"><span>进货管理</span><em></em>
															</a>
															<span class="tooltip"><span>进货管理</span> </span>
														</li>
														<li>
															<a href="#tab-3" class="ico3"><span>订单管理</span><em></em>
															</a>
															<span class="tooltip"><span>订单管理</span> </span>
														</li>
														<li>
															<a href="#tab-4" class="ico4"><span>用户管理</span><em></em>
															</a>
															<span class="tooltip"><span>用户管理</span> </span>
														</li>
														<li>
															<a href="#tab-5" class="ico5"><span>资金管理</span><em></em>
															</a>
															<span class="tooltip"><span>资金管理</span> </span>
														</li>
														<li>
															<a href="#tab-6" class="ico6"> <span>Comments</span><em></em>
															</a>

															<span class="tooltip"><span>Comments</span> </span>
														</li>
														<li>
															<a href="#tab-7" class="ico7"><span>Plug-in</span><em></em>
															</a>
															<span class="tooltip"><span>Plug-in</span> </span>
														</li>
														<li>
															<a href="#tab-8" class="ico8"><span>设置</span><em></em>
															</a>
															<span class="tooltip"><span>设置</span> </span>
														</li>
													</ul>
													<span class="shadow"></span>
													</aside>
												</div>
</body>
</html>