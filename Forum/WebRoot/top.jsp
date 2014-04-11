<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  </head>
  
<body>
	<center>
		<div id="top">
			<img src="http://localhost:8080/Forum/image/forum.jpg" style="float:left;width: 200px;height: 140px;"/>
			<div style="width: 690px;padding-top: 100px;float: left;height: 140px;">
				<s:if test="%{#session.loginManager != null}">
					<font style="color: green;font-weight: bold;"><s:property value="#session.loginManager.managerName"/></font>
				</s:if>
				<s:elseif test="%{#session.loginUser != null}">
					<font style="color: green;font-weight: bold;"><s:property value="#session.loginUser.userNickname"/></font>
				</s:elseif>
				<s:else>
					<font style="color: red;font-weight: bold;">游客</font>
				</s:else>
				欢迎光临汇智BBS
				<a class="blue" href="http://localhost:8080/Forum/enroll.jsp">用户注册</a>
				<s:if test="%{#session.loginManager != null}">
					<a class="blue" href="http://localhost:8080/Forum/action/managerExitAction.action">安全退出</a>
				</s:if>
				<s:elseif test="%{#session.loginUser != null}">
					<a class="blue" href="http://localhost:8080/Forum/newPost.jsp">发表新帖</a>
					<a class="blue" href="http://localhost:8080/Forum/action/personalInformationAction.action">个人信息</a>
					<a class="blue" href="http://localhost:8080/Forum/action/personalPostAction.action">管理帖子</a>
					<a class="blue" href="http://localhost:8080/Forum/action/userExitAction.action">安全退出</a>
					<a class="blue" href="http://localhost:8080/Forum/managerLogin.jsp">管理员登录</a>
				</s:elseif>
				<s:else>
					<a class="blue" href="http://localhost:8080/Forum/login.jsp">用户登录</a>
					<a class="blue" href="http://localhost:8080/Forum/managerLogin.jsp">管理员登录</a>
				</s:else>
			</div>
			<hr style="width: 900px;"/>
		</div>
	</center>
</body>
</html>
