<%@page import="boardServer.user.UserRequestDto"%>
<%@page import="boardServer.user.UserResponseDto"%>
<%@page import="boardServer.user.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>

<body>
	<%
	request.setCharacterEncoding("UTF-8");

	UserDao userDao = UserDao.getInstance();
	UserResponseDto user = (UserResponseDto) session.getAttribute("user");

	String password = request.getParameter("password");

	if (userDao.findUserByIdAndPassword(user.getId(), password) != null) {
		UserRequestDto userDto = new UserRequestDto();

		String newPassword = request.getParameter("password-new");
		String newEmail = request.getParameter("email");
		String newTelecom = request.getParameter("telecom");
		String newPhone = request.getParameter("phone");

		if (!newPassword.equals("") && newPassword != null) {
		}

		if (!newEmail.equals(userDto.getEmail())) {
			userDao.updateUserEmail(userDto, newEmail);
		}

		if (!newPhone.equals(userDto.getPhone()) || !newTelecom.equals(userDto.getTelecom())) {
			userDao.updateUserPhone(userDto, newTelecom, newPhone);
		}

		session.setAttribute("user", user);
		response.sendRedirect("/mypage");

	}
	%>
</body>
</html>