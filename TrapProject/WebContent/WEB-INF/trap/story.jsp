<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="false" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이야기</title>
<link rel="stylesheet" type="text/css" href="css/menuCSS.css">
</head>
<body>
<jsp:include page="traplogin.jsp"></jsp:include>
<div id="mainDiv">
  <div id="storyDiv">
    <header>
      <div>
        <h1>이야기</h1>
      </div>
    </header>
  </div>
    <div id="totalDiv">
      <table id="basic-table">
        <colgroup>
          <col style="width: 10%;">
          <col style="width: 45%;">
          <col style="width: 15%;">
          <col style="width: 15%;">
          <col style="width: 15%;">
        </colgroup>
        <thead>
          <tr>
            <th>번호</th>
            <th>제목</th>
            <th>작성자</th>
            <th>작성일</th>
          </tr>
        </thead>
		<c:forEach items="${story}" var="storyDTO">
			<tr>
				<td>${storyDTO.sId }</td>
				<td><a href="sread?sId=${storyDTO.sId }">${storyDTO.sTitle }</a></td>
				<td>${storyDTO.sNick }</td>
				<td><fmt:formatDate pattern="yyyy-MM-dd" value="${storyDTO.sDate }"/> </td>
			</tr>		
		</c:forEach>
      </table>
     </div>
</div>
</body>
</html>