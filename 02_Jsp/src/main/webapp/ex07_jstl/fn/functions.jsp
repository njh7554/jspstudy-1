<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:set var="str" value="Hello World" scope="page" />

	<h3>${fn:length(str)}</h3>
	
	<h3>${fn:substring(str, 0, 5)}</h3>
	<h3>${fn:substringBefore(str, ' ')}</h3>
	<h3>${fn:substringAfter(str, ' ')}</h3>

	<h3>${fn:indexOf(str, 'l')}</h3>
	<h3>${fn:replace(str, 'l', 'z')}</h3>







</body>
</html>