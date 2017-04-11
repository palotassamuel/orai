<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>Azonosító</th>
			<th>Könyv címe</th>
			<th>Szerző</th>
			<th>Leírás</th>
			<th>Kiadás éve</th>
			<th></th>
		</tr>
		<c:forEach items="${books}" var="book">
			<tr>
				<td><c:out value="${book.id}"/></td>
				<td><c:out value="${book.title}"/></td>
				<td><c:out value="${book.author}"/></td>
				<td><c:out value="${book.description}"/></td>
				<td><c:out value="${book.pubYear}"/></td>
				<td><a href="book_edit?bookId=${book.id}">Szerkesztés</a>
				<a href="book_details?bookId=${book.id}">Megtekintés</a>
				<a href="book_delete?bookId=${book.id}">Törlés</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	<a href="book_edit">Könyv felvitele</a>
	<c:if test="${empty books}">Nincs felvéve könyv</c:if>
</body>
</html>