<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String name=request.getParameter("name");
String password=request.getParameter("password");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/Login_style.css" />
<script type="text/javascript" src="../Javascript/Login_javascript.js"></script>
</head>
<body>
<div class="login_frame"></div>
<div class="LoginWindow">
  <div>
    <form method="post" action="admin1.jsp" onsubmit="return user_input()" class="login">
    <p>
      <label for="login">帐号:</label>
      <input type="text" name="id" id="id" value="">
    </p>

    <p>
      <label for="password">密码:</label>
      <input type="password" name="password" id="password" value="">
    </p>

    <p class="login-submit">
      <button type="submit" class="login-button">登录</button>
    </p>

    </form>
   
  </div>
</div>

<div id="timeArea"><script> LoadBlogParts();</script></div>

<div style="text-align:center;">
</div>

</body>
</html>