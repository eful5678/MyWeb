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
	<form>
		<div id="container" class="container" >
			<div class="input-group mb-3">
 				<input type="text" class="form-control" name="id" id="id" placeholder="id를 입력해주세요" aria-label="4~16자의 영문 소문자, 숫자만 사용가능합니다." aria-describedby="button-addon2">
  				<button type="button" id="idCheck" class="btn-danger btn-primary btn">id중복확인</button>
			</div>
		</div>
	</form>
</div>
	
</div>
<!-- section left -->
<section include-html="/html/leftbar.html">	</section>





<div id="form">
<form>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1">
  </div>
  <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>

<div class="card card-outline-secondary my-4">
     
          <div class="card-header">
            

			adfadf

        </div>
        
        
        </div>
        
        <div id="layout" class="container-fluid vertical-center justify-content-center">
			
				<form name="f" method="POST" action="${pageContext.request.contextPath }/member/join">
			<div id="container" class="container border border-danger" >
		<h6>아이디</h6>
			<div class="input-group mb-3">
 				<input type="text" class="form-control" name="id" id="id" placeholder="4~16자의 영문 소문자, 숫자만 사용가능합니다." aria-label="4~16자의 영문 소문자, 숫자만 사용가능합니다." aria-describedby="button-addon2">
  				<button type="button" id="idCheck" class="btn-danger btn-primary btn">id중복확인</button>
			</div>
			</div>
			

<!-- footer -->
<footer include-html="/html/footer.html"></footer>


<script>
includeHTML();
</script>
</body>
</html>