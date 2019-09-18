<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인화면</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
 <script type="text/javascript">
 	$(function() {
		$("#join").click(function() {
			location.href = "./trapjoin.jsp";
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
<script>
  function checkLoginState() {               // Called when a person is finished with the Login Button.
    FB.getLoginStatus(function(response) {   // See the onlogin handler
      statusChangeCallback(response);
    });
  }

  (function(d, s, id) {                      // Load the SDK asynchronously
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v4.0&appId=537319240409010";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));

  window.fbAsyncInit = function() {
    FB.init({
      appId      : '537319240409010',
      cookie     : true,                     // Enable cookies to allow the server to access the session.
      xfbml      : true,                     // Parse social plugins on this webpage.
      version    : 'v4.0'           // Use this Graph API version for this call.
    });

    FB.getLoginStatus(function(response) {   // Called after the JS SDK has been initialized.
      statusChangeCallback(response);        // Returns the login status.
    });
  };
  function statusChangeCallback(response) {  // Called with the results from FB.getLoginStatus().
    console.log('statusChangeCallback');
    console.log(response);                   // The current login status of the person.
    if (response.status === 'connected') {   // Logged into your webpage and Facebook.
      testAPI();  
    } else {                                 // Not logged into your webpage or we are unable to tell.
      document.getElementById('status').innerHTML = 'Please log ' +
        'into this webpage.';
    }
  }

  function testAPI() {                      // Testing Graph API after login.  See statusChangeCallback() for when this call is made.
    console.log('Welcome!  Fetching your information.... ');
    FB.api('/me', function(response) {
      console.log('Successful login for: ' + response.name);
      document.getElementById('status').innerHTML =
        'Thanks for logging in, ' + response.name + '!';
    });
  }
 function logout() {
	 FB.logout(function(response) {
		   // Person is now logged out
		});
}

</script>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&autoLogAppEvents=1&version=v4.0&appId=537319240409010"></script>
 <style type="text/css">
 	#div{
 		border: 1px solid black;
 		width: 900px; 
 		height: 100px; 
 		position: absolute; 
 		left: 50%; top: 6%; 
 		transform: translate(-50%, -50%);
 		
 	 }
 </style>
</head>
<body>
	<div id="div">
	<form name="in" action="login" method="post">
	<table id="log">
		<tbody>
			<tr>
				<th>아이디 : </th>
				<td><input type="text" name="userId" id="id"></td>
				<th>비밀번호 : </th>
				<td><input type="password" name="userPwd" id="pwd"></td>
				<td><input id="login" type="submit" value="로그인"></td>
				<td><button id="join" type="button">회원가입</button>
				<td>
				<button id="searchid" type="button">ID찾기</button>
				<button id="searchpwd" type="button">암호찾기</button>
				<fb:login-button scope="public_profile,email" onlogin="checkLoginState();"></fb:login-button>
				</td>
			</tr>
		</tbody>
	</table>
	</form>
	<div id="status"></div>
	<button onclick="return logout();">로그아웃</button>
	</div>
</body>
</html>