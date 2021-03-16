<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="uTF-8"%>
<!doctype html>
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

<title>Hello, world!</title>
</head>
<body>
<!-- header -->
<h1 class="text-danger"><a href="/">주제도 모르는 사이트</a></h1>
<header include-html="/html/header.html"></header>

<!-- section left -->
<div id="container">
	<div id="leftbar" include-html="/html/leftbar.html"></div>
	
</div>
<!-- footer -->
<footer include-html="html/footer.html"></footer>
<script>
includeHTML();
</script>
 </body>
</html>