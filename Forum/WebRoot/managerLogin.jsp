<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<title>����Ա��¼</title>
	<link rel="stylesheet" type="text/css" href="css/styles.css">
  </head>
  
<body>
	<center>
		<%@ include file="top.jsp" %>
		<div id="wholePage">
			<div id="currentPoint">
				��ǰλ��:&nbsp;&nbsp;<a class="green" href="action/allPostAction.action">��ҳ</a>&nbsp;&nbsp;--&gt;&nbsp;&nbsp;����Ա��¼
			</div>
			<h1>����Ա��¼</h1>
			<hr width="400"/>
			<s:form action="managerLoginAction" method="post">
				<s:textfield label="�û���" name="manager.managerName" maxlength="16"></s:textfield>
				<s:password label="����" name="manager.managerPassword" maxlength="12"></s:password>
				<s:submit value="��¼"></s:submit>
			</s:form>
		</div>
		<%@ include file="bottom.html" %>
	</center>
</body>
</html>
