<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ID 찾기 페이지</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
<script type="text/javascript">
	var retu = false;
	function popclose() {
		window.close();
	};
	function emailck() {
		var email = document.getElementById("useremail");
		if(email.value==""){
			alert("이메일을 입력해 주세요");
			email.focus();
			return false;
		} 
	};
	$(function() {
		$("#search").click(function() {
			var useremail = $("#useremail").val();
			var re = false;
			var num = 0;
			if(emailck()==false){
				return re;
			}
			$.ajax({
				async: false,
				type: 'POST',
				data: useremail,
				url: "emailck",
				dataType: "json",
				contentType: "application/json; charset=UTF-8",
				success: function(data){
					if(data.cnt==0){
						alert("존재하지않는 이메일입니다.");
						$("#useremail").focus();
					} else {
						re = true;
					}
				},
				error: function(error){
					alert("error : "+error);
				}
			});
			return re;
		});
	});

</script>  
</head>
<body>
	<form action="userseid" method="post">
		<div>
			<p>아이디 찾기</p>
			<p>이메일 입력 : <input type="text" name="userEmail" id="useremail"></p>
		</div>
		<input id="search" type="submit" value="찾기">
		<input type="button" value="닫기" onclick="return popclose()">
	</form>
</body>
</html>