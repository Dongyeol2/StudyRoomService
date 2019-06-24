<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>검색 결과</h2>
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
<c:forEach var="StudyRoomVO" items="${studyrooms}" >	
	<tr>
	<td >${StudyRoomVO.studyno} </td>
	<td >${StudyRoomVO.studytitle} </td>
	<td >${StudyRoomVO.subjectcode2} </td>
	<td >${StudyRoomVO.locationcode2} </td>
	<td >${StudyRoomVO.managerid} </td>
	<td >${StudyRoomVO.regdate} </td>
	<td >${StudyRoomVO.stateName} </td>
	</tr>
	</c:forEach>
	</table>
</body>
</html>