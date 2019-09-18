<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>암호 찾기 페이지</title>
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
<form action="usersepwd" method="post">
		<div>
			<p>비밀번호 찾기</p>
			<p>아이디 입력 : <input type="text" name="userId" id="userid"></p>
			<p>이메일 입력 : <input type="text" name="userEmail" id="useremail"></p>
		</div>
		<input type="submit" value="찾기">
		<input type="button" value="닫기" onclick="return popclose()">
	</form>
</body>
</html>