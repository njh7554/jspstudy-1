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
	// session의 모든 속성 지우기
	session.invalidate();

	// 다시 로그인 화면으로 이동하기
	response.sendRedirect("01_form.jsp");
%>

</body>
</html>