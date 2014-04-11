<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<title>用户注册</title>
	<link rel="stylesheet" type="text/css" href="css/styles.css">
  	<s:head theme="ajax"/>
  </head>
  
<body>
	<center>
		<%@ include file="top.jsp" %>
		<div id="wholePage">
			<div id="currentPoint">
				当前位置:&nbsp;&nbsp;<a class="green" href="action/allPostAction.action">首页</a>&nbsp;&nbsp;--&gt;&nbsp;&nbsp;用户注册
			</div>
			<h1>用户注册</h1>
			<hr width="400"/>
			<s:form action="enrollAction" method="post">
				<s:textfield label="用户名" name="user.userName" maxlength="16"></s:textfield>
				<s:password label="密码" name="user.userPassword" maxlength="12"></s:password>
				<s:password label="重复密码" name="userRePassword" maxlength="12"></s:password>
				<s:textfield label="昵称" name="user.userNickname" maxlength="10"></s:textfield>
				<s:datetimepicker label="生日" name="user.userBirthday" displayFormat="yyyy-MM-dd"></s:datetimepicker>
				<s:select label="性别" name="user.sex" list="#{'1':'男','2':'女'}"></s:select>
				<s:textfield label="邮箱" name="user.userEmail"></s:textfield>
				<s:submit value="注册"></s:submit>
			</s:form>
		</div>
		<%@ include file="bottom.html" %>
	</center>
</body>
</html>
