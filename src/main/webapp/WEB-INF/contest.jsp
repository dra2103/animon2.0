<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contest</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<style>
body {
	background-image: url("/images/backgrounds/contestBG.jpeg");
	background-size: cover;
}
</style>
<body>
	<h1>Winner</h1>
	<c:choose>
   	<c:when test="${medal eq 1}"><img src="/images/contest/goldmedal.jpg" alt="gold meadal img" /></c:when>
   	<c:when test="${medal eq 2 }"><img src="/images/contest/silvermedal.jpg" alt="silver medal img" /></c:when> 
   	<c:otherwise><img src="/images/contest/bronzemedal.jpg" alt="bronze meadal img" /></c:otherwise>    
	</c:choose>
	
	
	<a href="/home" class="btn btn-success">Job Well Done</a>
	
</body>
</html>