<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

response.setHeader("Cache-Control", "no-cache, no-store, must-validate");

if(session.getAttribute("user") == null){
	response.sendRedirect("Login.jsp");
}
%>

<iframe width="560" height="315" src="https://www.youtube.com/embed/dQw4w9WgXcQ?si=pZ5igW-8VhBEqH4q" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
</body>
</html>