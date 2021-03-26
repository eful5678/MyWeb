<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
댓글 목록<br>
<c:forEach var="r" items="${list }">
	
	${r.m_id }
	<br>
	${r.rep_content}
	<hr>
</c:forEach>
</body>
</html>