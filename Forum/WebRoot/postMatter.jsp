<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<title><s:property value="post.topic"/></title>
	<link rel="stylesheet" type="text/css" href="../css/styles.css">
  </head>
  
<body>
	<center>
		<%@ include file="top.jsp" %>
		<div id="wholePage">
			<div id="currentPoint">
				��ǰλ��:&nbsp;&nbsp;<a class="green" href="allPostAction.action">��ҳ</a>&nbsp;&nbsp;--&gt;&nbsp;&nbsp;<s:property value="post.topic"/>
			</div>
			<hr width="400"/>
			<ul class="postMatter">
				<li class="postTopic">
					���⣺<s:property value="post.topic"/>
				</li>
				<li class="postAuthor">
					���ߣ�<a class="green" href="userInformationAction.action?userId=<s:property value="post.user.userId"/>"><s:property value="post.user.userNickname"/></a>
				</li>
				<li class="authorPoints">
					���֣�<s:property value="post.user.userPoints"/>
				</li>
				<li class="postTime">
					ʱ�䣺<s:date name="post.postTime" format="yyyy-MM-dd HH:mm:ss"/>
				</li>
				<li class="postMatter">
					����: <textarea rows="10" cols="50" readonly="readonly" style="vertical-align: top"><s:property value="post.matter"/></textarea>
				</li>
			</ul>
		</div>
		<%@ include file="bottom.html" %>
	</center>
</body>
</html>
