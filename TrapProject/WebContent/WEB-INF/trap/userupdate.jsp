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
			}else{re=true;}
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
	function goPopup(){
		// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
    	var pop = window.open("doroadd.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
    
		// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
    	//var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
	}
	/** API 서비스 제공항목 확대 (2017.02) **/
	function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn
						, detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo){
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
		document.update.roadAddrPart1.value = roadAddrPart1;
		document.update.roadAddrPart2.value = roadAddrPart2;
		document.update.addrDetail.value = addrDetail;
		document.update.zipNo.value = zipNo;
	}
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
			<col style="width:20%"><col>
			</colgroup>
			<tbody>
				<tr>
					<th>우편번호</th>
					<td>
					    <input type="hidden" id="confmKey" name="confmKey" value=""  >
						<input type="text" id="zipNo" name="userAddnum" readonly style="width:100px" value="${user.userAddnum }">
						<input type="button"  value="주소검색" onclick="goPopup();">
					</td>
				</tr>
				<tr>
					<th>도로명주소</th>
					<td><input type="text" id="roadAddrPart1" name="userAdd1" style="width:85%" value="${user.userAdd1 }"></td>
				</tr>
				<tr>
					<th>상세주소</th>
					<td>
						<input type="text" id="addrDetail" name="userAdd2" style="width:40%" value="${user.userAdd2 }">
						<input type="text" id="roadAddrPart2" name="userAdd3" style="width:40%" value="${user.userAdd3 }">
					</td>
				</tr>
			</tbody>
		<tr>
			<th>전화번호 : </th>
			<td><input type="text" value="${user.userPhone }" name="userPhone"></td>
		</tr>
		<tr>
			<th>이메일 : </th>
			<td><input id="useremail" type="text" value="${user.userEmail }" readonly name="userEmail"></td>
		</tr>
		<tr>
			<th>닉네임 : </th>
			<td><input id="usernick" type="text" value="${user.userNick }" readonly name="userNick"></td>
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