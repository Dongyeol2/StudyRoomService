<%@page import="spring.biz.user.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html>
<html lang="en">
<head>
<title>Job Finder &mdash; Colorlib Website Template</title>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- 드롭다운 박스 
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>-->
<script language="JavaScript">
	$(function() {
		getCategoryList(); //Category가져오기
		getLoc1List(); //Location1가져오기

		$('#category').change(function() {
			if ($('#category option:selected').val() == "default") {
				$("#subcategory").empty();
				$("#subcategory").append("<option value='default'>소분류</option>");

			} else {
				getSubCategory();
			}
		})
		
		$('#location1').change(function() {
			if($('#location1 option:selected').val() == "default"){
				$("#location2").empty();   
				$("#location2")
				.append("<option value='default'>전체</option>");
			}else{
				getLoc2List();
			}
		})

	});

	function getCategoryList() {
		$.ajax({  
			type : "GET",
			url : "./getcategorylist.do",
			//data : {categoryname : $('#category1 option:selected').val()},
			dataType : 'json',
			success : function(data) {
				if(data){
					if(data.length > 0){  
						//$("#location1").empty();   
						var html = "";
						for (var i = 0; i < data.length; i++) {  
							$("#category")
							.append("<option value='"+data[i].categorycode+"'>"+ data[i].categoryname + "</option>");
						}
					}
				}
			},  
			error : function(request, status, error) {
		        console.log('code:' + request.status + '\n' + 'message:' + request.responseText + '\n' + 'error:' + error);	
			}
		});
	}
	
	
	function getSubCategory() {
		$.ajax({
			type : "GET",
			url : "./getsubcategorylist.do",
			data : {categorycode : $('#category option:selected').val()},
			dataType : 'json',
			success : function(data) {
				if (data) {
					if (data.length > 0) {
						$("#subcategory").empty();
						var html = "";
						for (var i = 0; i < data.length; i++) {
							$("#subcategory")
									.append(
											"<option value='"+data[i].subcategorycode+"'>"+data[i].subjectname+"</option>");
						}
					}
				}
			},
			error : function(request, status, error) {
				console.log('code:' + request.status + '\n' + 'message:'
						+ request.responseText + '\n' + 'error:' + error);
			}

		});

	}
	
	function getLoc1List() {
		$.ajax({  
			type : "GET",
			url : "./getloc1list.do",
			//data : {categoryname : $('#category1 option:selected').val()},
			dataType : 'json',
			success : function(data) {
				if(data){
					if(data.length > 0){  
						//$("#location1").empty();   
						var html = "";
						for (var i = 0; i < data.length; i++) {  
							$("#location1")
							.append("<option value='"+data[i]+"'>"+ data[i] + "</option>");
						}
					}
				}
			},  
			error : function(request, status, error) {
		        console.log('code:' + request.status + '\n' + 'message:' + request.responseText + '\n' + 'error:' + error);	
			}
			
		});
		
	}

	function getLoc2List() {
		$.ajax({  
			type : "GET",
			url : "./getloc2list.do",
			data : {loc1name : $('#location1 option:selected').val()},
			dataType : 'json',
			success : function(data) {
				if(data){
					if(data.length > 0){  
						$("#location2").empty();   
						var html = "";
						for (var i = 0; i < data.length; i++) {  
							$("#location2")
							.append("<option value='"+data[i].locationcode+"'>"+ data[i].loc2 + "</option>");
						}
					}
				}
			},  
			error : function(request, status, error) {
		        console.log('code:' + request.status + '\n' + 'message:' + request.responseText + '\n' + 'error:' + error);	
			}
			
		});
		
	}
</script>

<style type="text/css">
select{
	float: left;
}

#category1,#category{
	width: 6em;
}

#location1{
	width: 10em;
}

#location2{
	width: 7em;
}

</style>
</head>

<body>

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
								<img style="width: 20%; height: 20%;" alt="logo_studyheaven" src="images/logo.png">
								<h2 class="mb-0 site-logo">
									<a href="index.jsp">Study<strong class="font-weight-bold">Room</strong>
									</a>
								</h2>
							</div>
							<div class="col-10">
								<nav class="site-navigation text-right" role="navigation">
									<div class="container">
										<div class="d-inline-block d-lg-none ml-md-0 mr-auto py-3">
											<a href="#"
												class="site-menu-toggle js-menu-toggle text-black"><span
												class="icon-menu h3"></span></a>
										</div>

										<ul class="site-menu js-clone-nav d-none d-lg-block">
											<li class="has-children"><a href="${pageContext.request.contextPath}/categorylist.do?categorycode=1">영어</a>
												<ul class="dropdown arrow-top">
													<li><a
														href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=11">TOEIC</a></li>
													<li><a
														href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=12">OPIC</a></li>
													<li><a
														href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=13">TOEIC-SPEAKING</a></li>
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