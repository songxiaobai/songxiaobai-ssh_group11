<%@page contentType="text/html; charset=utf-8"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>
<html>
	<head>
		<title>GoodInfo新增</title>
		<script type="text/javascript" src="../js/jquery-1.7.2.min.js"></script>
		<script type="text/javascript" src="<%=path %>/laydate/laydate.js"></script>
	</head>
	<body>
		<center>
			<form name="f" >
				<input type="hidden" name="type" value="1" />
				<table>
					<tr>
						<td align="right" >
							商品名称：
						</td>
						<td>
							<input type="text" name="goodName" />
						</td>
					</tr>
					<tr>
						<td align="right">
							商品价格：
						</td>
						<td>
							<input type="text" name="goodPrice" />
						</td>
					</tr>
					<tr>
						<td align="right">
							商品图像：
						</td>
						<td>
							<input type="file" name="goodImg" />
						</td>
					</tr>
					<tr>
						<td align="right">
							产品介绍：
						</td>
						<td>
							<input type="text" name="goodRemark" />
						</td>
					</tr>
					<tr>
						<td align="right">
							上架日期：
						</td>
						<td>
							<input type="text" name="goodAdddate" onClick="laydate()"/>
						</td>
					</tr>
					<tr>
						<td align="right">
							折后价格：
						</td>
						<td>
							<input type="text" name="abatePrice" />
						</td>
					</tr>
					<tr>
						<td align="right">
							商品库存：
						</td>
						<td>
							<input type="text" name="goodStat" />
						</td>
					</tr>
					
					<tr>
						<td colspan="2">
							<input type="button" value="确定" onClick="goSure()"/>
							<input type="button" value="返回" onClick="goBack()" />
						</td>
					</tr>
				</table>
			</form>
		</center>
	</body>
	<script type="text/javascript">
		function goSure(){
		var goodName = f.goodName.value;
		var goodPrice = f.goodPrice.value;
		var goodImg = f.goodImg.value;
		var goodRemark = f.goodRemark.value;
		var goodAdddate = f.goodAdddate.value;
		var abatePrice = f.abatePrice.value;
		var goodStat = f.goodStat.value;
		$(document).ready(function(){
		$.post("<%=path%>/goodInfoActoin_doIns.action",{goodName:goodName,goodPrice:goodPrice,goodImg:goodImg,goodRemark:goodRemark,goodAdddate:goodAdddate,abatePrice:abatePrice,goodStat:goodStat},
		function hasDateToDeal(data){
		if(data == "true"){
		alert("新增成功");
		}else{
		alert("新增失败");
		}
		});
		});
		}
		function goBack(){
		window.opener.location.href=window.opener.location.href; 
		window.close(); 
		}
	</script>
	
	
</html>
