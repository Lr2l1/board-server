<%@page import="java.util.List"%>
<%@ page import="java.sql.Connection"%>
<%@page import="boardServer.user.UserResponseDto"%>
<%@page import="boardServer.user.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:include page="/header"></jsp:include>
<body>
	<section id="root">
		<%
		// JSP 내장객체 유효기간 (Scope)
		pageContext.setAttribute("test", "page data");
		request.setAttribute("test", "request data");
		session.setAttribute("test", "session data");
		application.setAttribute("test", "application data");

		//페이지 이동처리 1)
		// 단순 페이지 이동처리 (url의 변화 o)
		//response.sendRedirect("test.jsp");

		// 페이지 이동처리 2)
		// request & response 객체를 전달하면서 이동처리(url의 변화 x)
		request.getRequestDispatcher("test1.jsp").forward(request, response);
		%>
	</section>

</body>
</html>