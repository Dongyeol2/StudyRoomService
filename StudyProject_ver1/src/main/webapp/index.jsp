<%@page import="spring.biz.user.vo.UserVO"%>
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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

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
					<h3>
						<% if(session.getAttribute("User") != null){
							UserVO vo =(UserVO) session.getAttribute("User");%>
							<%= vo.getUsername()%>
						<%}%> 님 환영합니다.
					</h3>
					
				</div>

				<!-- Nav -->
				<nav id="nav">
					<ul>
						
						<li>
							<a href="#">영어</a>
							<ul>
								<li><a href="#">토익</a></li>
								<li><a href="#">토스</a></li>
								<li><a href="#">오픽</a></li>
							</ul>
						</li>
						<li>
							<a href="#">일본어</a>
							<ul>
								<li><a href="#">JPLT</a></li>
								<li><a href="#">JPT</a></li>
								<li><a href="#">SJPT</a></li>
							</ul>
						</li>
						<li>
							<a href="#">중국어</a>
							<ul>
								<li><a href="#">HSK</a></li>
								<li><a href="#">BCT</a></li>
								<li><a href="#">FLEX</a></li>
							</ul>
						</li>
						<li>
							<a href="#">코딩</a>
							<ul>
								<li><a href="#">알고리즘</a></li>
								<li><a href="#">공모전</a></li>
								
							</ul>
						</li>
						<li>
							<a href="#">취업</a>
							<ul>
								<li><a href="#">자소서</a></li>
								<li><a href="#">면접</a></li>
								<li><a href="#">인적성</a></li>
							</ul>
						</li>
						<li>
							<a href="#">기타</a>
							<ul>
								<li><a href="#">자율</a></li>
								<li><a href="#">취미</a></li>
							</ul>
						</li>
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
							<li>
								<table >
								   <tr>
								     <td>
								        <select name="category1" id = "category1" onchange="selectCategory1(this.value);">
								           <option value="">카테고리1</option>
								           <option value="명어"> 영어 </option>
								           <option value="일본어"> 일본어</option>
								           <option value="중국어"> 중국어 </option>
								           <option value="취업"> 취업 </option>
								           <option value="코딩"> 코딩 </option>
								           <option value="기타"> 기타 </option>
								        </select>
								        
								        <select name="category2">
								           <option value="">카테고리2</option>
								           
								        </select>
								        <select name="location1">
								           <option value="서울">지역</option>
								           <option value="서울"> 서울 </option>
								           <option value="경기"> 경기</option>
								           <option value="인천"> 인천 </option>
								        </select>
								        <select name="location2">
								           <option value="종로구"> 종로구 </option>
								           <option value="중구"> 중구</option>
								           <option value="용산구"> 용산구 </option>
								           <option value="성동구"> 광진구 </option>
								        </select>
								        <input type="text" name="searchKeyword">
								        <input  type="submit" value="검색"/>
								     </td>
								   </tr>
								</table>
								</li><br>
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