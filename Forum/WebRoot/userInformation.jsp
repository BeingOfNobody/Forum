<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<title><s:property value="user.userName"/>的信息</title>
	<link rel="stylesheet" type="text/css" href="../css/styles.css">
  	<s:head theme="ajax"/>
  </head>
  
<body>
	<center>
		<%@ include file="top.jsp" %>
		<div id="wholePage">
			<div id="currentPoint">
				当前位置:&nbsp;&nbsp;<a class="green" href="allPostAction.action">首页</a>&nbsp;&nbsp;--&gt;&nbsp;&nbsp;<s:property value="user.userName"/>的信息
			</div>
			<h1><s:property value="user.userName"/>的信息</h1>
			<hr width="400"/>
			<s:form>
				<s:label label="用户名" name="user.userName"></s:label>
				<s:textfield label="昵称" name="user.userNickname"></s:textfield>
				<s:datetimepicker label="生日" name="user.userBirthday" displayFormat="yyyy-MM-dd"></s:datetimepicker>
				<s:select label="性别" name="user.sex" list="#{'1':'男','2':'女'}"></s:select>
				<s:textfield label="邮箱" name="user.userEmail"></s:textfield>
				<s:textarea label="简介" name="user.userRemark"></s:textarea>
			</s:form>
		</div>
		<%@ include file="bottom.html" %>
	</center>
</body>
</html>
