<%@ page contentType="text/html; charset=utf-8" isELIgnored="false"%>
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
						<a href="index.jsp">Study Heaven</a>
					</h1>
					<span>Welcome!!</span>
				</div>

				<!-- Nav -->
				<nav id="nav">
					<ul>
						<li><a href="${pageContext.request.contextPath}/list.do">스터디
								찾기</a>
							<ul>
								<li><a href="#">영어</a>
									<ul>
										<li><a
											href="${pageContext.request.contextPath}/toeiclist.do">토익</a></li>
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
						<li><a href="${pageContext.request.contextPath}/write.do">스터디
								만들기</a></li>
						<li><a href="#">스터디 예약하기</a></li>

						<c:if test="${empty login}">
							<li><a href="${pageContext.request.contextPath}/login.do">로
									그 인</a>
						</c:if>
						<c:if test="${!empty login}">
							<li><a href="#">마이페이지</a></li>
							<li><a href="${pageContext.request.contextPath}/logout.do">로그아웃</a>
						</c:if>
					</ul>
				</nav>
			</header>
		</div>

		<div>
			<h5>회 원 검 색</h5>
			<form action="${pageContext.request.contextPath}/user/search.do"
				method="post">
				<table>
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
					<th>studyno</th>
					<th>studytitle</th>
					<th>membercnt</th>
					<th>managerid</th>
					<th>regdate</th>
				</tr>


				<form name="f" method="get"
					action="${pageContext.request.contextPath}/write.do">

					<!-- 사용자 리스트를 클라이언트에게 보여주기 위하여 출력. -->
					<c:forEach var="room" items="${rooms}">
						<tr>
							<td>${room.studyno}</td>
							<td>${room.studytitle}</td>
							<td>${room.membercnt}</td>
							<td>${room.managerid}</td>
							<td>${room.regdate}</td>

						</tr>
					</c:forEach>
			</table>
			<table>
				<tr>
					<td><input type="submit" value="방 추가" /></td>
				</tr>
			</table>
			</form>
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