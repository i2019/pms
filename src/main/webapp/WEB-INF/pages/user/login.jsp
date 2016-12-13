<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/pages/base.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title><spring:message code="system.PMS"/></title>
</head>
<body>
<div class="header">
	<div class="header_title">
		<span class="title_con"><spring:message code="system.PMS"/></span>
	</div>
</div>

<form action="user_login" method="post">
<div class="content">
	<center>
		<div class="con">
			<div class="con_title">
				<span class="con_title_sp"><spring:message code="system.PMS"/></span>
			</div>
			<div class="con_panel">
				<div class="con_input">
					<span><spring:message code="system.user.UserName"/></span>
					<input name="username" type="text"/>
				</div>
				<div class="con_input">
					<span><fmt:message key="system.user.Password"/> &nbsp;&nbsp;</span>
					<input  name="password" type="password"/>
				</div>
				<div class="con_input">
					<img alt="random" src="randomcode.jpg" onclick="changeR(this)" style="cursor: pointer;">
				    <input class="verification" name="r" type="text"/>
				</div>
				<input type="submit" value="<spring:message code="system.user.Login"/>" class="submit-btn"/>
			</div>
			
		</div>
	</center>
</div>
</form>

<div id="footer"> <tiles:insertAttribute name="foot" /></div>			
				
</body>
<script type="text/javascript">
	function changeR(node){
		// 用于点击时产生不同的验证码
		node.src = "randomcode.jpg?time="+new Date().getTime() ;	
	}
</script>
</html>
