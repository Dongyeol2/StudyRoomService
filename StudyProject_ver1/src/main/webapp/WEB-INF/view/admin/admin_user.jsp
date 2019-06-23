<%@page import="spring.biz.user.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<title>Admin_User</title>
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
<link rel="stylesheet" href="../css/table.css">
<link rel="stylesheet" href="../css/button.css">

<link rel="stylesheet" href="../css/style_index.css">

<!--   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
 -->
<style type="text/css">
section {
	width: 100%;
	height: 100%;
	padding: 100px;
}

.tableb {
	margin: 0 auto;
	margin-top: 30px;
}
</style>
</head>

<body>

	<div class="site-wrap">
		<div class="site-mobile-menu">
			<div class="site-mobile-menu-header">
				<div class="site-mobile-menu-close mt-3">
					<span class="icon-close2 js-menu-toggle"></span>
				</div>
			</div>
			<div class="site-mobile-menu-body"></div>
		</div>
		<!-- .site-mobile-menu -->


		<div class="site-navbar-wrap js-site-navbar bg-white">

			<div class="container">
				<div class="site-navbar bg-light">
					<div class="py-1">
						<div>
							<span> <%
							 	UserVO vo = (UserVO) request.getSession().getAttribute("login");
								 %>
								<%=vo.getUsername() %>님 환영합니다.
							</span>
						
						</div>

						<div class="row align-items-center">
							<div class="col-2">
								<h2 class="mb-0 site-logo">
									<a href="index.html">Study<strong class="font-weight-bold">Room</strong>
									</a>
								</h2>
							</div>
							<div class="col-10">
								<nav class="site-navigation text-right" role="navigation">
									<div class="container">
										<ul class="site-menu js-clone-nav d-none d-lg-block">
											<c:if test="${empty login}">
												<li><a class="menu"
													href="${pageContext.request.contextPath}/login.do">로 그
														인</a>
											</c:if>
											<c:if test="${!empty login}">
												<li><a class="menu"
													href="${pageContext.request.contextPath}/admin/ausers.do">회원관리</a></li>
												<li><a class="menu"
													href="${pageContext.request.contextPath}/admin/astudyrooms.do">스터디관리</a></li>
												<li><a class="menu"
													href="${pageContext.request.contextPath}/logout.do">로그아웃</a></li>
											</c:if>
										</ul>
									</div>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


		<div style="height: 70px;"></div>

		<section>
			<div id="userlist">
				<form
					action="${pageContext.request.contextPath}/admin/usersearch.do"
					method="post">
					<table class="tables">
						<tr>
							<td><select name="searchCondition">
									<option value="username">이름</option>
									<option value="email">이메일</option>
									<option value="userid">아이디</option>
							</select> <input type="text" name="searchKeyword"> <input
								type="submit" value="검색" /></td>
						</tr>
					</table>
				</form>
				<table class="tablea">
					<tr>
						<th>userid</th>
						<th>username</th>
						<th>email</th>
						<th>address</th>
						<th>phone</th>
					</tr>


					<form name="f" method="get"
						action="${pageContext.request.contextPath}/user/add.do">

						<!-- 사용자 리스트를 클라이언트에게 보여주기 위하여 출력. -->
						<c:forEach var="user" items="${users}">
							<tr>
								<td>${user.userid}</td>
								<td><a
									href="${pageContext.request.contextPath}/user/view.do?userid=${user.userid}">
										${user.username} </a></td>
								<td>${user.email}</td>
								<td>${user.address}</td>
								<td>${user.phone}</td>

							</tr>
						</c:forEach>
					</form>
				</table>
				<table class="tableb">
					<tr>
						<td><input class="abtn" type="submit" value="사용자 추가" /></td>
					</tr>
				</table>
			</div>

		</section>



	</div>

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



