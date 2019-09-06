<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
<style type="text/css">
	.dd{width : 900px;}
</style>
</head>
<body>
	<form action="init" method="post">
		<div class="dd">
		<fieldset>
			<legend>회원가입</legend>
				<table>
					<tbody>
						<tr>
							<th>아이디 : </th>
							<td><input type="text" name="userId"></td>
							<td><button id="idcheck">중복체크</button></td>
						</tr>
						<tr>
							<th>암호 : </th>
							<td><input type="password" name="userPwd"></td>
						</tr>
						<tr>
							<th>주소 : </th>
							<td><input type="text" name="userAdd"></td>
						</tr>
						<tr>
							<th>전화번호 : </th>
							<td><input type="text" name="userPhone"></td>
						</tr>
						<tr>
							<th>이메일 : </th>
							<td><input type="text" name="userEmail"></td>
							<td><button id="emailcheck">중복체크</button></td>
						</tr>
						<tr>
							<th>닉네임 : </th>
							<td><input type="text" name="userNick"></td>
							<td><button id="nickcheck">중복체크</button></td>
						</tr>
						<tr>
							<th>이름 : </th>
							<td><input type="text" name="userName"></td>
						</tr>
						<tr>
							<th>생년월일 : </th>
							<td><input type="date" name="userBirth"></td>
						</tr>
						<tr>
							<th>나이 : </th>
							<td><input type="text" name="userAge"></td>
						</tr>
					</tbody>
				</table>
				<input type="submit" value="회원가입">
		</fieldset>
		</div>
	</form>
</body>
</html>