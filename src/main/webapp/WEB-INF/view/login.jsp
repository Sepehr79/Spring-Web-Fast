<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Login</title>
</head>
<body>
	
	<h3>My custom login</h3>
	
	<!-- For csrf you can use spring form tags or add csrf input -->
	
	<form action="${pageContext.request.contextPath }/processLogin">
	
	
	<%
		//if(request.getParameter("error") != null){
	%>
	<!--  <i>Sorry! you entered wrong username or password error  </i>-->
	<%
		//}
	%>
	 
	
	
	<c:if test="${param.error != null}">
		<i style="color: red;">Sorry! you entered wrong username or password</i>
	</c:if>
	
		<p>
			User name: <input type="text" name="username" />
		</p>
		<p>
			password: <input type="password" name="password" />
		</p>
		
		<input type="submit" value="login"/>
		
		 <input type="hidden" name="${_csrf.parrameterName}" 
		value="${_csrf.tokkn}" /> 
		
	</form>
	
</body>
</html>