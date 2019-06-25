<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="spring.biz.user.vo.UserVO"%>

<!DOCTYPE html>
<html>
<head>
<title>Mypage_MyStudyList</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="shortcut icon" type="image⁄x-icon" href="../images/logo.png">
<link rel="stylesheet" href="../css/table.css">

</head>
<body>
<h2>나의 스터디 목록</h2>
	<table class="tablea">
		<c:if test="${empty studyLists }">
			<tr>
				<td>
					<div class="noResult">
						<p>현재 참여 중인 스터디가 없습니다.</p>
					</div>
				</td>
			</tr>
		</c:if>

		<c:if test="${!empty studyLists}">
			<tr>
				<th>no.</th>
				<th>제목</th>
				<th>과목</th>
				<th>위치</th>
				<th>매니저아이디</th>
				<th>게시일</th>
				<th>모집상태</th>
				<th>방장</th>
			</tr>
			<c:forEach var="studyList" items="${studyLists}">
				<tr>
					<td>${studyList.studyno}</td>
					<td><a
						href="${pageContext.request.contextPath}/mypage/applicationListBystudyno.do?studyno=${studyList.studyno}">${studyList.studytitle}</a>
					</td>
					<%-- <td >${studyList.studytitle} </td> --%>
					<td>${studyList.subjectcode2}</td>
					<td>${studyList.locationcode2}</td>
					<td>${studyList.managerid}</td>
					<td>${studyList.regdate}</td>
					<td>${studyList.stateName}</td>
					<td>${studyList.isManager}</td>
				</tr>
			</c:forEach>
		</c:if>
	</table>
	<script src="../js/jquery-3.3.1.min.js"></script>
	<script src="../js/jquery-migrate-3.0.1.min.js"></script>
	<script src="../js/jquery-ui.js"></script>
	<script src="../js/popper.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/owl.carousel.min.js"></script>
	<script src="../js/jquery.stellar.min.js"></script>
	<script src="../js/jquery.countdown.min.js"></script>
	<script src="../js/jquery.magnific-popup.min.js"></script>
	<script src="../js/bootstrap-datepicker.min.js"></script>
	<script src="../js/aos.js"></script>


	<script src="../js/mediaelement-and-player.min.js"></script>

	<script src="../js/main_index.js"></script>

</body>
</html>

