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
<script type="text/javascript">
var idck = 0;
var emailck = 0;
var nickck = 0;
function valdate() {
	var re = /^[a-zA-Z0-9]{4,12}$/;
	var re2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	var id = document.getElementById("userid");
	var pw = document.getElementById("userpwd");
	var email = document.getElementById("useremail");
	if(!check(re,id,"아이디는 4~12자의 영문 대,소문자 및 숫자로만 입력가능")){
		return false;
	}
	if(!check(re,pw,"비밀번호는 4~12자의 영문 대,소문자 및 숫자로만 입력가능")){
		return false;
	}
	if(join.userPwd.value != join.pwdcheck.value){
		alert("비밀번호가 다릅니다 다시 입력해 주세요");
		join.pwdcheck.value = "";
		join.pwdcheck.focus();
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
	if(join.userName.value==""){
		alert("이름을 입력하세요");
		join.userId.focus();
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
$(function() {
		$("#idcheck").click(function() {
			var userid = $("#userid").val();
			$.ajax({
				async: true,
				type: 'POST',
				data: userid,
				url: "idck",
				dataType: "json",
				contentType: "application/json; charset=UTF-8",
				success: function(data){
					if(data.cnt>0){
						alert("아이디가 존재합니다.");
						$("#userid").focus();
					} else {
						alert("사용 가능한 아이디 입니다.");	
						idck=1;
					}
				},
				error: function(error){
					alert("error : "+error);
				}
			})
		});
		$("#emailcheck").click(function() {
			var useremail = $("#useremail").val();
			$.ajax({
				async: true,
				type: 'POST',
				data: useremail,
				url: "emailck",
				dataType: "json",
				contentType: "application/json; charset=UTF-8",
				success: function(data){
					if(data.cnt>0){
						alert("존재하는 이메일입니다.");
						$("#useremail").focus();
					} else {
						alert("사용 가능한 이메일 입니다.");			
						emailck=1;
					}
				},
				error: function(error){
					alert("error : "+error);
				}
			})
		});
		
		$("#nickcheck").click(function() {	
			var usernick = $("#usernick").val();
			$.ajax({
				async: true,
				type: 'POST',
				data: usernick,
				url: "nickck",
				dataType: "json",
				contentType: "application/json; charset=UTF-8",
				success: function(data){
					if(data.cnt>0){
						alert("존재하는 닉네임 입니다.");
						$("#nickcheck").focus();
					} else {
						alert("사용 가능한 닉네임 입니다.");			
						nickck=1;
					}
				},
				error: function(error){
					alert("error : "+error);
				}
			})
		});
		if(!check(re,id,"아이디는 4~12자리의 영문 대,소문자,숫자를 입력하세요")){
			return false;
		}
	});
</script>  
<style type="text/css">
	.dd{width : 900px;}
</style>
</head>
<body>
	<form name="join" action="init" method="post">
		<div class="dd">
		<fieldset>
			<legend>회원가입</legend>
				<table>
					<tbody>
						<tr>
							<th>아이디 : </th>
							<td><input id="userid" type="text" name="userId" maxlength="12"></td>
							<td><button id="idcheck" type="button">중복체크</button></td>
						</tr>
						<tr>
							<th>암호 : </th>
							<td><input id="userpwd" type="password" name="userPwd"></td>
						</tr>
						<tr>
							<th>암호 확인 : </th>
							<td><input type="password" name="pwdcheck"></td>
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
							<td><input id="useremail" type="text" name="userEmail"></td>
							<td><button id="emailcheck" type="button">중복체크</button></td>
						</tr>
						<tr>
							<th>닉네임 : </th>
							<td><input id="usernick" type="text" name="userNick"></td>
							<td><button id="nickcheck" type="button">중복체크</button></td>
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
				<input type="submit" value="회원가입" onclick="return valdate()">
				<input type="reset" value="다시입력">
		</fieldset>
		</div>
	</form>
</body>
</html>