<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="spring.biz.user.vo.UserVO"%>

<!DOCTYPE html>
<html>
<head>
<title>Mypage_AppliedList</title>
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
<!-- <link rel="stylesheet" href="../css/myinfo_table.css"> -->
<link rel="stylesheet" href="../css/table.css">
<link rel="stylesheet" href="../css/button.css">

</head>
<body>
	<h2>"${studyno}"</h2>
	<h2>지금 함께 하고 있는 스터디원</h2>
	
	<table class="tablea" style="margin : 30px; ">	
		<c:if test="${empty memberList }">
			<tr>
				<td>
					<div class="noResult">
						<p>스터디를 함께 하는 스터디원이 없습니다. </p>
					</div>
				</td>
			</tr>
		</c:if>

		<c:if test="${!empty memberList}">
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>이메일</th>
			<th>전화번호</th>
		</tr>
		<c:forEach var="user" items="${memberList}" >	
			<tr>
				<td >${user.userid} </td>
				<td >${user.username} </td>
				<td >${user.email} </td>
				<td >${user.phone} </td>
				
	
			</tr>
		</c:forEach>
		</c:if>
	</table>
	<div style="width: 100%; height: 50px;"></div>
	<h2>스터디 신청자</h2>
	<table class="tablea" style="margin : 30px; ">	
		<c:if test="${empty applyMeberList }">
			<tr>
				<td>
					<div class="noResult">
						<p>스터디를 신청한 스터디원이 없습니다. </p>
					</div>
				</td>
			</tr>
		</c:if>

		<c:if test="${!empty applyMeberList}">
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>이메일</th>
			<th>전화번호</th>
			<th>&nbsp; </th>
			<th>&nbsp;</th>
		</tr>
		<c:forEach var="user" items="${applyMeberList}" >	
			<tr>
				<td >${user.userid} </td>
				<td >${user.username} </td>
				<td >${user.email} </td>
				<td >${user.phone} </td>
				<td><button class="abtn">수락</button></td>
				<td><button class="abtn">거절</button></td>
				<td></td>
				
	
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

