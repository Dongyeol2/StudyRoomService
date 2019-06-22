<%@page import="spring.biz.user.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="EUC-KR">
<link rel="stylesheet" href="assets/css/mypage.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js">
	
</script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/series-label.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script>
	//사진	

	//회원정보 변경
	
	

	//스터디 목록
	function modify(url) {
		document.getElementById("mainFrame").src = "${pageContext.request.contextPath}/modify.do";
	}
	function myStudyList(url) {
		document.getElementById("mainFrame").src = "${pageContext.request.contextPath}/myStudyList.do";
	}

	//스터디 리스트
	$(function() {
		$('#studylist').click(function() {

		});
	});
	//홈
	$(function() {
		$("#home").click(
			function() {
				window.location.href = "${pageContext.request.contextPath}/index.jsp";
			});
	});
</script>
<title>Insert title here</title>
</head>
<body>
	<div id="header"></div>
	<div id="sidebar">
		<nav class="accordion arrows">
			<div class="img" onload="javascript:on_loads();">
				<img id="packData_image" src="#" />

			</div>
			<div>
				<% if(session.getAttribute("User") != null){
					UserVO vo =(UserVO) session.getAttribute("User");%>
					<%= vo.getUsername()%>
				<%}%> 님 환영합니다.
			</div>
			<div>
				<table border="0" cellpadding="0" cellspacing="1" width="610" bgcolor="BBBBBB">
		  <tr>
			<td width=120 align=center bgcolor="E6ECDE" height="22">사용자 아이디</td>
			<td width=490 bgcolor="ffffff" style="padding-left:10">
				 ${user.userid}
			</td>
		  </tr>
		  <tr>
			<td width=120 align=center bgcolor="E6ECDE" height="22">이름</td>
			<td width=490 bgcolor="ffffff" style="padding-left:10">
				 				 ${user.username}
			</td>
		  </tr>
		  <tr>
			<td width=120 align=center bgcolor="E6ECDE" height="22">이메일주소</td>
			<td width=490 bgcolor="ffffff" style="padding-left:10">
				 				 ${user.email}
			</td>
		  </tr>		
		  <tr>
			<td width=120 align=center bgcolor="E6ECDE" height="22">전화번호</td>
			<td width=490 bgcolor="ffffff" style="padding-left:10">
				 				 ${user.phone}
			</td>
		  </tr>		
		  <tr>
			<td width=120 align=center bgcolor="E6ECDE" height="22">주소</td>
			<td width=490 bgcolor="ffffff" style="padding-left:10">
				 				 ${user.address}
			</td>
		  </tr>		
	  </table>
			</div>
			<div>
				<a href="${pageContext.request.contextPath}/logout.do">로그아웃</a>
			</div>
			<header class="box">
				<label for="acc-close" class="box-title">Menu</label>
			</header>
			<input type="radio" name="accordion" id="cb1" />
			<section class="box">
				<label class="box-title" for="cb1">회원정보 수정</label> <label
					class="box-close" for="acc-close"></label>
				<div class="box-content">
					<button type="button" value='New Page'  onclick = "modify('New.php')">수정페이지</button>
					<!-- <button value="수정" onclick = "changeIframeUrl('New.php')">수정페이지</button> -->				
					<%-- <button type="button" value="수정"><a href = "${pageContext.request.contextPath}/modify.do" target="mainFrame">회원정보수정</a></button> --%>
				</div>
			</section>


			<input type="radio" name="accordion" id="cb2" />
			<section class="box">
				<label class="box-title" for="cb2">나의 스터디 목록</label> <label
					class="box-close" for="acc-close"></label>
				<div class="box-content">
					<%-- <button type="button" onclick="location.href='${pageContext.request.contextPath}/myStudyList.do'">목록</button> --%>
					<button type="button" value='New Page' onclick="myStudyList('New.php')">목록</button>
				</div>
				<!-- <div class="box-content">
					<button type="button" onclick="study2('New.php')">알고리즘 스터디</button>
				</div> -->
			</section>

			<input type="radio" name="accordion" id="cb3" />
			<section class="box">
				<label class="box-title" for="cb3">예약 스터디</label> <label
					class="box-close" for="acc-close"></label>
				<div class="box-content">
					<button id="studylist">스터디 목록</button>
				</div>
			</section>
			<input type="radio" name="accordion" id="cb4" />
			<section class="box">
				<label class="box-title" for="cb4">홈으로</label> <label
					class="box-close" for="acc-close"></label>
				<div class="box-content">
					<button id="home">홈</button>
				</div>
			</section>
			<input type="radio" name="accordion" id="acc-close" />
		</nav>
	</div>
	<div id="maincontent">
		<iframe width="80%" height="500" scrolling="yes" name="mainFrame"
			id="mainFrame"></iframe>
		​

	</div>


	<div id="footer"></div>
</body>
</html>
</html>