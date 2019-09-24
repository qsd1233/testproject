<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>업데이트 완료</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
<script type="text/javascript">
	function goback() {
		location.href = "updateback";
	}
</script>  
</head>
<body>
	<p>업데이트 완료 초기화면버튼을 눌러주세요</p>
	<button onclick="goback()">초기화면으로</button>
</body>
</html>