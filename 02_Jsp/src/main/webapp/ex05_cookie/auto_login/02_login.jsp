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
		request.setCharacterEncoding("UTF-8");
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String chkAutoLogin = request.getParameter("chk_auto_login");
		
		// id="admin", pw="1234"이면 로그인 성공
		if(id.equals("admin") && pw.equals("1234")){
			
			// 자동 로그인을 체크했다면 chkAutoLogin이 null이 아니다.
			if(chkAutoLogin != null){
				
				// 자동 로그인 처리
				// id와 pw를 모두 쿠키에 저장시켜 놓는다.
				Cookie cookieId = new Cookie("auto_id", id);
				cookieId.setMaxAge(60 * 60 * 24 * 30);
				response.addCookie(cookieId);
				Cookie cookiePw = new Cookie("auto_pw", pw);
				cookiePw.setMaxAge(60 * 60 * 24 * 30);
				response.addCookie(cookiePw);
				
				session.setAttribute("loginId", id);
				
			} else {
				
				// 일반 로그인 처리
				session.setAttribute("loginId", id);
				
			}
			
		}
		
		// 다시 로그인 화면으로 돌아가기
		response.sendRedirect("01_form.jsp");
		
	%>

</body>
</html>