<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table class="tablea">
  
 

	<!-- 사용자 리스트를 클라이언트에게 보여주기 위하여 출력. -->
 	<c:forEach var=studyList items="${studyLists}" >
	  	<tr>
		<td >${studyList.studytitle}	</td>
		<td >${studyList.locationcode}</td>
		<td >${studyList.subjectcode}</td>
		<td >${studyList.managerid}</td>
		
		</tr>
 	 </c:forEach>
</table>
</body>
</html>