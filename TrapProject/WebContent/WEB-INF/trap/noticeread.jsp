<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet" type="text/css" href="css/menuCSS.css">
<script type="text/javascript">
	function back() {
		history.back();
	}
</script>
</head>
<body>
<jsp:include page="traplogin.jsp"></jsp:include>
<div id="mainDiv">
	<div id="ncontent">
	<p>글번호 <input class="ninput" type="text" name="nId" value="${read.nId }" readonly="readonly" size="1"></p>
	<p>제목 <input class="ninput" type="text" name="nTitle" value="${read.nTitle }" readonly="readonly"></p>
	<p>작성자 <input class="ninput" type="text" name="nNick" value="${read.nNick }" readonly="readonly"></p>
	<p>내용</p>
	<textarea name="nContent" rows="26" cols="87" readonly="readonly">${read.nContent }</textarea>
	<button onclick="return back()">목록</button>
	</div>
</div>	
</body>
</html>