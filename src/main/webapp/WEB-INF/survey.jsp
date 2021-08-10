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
		<form action="/complete-survey" method="post">
			<div class="input-group input-group-lg mb-3">
				<label for="formControlInput" class="form-label mb-3">User Name:  </label>
				<input type="text" name="user" class="form-control">
			</div>
			
			<div class="input-group input-group-lg  mb-3">
				<label for="formControlInput" class="form-label mb-3">Dojo Location:  </label>	
				<select name="location" class="form-select form-select-sm">
  					<option value="Austin">Austin</option>
  					<option value="Chicage">Chicago</option>
  					<option value="Seattle">Seattle</option>
				</select>
			</div>
			
			<div class="input-group input-group-lg  mb-3">
				<label for="formControlInput" class="form-label mb-3">Favorite Language:  </label>	
				<select name="language" class="form-select form-select-sm">
  					<option value="Python">Python</option>
  					<option value="JavaScript">JavaScript</option>
  					<option value="Java">Java</option>
				</select>
			</div>
			
			<div class="input-group input-group-lg  mb-3">
  				<span class="input-group-text">Comment</span>
  				<textarea class="form-control" name="comment" cols="40" rows="15"></textarea>
			</div>
			
			<div class="input-group input-group-lg  mb-3">
  				 <input type="submit" class="form-control" value="Submit">
			</div>
			
		</form>
	
 	</div>	<!-- close wrapper -->
</body>
</html>