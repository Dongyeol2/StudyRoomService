<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="spring.biz.user.vo.UserVO"%>

<!DOCTYPE html>
<html>
<head>
<title>Mypage</title>
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
<script type="text/javascript">
	function confirmLogout() {
		var result = confirm("정말로 로그아웃 하시겠습니까?");		
		
		if (result) {
			alert("로그아웃이 완료되었습니다.");			
			locataion.href="${pageContext.request.contextPath}/logout.do";
		}
	}
</script>
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
									<a href="${pageContext.request.contextPath}/index.jsp">Study<strong class="font-weight-bold">Room</strong>
									</a>
								</h2>
							</div>
							<div class="col-10">
								<nav class="site-navigation text-right" role="navigation">
									<div class="container">
										<ul class="site-menu js-clone-nav d-none d-lg-block">
											<li class="has-children"><a href="${pageContext.request.contextPath}/categorylist.do?categorycode=1">영어</a>
												<ul class="dropdown arrow-top">
													<li><a
														href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=11">TOEIC</a></li>
													<li><a
														href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=12">TOEIC-SPEAKING</a></li>
													<li><a
														href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=13">OPIC</a></li>
													<li><a
														href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=14">TEPS</a></li>
													<li><a
														href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=15">TOEFL</a></li>
													<li><a
														href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=16">G-TELP</a></li>
													<li><a
														href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=17">GRE</a></li>
												</ul></li>
											<li class="has-children"><a href="${pageContext.request.contextPath}/categorylist.do?categorycode=2">일본어</a>
												<ul class="dropdown arrow-top">
													<li><a
														href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=21">JPLT</a></li>
													<li><a
														href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=22">JPT</a></li>
													<li><a
														href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=23">SJPT</a></li>
													<li><a
														href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=24">FLEX</a></li>
													<li><a
														href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=25">BJT</a></li>
													<li><a
														href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=26">OPIC</a></li>
												</ul></li>
											<li class="has-children"><a href="${pageContext.request.contextPath}/categorylist.do?categorycode=3">중국어</a>
												<ul class="dropdown arrow-top">
													<li><a
														href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=31">HSK</a></li>
													<li><a
														href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=32">BCT</a></li>
													<li><a
														href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=33">FLEX</a></li>
													<li><a
														href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=34">OPIC</a></li>
													<li><a
														href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=35">新HSK</a></li>
												</ul></li>
											<li class="has-children"><a href="${pageContext.request.contextPath}/categorylist.do?categorycode=4">코딩</a>
												<ul class="dropdown arrow-top">
													<li><a
														href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=51">알고리즘</a></li>
													<li><a
														href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=52">공모전</a></li>
												</ul></li>
											<li class="has-children"><a href="${pageContext.request.contextPath}/categorylist.do?categorycode=5">취업</a>
												<ul class="dropdown arrow-top">
													<li><a
														href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=42">자기소개서</a></li>
													<li><a
														href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=43">면접</a></li>
													<li><a
														href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=41">인적성</a></li>
												</ul></li>
											<li class="has-children"><a href="${pageContext.request.contextPath}/categorylist.do?categorycode=6">기타</a>
												<ul class="dropdown arrow-top">
													<li><a
														href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=61">자율</a></li>
													<li><a
														href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=62">취미</a></li>
												</ul></li>
											<c:if test="${empty login}">
												<li><a class="menu"
													href="${pageContext.request.contextPath}/login.do">로 그
														인</a>
												<li><a class="menu"
													href="${pageContext.request.contextPath}/user/add.do">회 원 가 입</a>
											</c:if>
											<c:if test="${!empty login}">
												<li><a class="menu"
													href="${pageContext.request.contextPath}/write.do"">스터디
														만들기</a></li>
												<li><a class="menu"
													href="${pageContext.request.contextPath}/mypage/mypage.do">마이페이지</a></li>
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
	
	</div>
	<div class="result">
		<aside>
			<div class="myprofile">
				<table class="profile">
					<tr>
						<td colspan="2">
						<div>
							<a><img id="myimg" src="../images/logo.png"></a>
						</div>
						</td>
					</tr>
					<tr>
						<td>
							<b> ${login.username }</b> &nbsp; &nbsp;님 
						</td>
						<td>
							<span>알림 : </span>
						</td>
					</tr>
					<tr>
						<td><a class="profile_a" href="${pageContext.request.contextPath}/logout.do" onclick="confirmLogout">로그아웃</a></td>
						<td><a class="profile_a" href="">정보수정</a></td>
					</tr>
				</table>
			</div>
			<div class="sidemenu">
			<table id="aa">
				<tr>
					<td>
				<ul class="sidemenu">
				  <li class="sidemenu"><a class="active" href="#">&nbsp;</a></li>
				  <li class="sidemenu"><a href="${pageContext.request.contextPath}/mypage/mypage_studylist.do" target="iframe">나의 스터디 목록</a></li>
				  <li class="sidemenu"><a href="${pageContext.request.contextPath}/mypage/applicationList.do" target="iframe">신청받은 리스트</a></li>
				  <%-- <li class="sidemenu"><a href="${pageContext.request.contextPath}/mypage/mypage_modify.do" target="iframe">회원 정보 수정</a></li> --%>
				  <li class="sidemenu"><a href="${pageContext.request.contextPath}/mypage/mypage_myinfo.do" target="iframe">회원 정보 수정</a></li>
				</ul>
					</td>
				</tr>
			</table>
			</div>
		</aside>
		
		<section>
			<iframe name="iframe" width="100%" height="100%" style="border:none;   src = "${pageContext.request.contextPath}/mypage/mypage_myinfo.do">
				
			</iframe>
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

