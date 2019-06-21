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
<script language="JavaScript">
$(function() {
	getLoc1List();
	
	$('#category1').change(function() {
		if($('#category1 option:selected').val() == "default"){
			$("#category").empty();   
			$("#category")
			.append("<option value='default'>소분류</option>");
		}else{
			changeSubCategory();
		}
	})
	
	$('#location1').change(function() {
		if($('#location1 option:selected').val() == "default"){
			$("#location2").empty();   
			$("#location2")
			.append("<option value='default'>--전체--</option>");
		}else{
			getLoc2List();
		}
	})
});

function changeSubCategory() {
		$.ajax({  
			type : "GET",
			url : "./changecategory.do",
			data : {categoryname : $('#category1 option:selected').val()},
			dataType : 'json',
			success : function(data) {
				if(data){
					if(data.length > 0){  
						$("#category").empty();   
						var html = "";
						for (var i = 0; i < data.length; i++) {
							$("#category")
							.append("<option value='"+data[i].subjectname+"'>"+ data[i].subjectname + "</option>");
						}
					}
				}
			},  
			error : function(request, status, error) {
		        console.log('code:' + request.status + '\n' + 'message:' + request.responseText + '\n' + 'error:' + error);	
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
								<li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=11">토익</a></li>
								<li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=12">토스</a></li>
								<li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=13">오픽</a></li>
							</ul>
						</li>
						<li>
							<a href="#">일본어</a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=21">JPLT</a></li>
								<li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=22">JPT</a></li>
								<li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=23">SJPT</a></li>
							</ul>
						</li>
						<li>
							<a href="#">중국어</a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=31">HSK</a></li>
								<li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=32">BCT</a></li>
								<li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=33">FLEX</a></li>
							</ul>
						</li>
						<li>
							<a href="#">코딩</a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=41">알고리즘</a></li>
								<li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=42">공모전</a></li>
								
							</ul>
						</li>
						<li>
							<a href="#">취업</a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=51">자소서</a></li>
								<li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=52">면접</a></li>
								<li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=53">인적성</a></li>
							</ul>
						</li>
						<li>
							<a href="#">기타</a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=61">자율</a></li>
								<li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=62">취미</a></li>
							</ul>
						</li>
						<li><a href="#">스터디 예약하기</a></li>

						<c:if test="${empty login}">
							<li><a href="${pageContext.request.contextPath}/login.do">로
									그 인</a>
						</c:if>
						<c:if test="${!empty login}">  
							<li><a href="${pageContext.request.contextPath}/mypage.do">마이페이지</a></li>
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
								        <select name="category1" id="category1" >
									     	<option id="big" value="default" selected="selected">대분류</option>
										     <c:forEach var="scateData" items="영어,일본어,중국어,취업,코딩,기타">
										     	<option value="${scateData}">${scateData}</option>
										     </c:forEach>
	     								</select>
								        
								        <select name="category" id="category" >
									     	<option id="small" value="default" selected="selected">소분류</option>
										     <c:forEach var="scateData" items="${subcategory }">
										     	<option value="${scateData.categoryname }">${scateData.categoryname }></option>
										     </c:forEach>
	     								</select>
	     								<select name="location1" id="location1" >
									     	<option id="do_si" value="default" selected="selected">도,시</option>
										     <c:forEach var="data" items="${location1 }">
										     	<option value="${data.loc1 }">${data.loc1 }></option>
										     </c:forEach>
	     								</select>
	     								<select name="location2" id="location2" >
									     	<option id="si_gun_gu" value="default" selected="selected">시,군,구</option>
										     <c:forEach var="data" items="${location2 }">
										     	<option value="${data.loc2 }">${data.loc2 }></option>
										     </c:forEach>
	     								</select>
								        <input type="text" name="searchKeyword">
								        <input  type="submit" value="검색"/>
								     </td>
								   </tr>
								</table>
								</li><br>
							<li><a href="${pageContext.request.contextPath}/write.do"
								class="button alt large icon solid fa-question-circle">스터디 신청</a></li>
						
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