<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>test</h1>
<form action='<c:url value="/insert"/>' id="join" name="fr" method="post">
email <input type="text"	id="email" name="email">
address <input type="text"	id="password" name="password">
<input type="submit" value="Submit" class="submit">
<input type="reset" value="Cancel" class="cancel">
</form>
</body>
</html>