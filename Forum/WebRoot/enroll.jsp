<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<title>�û�ע��</title>
	<link rel="stylesheet" type="text/css" href="css/styles.css">
  	<s:head theme="ajax"/>
  </head>
  
<body>
	<center>
		<%@ include file="top.jsp" %>
		<div id="wholePage">
			<div id="currentPoint">
				��ǰλ��:&nbsp;&nbsp;<a class="green" href="action/allPostAction.action">��ҳ</a>&nbsp;&nbsp;--&gt;&nbsp;&nbsp;�û�ע��
			</div>
			<h1>�û�ע��</h1>
			<hr width="400"/>
			<s:form action="enrollAction" method="post">
				<s:textfield label="�û���" name="user.userName" maxlength="16"></s:textfield>
				<s:password label="����" name="user.userPassword" maxlength="12"></s:password>
				<s:password label="�ظ�����" name="userRePassword" maxlength="12"></s:password>
				<s:textfield label="�ǳ�" name="user.userNickname" maxlength="10"></s:textfield>
				<s:datetimepicker label="����" name="user.userBirthday" displayFormat="yyyy-MM-dd"></s:datetimepicker>
				<s:select label="�Ա�" name="user.sex" list="#{'1':'��','2':'Ů'}"></s:select>
				<s:textfield label="����" name="user.userEmail"></s:textfield>
				<s:submit value="ע��"></s:submit>
			</s:form>
		</div>
		<%@ include file="bottom.html" %>
	</center>
</body>
</html>
