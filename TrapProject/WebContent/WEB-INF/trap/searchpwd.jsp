<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>임시비밀번호 발송</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
<script type="text/javascript">
	function popclose() {
		window.close();
	};
</script>  
</head>
<body>
	<form action="sendemail" method="post">
	<p>회원님의 이메일 ${user.userEmail }로</p>
	<p>임시 비밀번호가 발송 됩니다 확인 버튼을 눌러주세요</p>
	<input type="text" value="${user.userEmail }" name="userEmail" hidden>
	<input type="text" value="${user.userPwd }" name="userPwd" hidden>
	<input type="text" value="${user.userId }" name="userId" hidden>
	<input type="submit" value="확인" onclick="return popclose()">
	</form>
</body>
</html>