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
String pageData = (String) pageContext.getAttribute("test");
String requestData = (String) request.getAttribute("test");
String sessionDate = (String) session.getAttribute("test");
String applicationData = (String) application.getAttribute("test");

out.print(String.format("pageData : <p>%s</p>",pageData));
out.print(String.format("requestData : <p>%s</p>",requestData));
out.print(String.format("sessionDate : <p>%s</p>",sessionDate));
out.print(String.format("applicationData : <p>%s</p>",applicationData));
%>

<!-- JSP EL(Expression Language) Tag -->
<p>${pageScope.test}</p>
<p>${requestScope.test}</p>
<p>${sessionScope.test}</p>
<p>${applicationScope.test}</p><br>

<!-- Default 참조영역 황인용 : request session application-->
<p>${test}</p>

<script>
const val='1234';
const str = `${val}`;
</script>

<button onclick="location.href='test2.jsp'">Test2</button>
</body>
</html>