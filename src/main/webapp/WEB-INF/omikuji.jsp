<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Omikuji Form</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/style.css"/>
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>

	<h1 class="text-center">Omikuji</h1>
<div class="row justify-content-center">
  <div class="col-6">
    <div class="card">
      <p>In <c:out value="${number}"/> years, you will live in <c:out value="${city}"/> with <c:out value="${person}"/> as your roommate, <c:out value="${hobby}"/> for a living. The next time you see a <c:out value="${thing}"/>, you will have good luck. Also, <c:out value="${nice}"/></p>
    </div>
  </div>
</div>
<a href="/">Back</a>

</body>
</html>