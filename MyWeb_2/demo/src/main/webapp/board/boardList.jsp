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


<!-- left bar -->
<div id="container">

	<div id="leftbar" include-html="/html/leftbar.html"></div>
	<div id="form" class="container-fluid vertical-center justify-content-center">
		<h2>자유게시판</h2>
		<table class="table">
 			<thead>
    		<tr class="table-success">
      			<th style="width: 7%" scope="col">#</th>
      			<th style="width: 63%" class="table mb-3 table-success" scope="col">Title</th>
      			<th style="width: 20%" scope="col">Writer</th>	
      			<th class="text-center" style="width: 10%" scope="col">조회수</th>	
    		</tr>
    		</thead>
	<c:forEach var="b" items="${list }">
			<tbody>
			<tr>
				<th scope="row">${b.b_num }</th>
      			<td><a href="${pageContext.request.contextPath}/board/boardDetail?b_num=${b.b_num}">${b.title }</a></td>
      			<td>${b.m_id }</td>
      			<td class="text-center">${b.viewCNT }</td>
			</tr>
			</tbody>
	</c:forEach>
		</table>
		<div>
			<button id="write" class="btn-danger" onclick="moveWrite()">글쓰기</button>
		</div>
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