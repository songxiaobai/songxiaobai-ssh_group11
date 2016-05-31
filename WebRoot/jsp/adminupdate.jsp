<%@page contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	int goodId = Integer.parseInt(request.getParameter("goodId"));
%>
<html>
	<head>
		<title>GoodInfo查询</title>
		<script type="text/javascript" src="<%=path %>/js/jquery-1.7.2.js"></script>
	</head>
	<body>
		<center>
			<div id="fromTable"></div>
		</center>
	</body>
	<script type="text/javascript">
		var xmlHttp;//定义Ajax的核心对象
		queryObject();
		function queryObject(){
			$(document).ready(function(){
                $.post("<%=path %>/goodInfoActoin_findById.action",{goodId:<%=goodId%>},
                function hasDataToDeal1(data){  //执行Action完成之后返回的内容
                   	   document.getElementById("fromTable").innerHTML = data;
                });
       		 });
			
		}
		function goUpdate(){
			var goodId=f.goodId.value;
			var goodName = f.goodName.value;
			var goodPrice = f.goodPrice.value;
			var goodImg = f.goodImg.value;
			var goodRemark = f.goodRemark.value;
			var goodAdddate = f.goodAdddate.value;
			var abatePrice = f.abatePrice.value;
			$(document).ready(function(){
                $.post("<%=path %>/goodInfoActoin_doUpd.action",{goodName:goodName,goodPrice:goodPrice,goodImg:goodImg,goodRemark:goodRemark,goodAdddate:goodAdddate,abatePrice:abatePrice,goodId:<%=goodId%>},
                function hasDataToDeal1(data){  //执行Action完成之后返回的内容
					if(data == "true"){
						alert("修改成功");
					}else{
						alert("修改失败");
					}
                });
       		 });
		}
		function updateBack(){
			if(xmlHttp.readyState == 4){
				if(resultContent == "true"){
					alert("修改成功");
				}else{
					alert("修改失败");
				}
			}
			
		}
		function goBack(){
			window.dialogArguments.query(0);//刷新之前页面	
			window.close();//关闭当前页面
		}
	
	</script>
</html>
