<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>Study Heaven</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
</head>

<body class="is-preload homepage">     
	<div id="page-wrapper">

		<!-- Header -->
		<div id="header-wrapper">
			<header id="header" class="container">

				<!-- Logo -->
				<div id="logo">
					<h1>
						<a href="index.html">Study Heaven</a>
					</h1>
					<span>환영합니다.</span>
				</div>

				<!-- Nav -->
				<nav id="nav">
					<ul>
						<li class="current"><a href="index.html">Welcome</a></li>
						<li><a href="#">스터디 찾기</a>
							<ul>
								<li><a href="#">영어</a>
									<ul>
										<li><a href="#">토익</a></li>
										<li><a href="#">토스</a></li>
										<li><a href="#">오픽</a></li>
										<li><a href="#">기타</a></li>
									</ul></li>
								<li><a href="#">일본어</a>
									<ul>
										<li><a href="#">일본어1</a></li>
										<li><a href="#">일본어2</a></li>
										<li><a href="#">일본어3</a></li>
										<li><a href="#">기타</a></li>
									</ul></li>
								<li><a href="#">코딩</a>
									<ul>
										<li><a href="#">직무이론</a></li>
										<li><a href="#">공모전</a></li>
										<li><a href="#">알고리즘</a></li>
										<li><a href="#">기타</a></li>
									</ul></li>
								<li><a href="#">기타</a></li>
							</ul></li>
						<li><a href="#">스터디 예약하기</a></li>

						<c:if test="${empty login}">
							<li><a href="${pageContext.request.contextPath}/login.do">로
									그 인</a>
						</c:if>
						<c:if test="${!empty login}">
							<li><a href="${pageContext.request.contextPath}/admin/adminpage.do">마이페이지</a></li>
						</c:if>
					</ul>
				</nav>
			</header>
		</div>

		<!-- Banner -->
		<div id="banner-wrapper">
			<div id="banner" class="box container">
				<div class="row">
					<div class="col-7 col-12-medium">
						<h2>안녕하세요.<br> 스터디 천국입니다.</h2><br>
						<p style="font-size: 30px">스터디를 찾기위한 최적의 공간</p>
					</div>
					<div class="col-5 col-12-medium">
						<ul>
							<li><a href="${pageContext.request.contextPath}/write.do"
								class="button large icon solid fa-arrow-circle-right">스터디 찾기</a></li><br>
							<li><a href="#"
								class="button alt large icon solid fa-question-circle">스터디 예약</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
</body>
</html>














<%-- <!-- Header -->
		<header id="header">
			<h2>menu 클릭하세요</h2>
			<ul>
				<c:if test="${empty login}">
					<li><a href="${pageContext.request.contextPath}/login.do">로
							그 인</a>
					<li><a href="${pageContext.request.contextPath}/user/add.do">회
							원 가 입</a>
					<li><a
						href="${pageContext.request.contextPath}/admin/adminpage.do">adminpage</a>
				</c:if>

				<c:if test="${!empty login}">
					<li><a href="${pageContext.request.contextPath}/write.do">스터디
							등록</a>
					<li><a href="${pageContext.request.contextPath}/hello.do">hello.do</a>
					<li><a href="${pageContext.request.contextPath}/report.do">이미지등록</a>
					<li><a href="${pageContext.request.contextPath}/logout.do">로그아웃</a>
					<li><a href="${pageContext.request.contextPath}/user/add.do">User
							등록</a></li>
					<li><a href="${pageContext.request.contextPath}/user/list.do">User
							목록</a></li>
				</c:if>
			</ul>
		</header>
	</div> --%>