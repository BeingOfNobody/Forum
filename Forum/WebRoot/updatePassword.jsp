<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<title>密码修改</title>
	<link rel="stylesheet" type="text/css" href="css/styles.css">
  </head>
  
<body>
	<center>
		<%@ include file="top.jsp" %>
		<div id="wholePage">
			<div id="currentPoint">
				当前位置:&nbsp;&nbsp;<a class="green" href="action/allPostAction.action">首页</a>&nbsp;&nbsp;--&gt;&nbsp;&nbsp;密码修改
			</div>
			<h1>密码修改</h1>
			<hr width="400"/>
			<s:form action="updatePasswordAction" method="post">
				<s:password label="旧密码" name="userPassword" maxlength="12"></s:password>
				<s:password label="新密码" name="userNewPassword" maxlength="12"></s:password>
				<s:password label="重复新密码" name="userRePassword" maxlength="12"></s:password>
				<s:submit value="修改"></s:submit>
			</s:form>
		</div>
		<%@ include file="bottom.html" %>
	</center>
</body>
</html>
