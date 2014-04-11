<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<title>个人信息</title>
	<link rel="stylesheet" type="text/css" href="css/styles.css">
  	<s:head theme="ajax"/>
  </head>
  
<body>
	<center>
		<%@ include file="top.jsp" %>
		<div id="wholePage">
			<div id="currentPoint">
				当前位置:&nbsp;&nbsp;<a class="green" href="action/allPostAction.action">首页</a>&nbsp;&nbsp;--&gt;&nbsp;&nbsp;个人信息
			</div>
			<h1>个人信息</h1>
			<hr width="400"/>
			<s:form action="personalManageAction" method="post">
				<s:label label="用户名" value="%{#session.loginUser.userName}" ></s:label>
				<s:textfield label="昵称" name="user.userNickname" value="%{#session.loginUser.userNickname}" maxlength="10"></s:textfield>
				<s:datetimepicker label="生日" name="user.userBirthday" value="%{#session.loginUser.userBirthday}" displayFormat="yyyy-MM-dd"></s:datetimepicker>
				<s:select label="性别" name="user.sex" value="%{#session.loginUser.sex}" list="#{'1':'男','2':'女'}"></s:select>
				<s:textfield label="邮箱" name="user.userEmail" value="%{#session.loginUser.userEmail}"></s:textfield>
				<s:textarea label="简介" name="user.userRemark" value="%{#session.loginUser.userRemark}"></s:textarea>
				<s:submit value="修改"></s:submit>
			</s:form>
			<a class="maroon" href="updatePassword.jsp">修改密码</a>
		</div>
		<%@ include file="bottom.html" %>
	</center>
</body>
</html>
