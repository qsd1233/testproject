<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="false" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
</head>
<body>
  <div id="wrap-admin">
    <header>
      <div>
        <h1>공지사항</h1>
      </div>
    </header>
  </div>
    <div class="contents">
      <table class="basic-table">
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
		<c:forEach items="${notice}" var="noticeDTO">
			<tr>
				<td>${noticeDTO.nId }</td>
				<td><a href="nread?nId=${noticeDTO.nId }">${noticeDTO.nTitle }</a></td>
				<td>${noticeDTO.nNick }</td>
				<td><fmt:formatDate pattern="yyyy-MM-dd" value="${noticeDTO.nDate }"/> </td>
			</tr>		
		</c:forEach>
      </table>
     </div>
</body>
</html>