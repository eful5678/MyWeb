<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<h1 class="text-danger"><a href="/">주제도 모르는 사이트</a></h1>


<header include-html="/html/header.html"></header>
<h1>Login</h1>
<div id="container">
	<div id="leftbar" include-html="/html/leftbar.html"></div>
	<div id="form" class="container-fluid vertical-center justify-content-center">
	<form name="flogin" method="GET" action="${pageContext.request.contextPath }/member/login">
			<div class="col-md-6">
				<label for="id" class="form-label">ID</label>
 				<input type="text" class="form-control" name="id" id="id" placeholder="id를 입력해주세요" aria-label="4~16자의 영문 소문자, 숫자만 사용가능합니다." aria-describedby="button-addon2">
			</div>
			<div class="col-md-6">
				<label for="password" class="form-label">Password</label>
 				<input type="password" class="form-control" name="password" id="password" placeholder="******" aria-label="4~16자의 영문 소문자, 숫자만 사용가능합니다." aria-describedby="button-addon2">
			</div>
			<div>
				<button id="login" class="btn-danger btn-primary btn" onclick="login()">로그인</button>
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
</body>
</html>