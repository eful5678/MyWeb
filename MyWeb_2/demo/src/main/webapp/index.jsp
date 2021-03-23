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

<!-- header -->
<header><c:import url="/header.jsp"></c:import></header>

<!-- section left -->
<div id="container">
	<div id="leftbar" include-html="/html/leftbar.html"></div>
	<div id="form" class="container-fluid vertical-center justify-content-center">
	아직 뭘해야 할지 모르겠습니다. 오늘은 회원정보 수정기능을 구현했습니다.
	<div>
	해야할 일 - 2021.03.23
		<ul>
			<li>게시판 조회수 카운팅 기능을 넣어보자</li>
			<li>회원가입/로그인 빈칸 체크</li>
			<li>회원가입/로그인 id 중복여부 / 아이디 비밀번호 틀렸을때 메시지 출력</li>
		</ul>
	</div>
	</div>
	<div class="js-clock">
            <h1>00:00</h1>
            <script src="/js/js.js"></script>
     </div>
</div>

<!-- footer -->
<footer include-html="/html/footer.html"></footer>

<script>
includeHTML();
init();
</script>
</body>
</html>