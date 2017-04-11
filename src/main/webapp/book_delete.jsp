<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Könyv adatai</title>
</head>
<body>
	<form action="book_delete" method="post">
	<table border="1">
		<tr>
			<td>Könyv azonosítója</td>
			<td><input name="id" readonly="readonly" value="${book.id}"/></td>		
		</tr>
		<tr>
			<td>Könyv címe</td>
			<td><input name="title" readonly="readonly" value="${book.title}"/></td>			
		</tr>
		<tr>
			<td>Könyv szerzője</td>
			<td><input name="author" readonly="readonly" value="${book.author}"/></td>			
		</tr>
		<tr>
			<td>Könyv leírása</td>
			<td><input name="description" readonly="readonly" value="${book.description}"/></td>			
		</tr>
		<tr>
			<td>Kiadás éve</td>
			<td><input name="pubYear" readonly="readonly" value="${book.pubYear}"/></td>			
		</tr>
	</table>
	<a href="book_list">Vissza a könyv listához</a><br/>
	<input type="submit" value="Törlés"/>
	</form>
</body>
</html>