<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<title>用户登录</title>
	<link rel="stylesheet" type="text/css" href="css/styles.css">
  </head>
  
<body>
	<center>
		<%@ include file="top.jsp" %>
		<div id="wholePage">
			<div id="currentPoint">
				当前位置:&nbsp;&nbsp;<a class="green" href="action/allPostAction.action">首页</a>&nbsp;&nbsp;--&gt;&nbsp;&nbsp;用户登录
			</div>
			<h1>用户登录</h1>
			<hr width="400"/>
			<s:form action="loginAction" method="post">
				<s:textfield label="用户名" name="user.userName" maxlength="16"></s:textfield>
				<s:password label="密码" name="user.userPassword" maxlength="12"></s:password>
				<s:submit value="登录"></s:submit>
			</s:form>
		</div>
		<%@ include file="bottom.html" %>
	</center>
</body>
</html>
