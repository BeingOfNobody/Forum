<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<title>������Ϣ</title>
	<link rel="stylesheet" type="text/css" href="css/styles.css">
  	<s:head theme="ajax"/>
  </head>
  
<body>
	<center>
		<%@ include file="top.jsp" %>
		<div id="wholePage">
			<div id="currentPoint">
				��ǰλ��:&nbsp;&nbsp;<a class="green" href="action/allPostAction.action">��ҳ</a>&nbsp;&nbsp;--&gt;&nbsp;&nbsp;������Ϣ
			</div>
			<h1>������Ϣ</h1>
			<hr width="400"/>
			<s:form action="personalManageAction" method="post">
				<s:label label="�û���" value="%{#session.loginUser.userName}" ></s:label>
				<s:textfield label="�ǳ�" name="user.userNickname" value="%{#session.loginUser.userNickname}" maxlength="10"></s:textfield>
				<s:datetimepicker label="����" name="user.userBirthday" value="%{#session.loginUser.userBirthday}" displayFormat="yyyy-MM-dd"></s:datetimepicker>
				<s:select label="�Ա�" name="user.sex" value="%{#session.loginUser.sex}" list="#{'1':'��','2':'Ů'}"></s:select>
				<s:textfield label="����" name="user.userEmail" value="%{#session.loginUser.userEmail}"></s:textfield>
				<s:textarea label="���" name="user.userRemark" value="%{#session.loginUser.userRemark}"></s:textarea>
				<s:submit value="�޸�"></s:submit>
			</s:form>
			<a class="maroon" href="updatePassword.jsp">�޸�����</a>
		</div>
		<%@ include file="bottom.html" %>
	</center>
</body>
</html>
