<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
<script type="text/javascript">
	function logout() {
		history.back();
	}
</script>
</head>
<body>
	<form action="userupdate">
	<div>
		<p>${user.userNick } 님 어서오세요!</p>
		<input type="submit" value="정보수정">
		<input type="text" value="${user }" hidden>	
		<button type="button" onclick="return logout()">로그아웃</button>
	</div>
	</form>
</body>
</html>