<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table>
	<tr>
	    <th>no.</th>
	    <th>제목</th>
	    <th>과목</th>
	    <th>위치</th>
	    <th>매니저아이디</th>
	    <th>게시일</th>
	    <th>모집상태</th>
 	</tr>
	
		<c:forEach var="studyList" items="${studyLists}" >
			<tr>
				<td >${studyList.studyno}	</td>
				<td >${studyList.studytitle}	</td>
				<td >${studyList.subjectcode2}	</td>
				<td >${studyList.locationcode2}	</td>
				<td >${studyList.managerid}	</td>
				<td >${studyList.regdate}	</td>
				<td >${studyList.stateName}	</td>
			</tr>
		</c:forEach>
</table>
  
 

</body>
</html>