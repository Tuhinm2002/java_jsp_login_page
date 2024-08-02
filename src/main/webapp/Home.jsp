<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page isELIgnored="false" %>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

response.setHeader("Cache-Control", "no-cache, no-store, must-validate");

if(session.getAttribute("user")==null){
	response.sendRedirect("Login.jsp");
}

%>
Welcome... ${user}
<a href="Video.jsp">Videos here</a> <br/>

<form action="Logout">
	<input type="submit" value="Logout">
</form>

</body>
</html>