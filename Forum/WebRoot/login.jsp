<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<title>�û���¼</title>
	<link rel="stylesheet" type="text/css" href="css/styles.css">
  </head>
  
<body>
	<center>
		<%@ include file="top.jsp" %>
		<div id="wholePage">
			<div id="currentPoint">
				��ǰλ��:&nbsp;&nbsp;<a class="green" href="action/allPostAction.action">��ҳ</a>&nbsp;&nbsp;--&gt;&nbsp;&nbsp;�û���¼
			</div>
			<h1>�û���¼</h1>
			<hr width="400"/>
			<s:form action="loginAction" method="post">
				<s:textfield label="�û���" name="user.userName" maxlength="16"></s:textfield>
				<s:password label="����" name="user.userPassword" maxlength="12"></s:password>
				<s:submit value="��¼"></s:submit>
			</s:form>
		</div>
		<%@ include file="bottom.html" %>
	</center>
</body>
</html>
