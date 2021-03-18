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
<h1 class="text-danger"><a href="/">주제도 모르는 사이트</a></h1>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="/">HOME</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
        </li>
      </ul>
      <div>
      	<ul class="navbar-nav me-auto mb-2 mb-lg-0">
      		<!-- c if 로 session id 여부에 따라 로그인/로그아웃으로 전환하기 -->
      		<c:if test="${empty sessionScope.id }">
			<li class="nav-item">
         		 <a class="nav-link active" aria-current="page" href="/member/loginForm">Login</a>
         	</li>
         	<li class="nav-item">
         		 <a class="nav-link active" aria-current="page" href="/member/joinForm">Sign up</a>
			</li>
			
			</c:if>
			<c:if test="${not empty sessionScope.id }">
			<li class="nav-item badge bg-danger fs-4">
      			${sessionScope.id} 님 환영합니다.
      		</li>
      		<li class="nav-item">
         		 <a class="nav-link active" aria-current="page" href="/member/editForm">내 정보수정</a>
         	</li>
			<li class="nav-item">
         		 <a class="nav-link active" aria-current="page" href="/member/logout">Logout</a>
         	
			</c:if>
      		
      		
			

      	</ul>
      </div>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
</body>
</html>