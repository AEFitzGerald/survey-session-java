<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html">
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="/main.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
	<title>Survey</title>
	
</head>
<body>
	<div class = "wrapper">
		<div class="card">
  			<div class="card-body">
  				<h3>Dojo Student Information</h3>
  				<p class=" mb-3"> Name:
  					<c:out value="${user}"/> 
  				</p>
  				<p class=" mb-3"> Dojo Location:
  					<c:out value="${location}"/> 
  				</p>
  				<p class=" mb-3"> Favorite Language:
  					<c:out value="${language}"/> 
  				</p>
  				<p class=" mb-3"> Comment:
  					<c:out value="${comment}"/> 
  				</p>		
  			</div> <!-- close card-body -->
		</div> <!-- close card -->
 	</div>	<!-- close wrapper -->
</body>
</html>