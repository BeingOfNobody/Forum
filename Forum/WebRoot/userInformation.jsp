<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<title><s:property value="user.userName"/>����Ϣ</title>
	<link rel="stylesheet" type="text/css" href="../css/styles.css">
  	<s:head theme="ajax"/>
  </head>
  
<body>
	<center>
		<%@ include file="top.jsp" %>
		<div id="wholePage">
			<div id="currentPoint">
				��ǰλ��:&nbsp;&nbsp;<a class="green" href="allPostAction.action">��ҳ</a>&nbsp;&nbsp;--&gt;&nbsp;&nbsp;<s:property value="user.userName"/>����Ϣ
			</div>
			<h1><s:property value="user.userName"/>����Ϣ</h1>
			<hr width="400"/>
			<s:form>
				<s:label label="�û���" name="user.userName"></s:label>
				<s:textfield label="�ǳ�" name="user.userNickname"></s:textfield>
				<s:datetimepicker label="����" name="user.userBirthday" displayFormat="yyyy-MM-dd"></s:datetimepicker>
				<s:select label="�Ա�" name="user.sex" list="#{'1':'��','2':'Ů'}"></s:select>
				<s:textfield label="����" name="user.userEmail"></s:textfield>
				<s:textarea label="���" name="user.userRemark"></s:textarea>
			</s:form>
		</div>
		<%@ include file="bottom.html" %>
	</center>
</body>
</html>
