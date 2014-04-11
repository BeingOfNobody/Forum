<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>汇智BBS</title>
	<link rel="stylesheet" type="text/css" href="../css/styles.css">

  </head>
  
<body>
	<center>
		<%@ include file="top.jsp" %>
		<div id="wholePage">
			<div id="currentPoint">
				当前位置:&nbsp;&nbsp;<a class="green" href="allPostAction.action">首页</a>&nbsp;&nbsp;--&gt;&nbsp;&nbsp;管理帖子
			</div>
			<ul class="singlePost">
				<li class="sequence">序列</li>
				<li class="topic" style="text-align: center;">标题</li>
				<li class="author">作者</li>
				<li class="date">日期</li>
				<li class="delete">日期</li>
			</ul>
			<s:iterator value="personalPost" status="st">
				<ul class="singlePost">
					<li class="sequence">
						<s:property value="#st.getIndex()+1+(pageNumber-1)*pageSize"/>
					</li>
					<li class="topic">
						<a class="maroon" href="postMatterAction.action?postId=<s:property value="postId"/>"><s:property value="topic"/></a>
					</li>
					<li class="author">
						<a class="green" href="personalInformationAction.action"><s:property value="user.userNickname"/></a>
					</li>
					<li class="date">
						<s:date name="postTime" format="yyyy-MM-dd HH:mm:ss"/>
					</li>
					<li class="delete">
						<a href="deleteMyPostAction.action?postId=<s:property value="postId"/>&pageNumber=<s:property value="pageNumber"/>">删除</a>
					</li>
				</ul>				
			</s:iterator>
			<ul class="singlePost">
				<li class="postPaging">
					<s:property value="pageNumber"/>/<s:property value="totalPage"/>
					<a class="maroon" href="personalPostAction.action?pageNumber=1">首页</a>
					<a class="maroon" href="personalPostAction.action?pageNumber=<s:property value="pageNumber-1"/>">上一页</a>
					<a class="maroon" href="personalPostAction.action?pageNumber=<s:property value="pageNumber+1"/>">下一页</a>
					<a class="maroon" href="personalPostAction.action?pageNumber=<s:property value="totalPage"/>">末页</a>
				</li>
			</ul>
		</div>
		<%@ include file="bottom.html" %>		
	</center>
</body>
</html>
