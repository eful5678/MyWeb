<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<!-- Option 1: Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
<script src="/js/js.js"></script>
<link rel="stylesheet" href="/css/css.css">
<title>글을 쓰자</title>
</head>
<body>
<!-- header -->
<header><c:import url="/header.jsp"></c:import></header>
<h2>글을 쓰자</h2>

<!-- left bar -->
<div id="container">
	<div id="leftbar" include-html="/html/leftbar.html"></div>
	<div id="form" class="container-fluid vertical-center justify-content-center">
	<form name="freeboard1" method="POST" action="${pageContext.request.contextPath }/board/board">
		<div class="col-md-6">
			<label for="m_id" class="form-label">작성자</label>
 			<input type="text" class="form-control" name="m_id" id="m_id" value="${sessionScope.id }" aria-label="4~16자의 영문 소문자, 숫자만 사용가능합니다." aria-describedby="button-addon2" readonly>
		</div>
		<div class="col-md-12">
			<label for="title" class="form-label">제목</label>
			<input type="text" name="title" class="form-control">
		</div>
		<div class="col-md-12">
			<label for="content" class="form-lable">내용</label>
			<textarea class="form-control" name="content" rows="20"></textarea>
		</div>
		<div>
			<button id="write" class="btn-danger" onclick="write()">글쓰기</button>
		</div>
	</form>
	</div>
</div>

<!-- footer -->
<footer include-html="/html/footer.html"></footer>

<script>
includeHTML();
</script>
</body>
</html>