<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<script type="text/javascript">
	function back() {
		history.back();
	}
</script>
</head>
<body>
	<p>글번호 <input type="text" name="nId" value="${read.nId }" readonly="readonly"></p>
	<p>제목 <input type="text" name="nTitle" value="${read.nTitle }" readonly="readonly"></p>
	<p>작성자 <input type="text" name="nNick" value="${read.nNick }" readonly="readonly"></p>
	<p>내용</p>
	<textarea name="nContent" rows="10" cols="70" readonly="readonly">${read.nContent }</textarea>
	<button onclick="return back()">목록</button>
</body>
</html>