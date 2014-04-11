<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<title>发表新帖</title>
	<link rel="stylesheet" type="text/css" href="css/styles.css">
  </head>
  
<body>
	<center>
		<%@ include file="top.jsp" %>
		<div id="wholePage">
			<div id="currentPoint">
				当前位置:&nbsp;&nbsp;<a class="green" href="action/allPostAction.action">首页</a>&nbsp;&nbsp;--&gt;&nbsp;&nbsp;发表新帖
			</div>				
			<h1>发表新帖</h1>
			<hr width="400"/>
			<s:form action="addPostAction" method="post">
				<s:property value="prompt"/>
				<s:textfield label="标题" name="post.topic" maxlength="50" cssStyle="width:200px;"></s:textfield>
				<s:textarea label="内容" name="post.matter" rows="10" cols="50"></s:textarea>
				<s:submit value="发表"></s:submit>
			</s:form>
		</div>
		<%@ include file="bottom.html" %>
	</center>
</body>
</html>
