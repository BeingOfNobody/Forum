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
					<font style="color: red;font-weight: bold;">�ο�</font>
				</s:else>
				��ӭ���ٻ���BBS
				<a class="blue" href="http://localhost:8080/Forum/enroll.jsp">�û�ע��</a>
				<s:if test="%{#session.loginManager != null}">
					<a class="blue" href="http://localhost:8080/Forum/action/managerExitAction.action">��ȫ�˳�</a>
				</s:if>
				<s:elseif test="%{#session.loginUser != null}">
					<a class="blue" href="http://localhost:8080/Forum/newPost.jsp">��������</a>
					<a class="blue" href="http://localhost:8080/Forum/action/personalInformationAction.action">������Ϣ</a>
					<a class="blue" href="http://localhost:8080/Forum/action/personalPostAction.action">��������</a>
					<a class="blue" href="http://localhost:8080/Forum/action/userExitAction.action">��ȫ�˳�</a>
					<a class="blue" href="http://localhost:8080/Forum/managerLogin.jsp">����Ա��¼</a>
				</s:elseif>
				<s:else>
					<a class="blue" href="http://localhost:8080/Forum/login.jsp">�û���¼</a>
					<a class="blue" href="http://localhost:8080/Forum/managerLogin.jsp">����Ա��¼</a>
				</s:else>
			</div>
			<hr style="width: 900px;"/>
		</div>
	</center>
</body>
</html>
