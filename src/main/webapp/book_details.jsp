<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Könyv adatai</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>Könyv azonosítója</td>
			<td><c:out value="${book.id}"/></td>			
		</tr>
		<tr>
			<td>Könyv címe</td>
			<td><c:out value="${book.title}"/></td>			
		</tr>
		<tr>
			<td>Könyv szerzője</td>
			<td><c:out value="${book.author}"/></td>			
		</tr>
		<tr>
			<td>Könyv leírása</td>
			<td><c:out value="${book.description}"/></td>			
		</tr>
		<tr>
			<td>Kiadás éve</td>
			<td><c:out value="${book.pubYear}"/></td>			
		</tr>
	</table>
	<a href="book_list">Vissza a könyv listához</a>
</body>
</html>