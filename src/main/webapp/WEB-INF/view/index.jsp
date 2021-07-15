<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
    
    
<html>
<head>
<meta charset="utf-8">
<title>My Company</title>
</head>
<body>
	<p>Hello world!!!!!</p>
	
	<form:form action="${pageContext.request.contextPath}/logout" method="post">
		<input type="submit" value="logout">
	</form:form>
	
	<hr>
	
	<p>
		<a href="${pageContext.request.contextPath}/leaders">Leaders</a>(Only for leaders)
	</p>
	
		<p>
		<a href="${pageContext.request.contextPath}/systems">Systems</a>(Only for managers)
	</p>
	
	<hr>
	
	<hr>
	
	<p>
		User: <security:authentication property="principal.username"/>
	</p>
	<p>
		Role(s): <security:authentication property="principal.authorities"/>
	</p>
	
	<hr>
	
</body>
</html>