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
<title>Login Page</title>
</head>
<body>
<!-- header -->
<header><c:import url="/header.jsp"></c:import></header>
<h2>Join</h2>

<!-- Left Bar -->
<div id="container">
	<div id="leftbar" include-html="/html/leftbar.html"></div>
	<div id="form" class="container-fluid vertical-center justify-content-center">
	<form name="fjoin" method="POST" action="${pageContext.request.contextPath }/member/join">
		<div class="col-md-6">
			<label for="id" class="form-label">ID</label>
 			<input type="text" class="form-control" id="id" name="id" placeholder="id를 입력해주세요" aria-label="4~16자의 영문 소문자, 숫자만 사용가능합니다." aria-describedby="button-addon2">
 		</div>
		<div class="col-md-6">
			<label for="password" class="form-lable">Password</label>
			<input type="password" class="form-control" name="password" id="password" placeholder="******">
		</div>
		<div class="col-md-6">
			<label for="passwordCheck" class="form-lable">Password Check</label>
			<input type="password" class="form-control" name="passwordCheck" id="passwordCheck" placeholder="******">
		</div>
		<div class="col-md-6">
			<label for="name" class="form-label">Name</label>
 			<input type="text" class="form-control" name="name" id="name" placeholder="이름을 입력해주세요" aria-label="4~16자의 영문 소문자, 숫자만 사용가능합니다." aria-describedby="button-addon2">
		</div>
		<div class="col-12">
   			<label for="inputAddress" class="form-label">Address</label>
   			<input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
 		</div>
		<div>
			<button id="join" class="btn-danger btn-primary btn" onclick="join()">회원가입</button>
			<button type="reset" id="reset" class="btn-danger btn-primary btn">재입력</button>
		</div>
	</form>
	</div>
</div>
<!-- footer -->
<footer include-html="/html/footer.html"></footer>

<script>
includeHTML();
</script>
<script src="/js/js.js"></script>
</body>
</html>