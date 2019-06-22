<%@page import="spring.biz.user.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html>
<html>
<head>
<title>Admin</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700|Work+Sans:300,400,700"
	rel="stylesheet">
<link rel="stylesheet" href="fonts/icomoon/style.css">

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/jquery-ui.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/animate.css">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/mediaelement@4.2.7/build/mediaelementplayer.min.css">



<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

<link rel="stylesheet" href="css/aos.css">

<link rel="stylesheet" href="css/style_index.css">
<style type="text/css">
	iframe{
		position: absolute;
		top: 150px;
		left: 100px;
		width: 80%;
		height: 100%;
/*
		border: none;
	*/	
		
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
											<li class="has-children"><a href="${pageContext.request.contextPath}/admin/ausers.do">회원관리</a></li>
											<li class="has-children"><a href="${pageContext.request.contextPath}/admin/astudyrooms.do">스터디관리</a></li>
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

		<article>
			<iframe src="" name="iframe" >
				<div>
					관리자 페이지 입니다.
				</div>			
			</iframe>
		</article>


	
	</div>

	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/jquery-migrate-3.0.1.min.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/jquery.countdown.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/bootstrap-datepicker.min.js"></script>
	<script src="js/aos.js"></script>


	<script src="js/mediaelement-and-player.min.js"></script>

	<script src="js/main_index.js"></script>

</body>
</html>



