<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<% request.setCharacterEncoding("utf-8"); %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
<script type="text/javascript">
	function back() {
		history.back();
	}
	$(function() {
		$("#updateuser").click(function() {
			var useremail = $("#useremail").val();
			var usernick = $("#usernick").val();
			var re = false;
			var num = 1;
			if(valdate() == false){
				return re;
			}
			alert("실행하나");
			$.ajax({
				type: 'POST',
				data: useremail,
				async: false,
				url: "emailck",
				dataType: "json",
				contentType: "application/json; charset=UTF-8",
				success: function(data){
					if(data.cnt>0){
						alert("존재하는 이메일입니다.");
						$("#useremail").focus();
						num = 0;
					} else {
						re = true;
					}
				},
				error: function(error){
					alert("error : "+error);
				}
			})
			if(num == 0){
				return re;
			}
			$.ajax({
				type: 'POST',
				data: usernick,
				async: false,
				url: "nickck",
				dataType: "json",
				contentType: "application/json; charset=UTF-8",
				success: function(data){
					if(data.cnt>0){
						alert("존재하는 닉네임 입니다.");
						$("#usernick").focus();
						re=false;
					} else{
						re = true;
					}
				},
				error: function(error){
					alert("error : "+error);
				}
			})
			return re;
		});
	});
	function valdate() {
		var re = /^[a-zA-Z0-9]{4,12}$/;
		var re2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		var pw = document.getElementById("userpwd");
		var email = document.getElementById("useremail");
		if(!check(re,pw,"비밀번호는 4~12자의 영문 대,소문자 및 숫자로만 입력가능")){
			return false;
		}
		if(update.userPwd.value != update.pwdcheck.value){
			alert("비밀번호가 다릅니다 다시 입력해 주세요");
			update.pwdcheck.value = "";
			update.pwdcheck.focus();
			return false;
		}
		if(email.value==""){
			alert("이메일을 입력해 주세요");
			email.focus();
			return false;
		}
		if(!check(re2,email,"맞지않는 이메일 형식입니다")){
			return false;
		}
		function check(re, what, msg) {
			if(re.test(what.value)){
				return true;
			}
			alert(msg);
			what.value="";
			what.focus();
		}
	};
</script>
</head>
<body>
	<form name="update" action="goupdate" method="post">
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
			<td><input id="userpwd" type="password" value="${user.userPwd }" name="userPwd"></td>
		</tr>
		<tr>
			<th>암호 확인 : </th>
			<td><input type="password" name="pwdcheck"></td>
		</tr>
		<tr>
			<th>주소 : </th>
			<td><input type="text" value="${user.userAdd }" name="userAdd"></td>
		</tr>
		<tr>
			<th>전화번호 : </th>
			<td><input type="text" value="${user.userPhone }" name="userPhone"></td>
		</tr>
		<tr>
			<th>이메일 : </th>
			<td><input id="useremail" type="text" value="${user.userEmail }" name="userEmail"></td>
		</tr>
		<tr>
			<th>닉네임 : </th>
			<td><input id="usernick" type="text" value="${user.userNick }" name="userNick"></td>
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
	<input id="updateuser" type="submit" value="수정">
	<button type="button" onclick="return back()">뒤로가기</button>
	</form>
</body>
</html>