<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<% request.setCharacterEncoding("utf-8"); %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가입 정보확인</title>
</head>
<body>
	<form action="dbt" method="post">
		<table>
		<tr>
			<th>이름 : </th>
			<td><input type="text" value="${user.userName }" readonly name="userName"></td>
		</tr>
		<tr>
			<th>아이디 : </th>
			<td><input type="text" value="${user.userId }" readonly name="userId"></td>
		</tr>
		<tr>
			<th>암호 : </th>
			<td><input type="password" value="${user.userPwd }" readonly name="userPwd"></td>
		</tr>
		<tr>
			<th>주소 : </th>
			<td><input type="text" value="${user.userAdd }" readonly name="userAdd"></td>
		</tr>
		<tr>
			<th>전화번호 : </th>
			<td><input type="text" value="${user.userPhone }" readonly name="userPhone"></td>
		</tr>
		<tr>
			<th>이메일 : </th>
			<td><input type="text" value="${user.userEmail }" readonly name="userEmail"></td>
		</tr>
		<tr>
			<th>닉네임 : </th>
			<td><input type="text" value="${user.userNick }" readonly name="userNick"></td>
		</tr>
		<tr>
			<th>생년월일 : </th>
			<td><input type="text" value="${user.userBirth }" readonly name="userBirth"></td>
		</tr>
		<tr>
			<th>나이 : </th>
			<td><input type="text" value="${user.userAge }" readonly name="userAge"></td>
		</tr>
	</table>
	<input type="submit" value="가입">
	</form>
</body>
</html>