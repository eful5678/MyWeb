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
<title>Insert title here</title>
</head>
<body>
<header><c:import url="/header.jsp"></c:import></header>
<h2>내 정보수정</h2>
<!-- Left Bar -->
<div id="container">
	<div id="leftbar" include-html="/html/leftbar.html"></div>
	<div id="form" class="container-fluid vertical-center justify-content-center">
	<form class="row g-3" name="fedit" method="POST" action="${pageContext.request.contextPath }/member/edit">
		<div class="col-md-6">
			<label for="id" class="form-label">ID</label>
 			<input type="text" class="form-control-plaintext" id="id" name="id" value="${m.id }" readonly>
 		</div>
 		<div class="col-md-6">
 			<label for="email" class="form-label">E-mail</label>
 			<input type="text" class="form-contorl-plaintext" id="email" name="email" value="${m.email }">
 		</div>
		<div class="col-md-6">
			<label for="password" class="form-lable">Password</label>
			<input type="password" class="form-control" name="password" id="password" value="${m.password }">
		</div>
		<div class="col-md-6">
			<label for="passwordCheck" class="form-lable">Password Check</label>
			<input type="password" class="form-control" name="passwordCheck" id="passwordCheck" value="${m.password }">
		</div>
		<div class="col-md-6">
			<label for="name" class="form-label">Name</label>
 			<input type="text" class="form-control" name="name" id="name" value="${m.name }">
		</div>
		<div class="col-12">
   			<label for="inputAddress" class="form-label">Address</label>
   			<input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
 		</div>
		<div>
			<input type="button" id="edit" class="btn-danger btn-primary btn" value="회원정보수정" onclick="fedit()">
			<button type="reset" id="reset" class="btn-danger btn-primary btn">재입력</button>
			<input type="button" id="delete" class="btn-danger" value="회원탈퇴" onclick="del()">
		</div>
	</form>
	</div>
</div>
<input type="hidden" id="sessionId" value="${sessionScope.id }">
<!-- footer -->
<footer include-html="/html/footer.html"></footer>

<script>
includeHTML();
</script>
</body>
</html>