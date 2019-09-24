<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴버튼</title>
<link rel="stylesheet" type="text/css" href="css/menuCSS.css">
</head>
<body>
	<c:if test="${sessionScope != user.userId }">
	<jsp:include page="traplogin.jsp"></jsp:include>
	</c:if>
	<c:if test="${sessionScope == user.userId }">
	<jsp:include page="login.jsp"></jsp:include>
	</c:if>
	<div id="mainDiv">
		<table>
			<tbody>
				<tr>
					<th id="nboad">공지사항</th>
				</tr>
				<tr>
					<th id="sboad">이야기</th>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>