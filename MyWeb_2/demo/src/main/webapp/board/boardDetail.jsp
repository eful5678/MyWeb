<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
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
<h2>자유게시판</h2>
<div id="container">
	<div id="leftbar" include-html="/html/leftbar.html"></div>
	<div id="form" class="container-fluid vertical-center justify-content-center">
		<div class="col-md-12">
			<label for="title" class="form-label">Title</label>
 			<input type="text" class="form-control" name="title" id="title" value="${b.title }" readonly>
		</div>
		<div class="col-md-12">
			<label for="content" class="form-label">Content</label>
 			<textarea type="text" class="form-control" name="content" id="content" cols="120" readonly>${b.content }</textarea>
		</div>
		<div class="d-grid gap-2 d-md-flex justify-content-md-end">
			<button id="write" class="btn-danger" onclick="boardIdCheck('${b.b_num}')" onclick="location.href='/board/boardUpdate?b_num=${b.b_num}'">수정</button>
			<button id="write" class="btn-danger">삭제</button>
		</div>
		<div class="col-md-12">
			<label for="reply" class="form-label">댓글</label>
		
			<span id="rep_id">${sessionScope.id }님</span>
 			<textarea class="form-control" name="rep_content" id="reply" cols="120"></textarea>
 				<div class="d-grid gap-2 d-md-flex justify-content-md-end">
 					<input type="button" class="btn-danger" value="등록" onclick="b_reply()">
 				</div>
 		<div id="repList" class="col-md-12">
 			<div>
 				<c:import url="/reply/replyList?b_num=${b.b_num }"></c:import>
 			</div>
		</div>
    </div>
</div>
<input id="sessionId" type="hidden" value="${sessionScope.id }">
<input id="writer" type="hidden" value="${b.m_id }">
<input id="rep_b_num" type="hidden" value="${b.b_num }">
<!-- footer -->
<footer include-html="/html/footer.html"></footer>

<script>
includeHTML();
</script>
</body>
</html>