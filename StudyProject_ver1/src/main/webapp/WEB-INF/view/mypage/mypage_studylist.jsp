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

<link
	href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700|Work+Sans:300,400,700"
	rel="stylesheet">
<link rel="stylesheet" href="../fonts/icomoon/style.css">

<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../css/magnific-popup.css">
<link rel="stylesheet" href="../css/jquery-ui.css">
<link rel="stylesheet" href="../css/owl.carousel.min.css">
<link rel="stylesheet" href="../css/owl.theme.default.min.css">
<link rel="stylesheet" href="../css/bootstrap-datepicker.css">
<link rel="stylesheet" href="../css/animate.css">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/mediaelement@4.2.7/build/mediaelementplayer.min.css">



<link rel="stylesheet" href="../fonts/flaticon/font/flaticon.css">

<link rel="stylesheet" href="../css/aos.css">

<link rel="stylesheet" href="../css/style_index.css">
<link rel="stylesheet" href="../css/result.css">
<link rel="stylesheet" href="../css/myinfo_table.css">

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
			<th>방장</th>
		</tr>
		<c:forEach var="studyList" items="${studyLists}" >	
			<tr>
				<td >${studyList.studyno} </td>
				<td ><a href ="${pageContext.request.contextPath}/mypage/applicationListBystudyno.do?studyno=${studyList.studyno}">${studyList.studytitle}</a> </td>
				<%-- <td >${studyList.studytitle} </td> --%>
				<td >${studyList.subjectcode2} </td>
				<td >${studyList.locationcode2} </td>
				<td >${studyList.managerid} </td>
				<td >${studyList.regdate} </td>
				<td >${studyList.stateName} </td>
				<td>${studyList.isManager}</td>
			</tr>
		</c:forEach>
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

