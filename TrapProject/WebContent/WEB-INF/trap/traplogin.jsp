<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인화면</title>
<link type="stylesheet" href="css/menuCSS.css">
<script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
 <script type="text/javascript">
 	$(function() {
		$("#join").click(function() {
			location.href = "join";
		});
		$("#searchid").click(function() {
			var popUrl = "./searchid.jsp";
			var popOption = "width=600,height=500,resizable=no,scrollbars=no,status=no";
			window.open(popUrl,"",popOption);
		});
		$("#searchpwd").click(function() {
			var popUrl = "./searchpwd.jsp";
			var popOption = "width=600,height=500,resizable=no,scrollbars=no,status=no";
			window.open(popUrl,"",popOption);
		});
		$("#login").click(function(){
			var userid = $("#id").val();
			var userpwd = $("#pwd").val();
			var re = false;
			var num = 1;
			if(valdate()==false){
				return re;
			}
			$.ajax({
				type: 'POST',
				data: userid,
				async: false,
				url: "idck",
				dataType: "json",
				contentType: "application/json; charset=UTF-8",
				success: function(data){
					if(data.cnt==0){
						alert("존재하지 않는 아이디 입니다.");
						$("#id").focus();
						num = 0;
					}else{
						re = true;
					}
				}
			});
			if(num==0){
				return re;
			}
			$.ajax({
				type: 'POST',
				data: userpwd,
				async: false,
				url: "pwdck",
				dataType: "json",
				contentType: "application/json; charset=UTF-8",
				success: function(data){
					if(data.cnt==0){
						alert("비밀번호가 틀렸습니다.");
						$("#pwd").focus();
						re=false;
					
					}else{
						re=true;
					}
				}
			});
			return re;
		});
	});
 	function valdate() {
 		var re = /^[a-zA-Z0-9]{4,12}$/;
 		var id = document.getElementById("id");
 		var pw = document.getElementById("pwd");
 		if(!check(re,id,"아이디는 4~12자의 영문 대,소문자 및 숫자로만 입력가능")){
 			return false;
 		}
 		if(!check(re,pw,"비밀번호는 4~12자의 영문 대,소문자 및 숫자로만 입력가능")){
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
   <div id="topDiv">
      <div>
         <a href="main"><img src="img/5.jpg" height="100" width="200"/></a>
      </div>
      <div id="loginDiv">
      <form name="in" action="login" method="post">
      <table id="log">
         <tbody>
            <tr>
               <th style="font-size:x-small">ID : </th>
               <td><input type="text" name="userId" id="id" size="5"></td>
               <th style="font-size:x-small">PW : </th>
               <td><input type="password" name="userPwd" id="pwd" size="5"></td>
               <td><input id="login" type="submit" value="로그인"></td>
               <td><button id="join" type="button">회원가입</button>
               <td><button id="searchid" type="button">ID찾기</button></td>
               <td><button id="searchpwd" type="button">암호찾기</button></td>
            </tr>
         </tbody>
      </table>
      </form>
      </div>
      <table id="menuTable">
       <colgroup>
          <col style="width: 25%;">
          <col style="width: 25%;">
          <col style="width: 25%;">
          <col style="width: 25%;">
        </colgroup>
			<thead>
				<tr>
					<th><a href="not">공지사항</a></th>
					<th><a href="story">이야기</a></th>
					<th><a href="gallery">갤러리</a></th>
					<th><a href="question">질문</a></th>
				</tr>
			</thead>
		</table>
   </div> 
</body>
</html>