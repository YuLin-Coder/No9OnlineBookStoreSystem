<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>网上书城管理员登录页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="<c:url value='/jquery/jquery-1.5.1.js'/>"></script>
	<script type="text/javascript">
		function checkForm() {
			if(!$("#adminname").val()) {
				alert("管理员名称不能为空！");
				return false;
			}
			if(!$("#adminpwd").val()) {
				alert("管理员密码不能为空！");
				return false;
			}
			return true;
		}
	</script>
  </head>
  
  <body>

  <p style="font-weight: 900; color: red">${msg }</p>
<form action="<c:url value='/AdminServlet'/>" method="post" onsubmit="return checkForm()" target="_top">
	<input type="hidden" name="method" value="login"/>	
	<div style="margin-left: 740px; margin-top:255px; z-index: 99;position: absolute;"><input type="text" name="adminname" value="" id="adminname" style="border-style: none; width: 250px;height: 25px"/></div>
	<div style="margin-left: 740px; margin-top:325px; z-index: 98;position: absolute;"><input type="password" name="adminpwd" id="adminpwd" style="border-style: none; width: 250px;height: 25px"/></div>
	<div style="margin-left: 1027px; margin-top:250px; z-index: 97;position: absolute;"><input type="submit" value="进入后台" style="border-style: none; width: 107px;height: 105px;"/></div>
</form>
<div style="z-index: -1; position: absolute;">
<img src="1.jpg"></img>
</div>
  </body>
</html>
