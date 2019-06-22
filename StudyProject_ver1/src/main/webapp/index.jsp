<%@page import="spring.biz.user.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Job Finder &mdash; Colorlib Website Template</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700|Work+Sans:300,400,700" rel="stylesheet">
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/mediaelement@4.2.7/build/mediaelementplayer.min.css">
    
    
    
    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
  
    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/style_index.css">
	<!-- 드롭다운 박스 
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>-->
    
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
    </div> <!-- .site-mobile-menu -->
    
    
    <div class="site-navbar-wrap js-site-navbar bg-white">
      
      <div class="container">
        <div class="site-navbar bg-light">
          <div class="py-1">
            <div class="row align-items-center">
              <div class="col-2">
                <h2 class="mb-0 site-logo"><a href="index.html">Study<strong class="font-weight-bold">Room</strong> </a></h2>
              </div>
              <div class="col-10">
                <nav class="site-navigation text-right" role="navigation">
                  <div class="container">
                    <div class="d-inline-block d-lg-none ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle text-black"><span class="icon-menu h3"></span></a></div>

                    <ul class="site-menu js-clone-nav d-none d-lg-block">
                      <li class="has-children">
                        <a href="#">영어</a>
                        <ul class="dropdown arrow-top">
                          <li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=11">TOEIC</a></li>
                          <li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=12">TOEIC-SPEAKING</a></li>
                          <li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=13">OPIC</a></li>
                          <li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=14">TEPS</a></li>
                          <li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=15">TOEFL</a></li>
                          <li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=16">G-TELP</a></li>
                          <li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=17">GRE</a></li>
                        </ul>
                      </li>
                      <li class="has-children">
                        <a href="#">일본어</a>
                        <ul class="dropdown arrow-top">
                          <li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=21">JPLT</a></li>
                          <li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=22">JPT</a></li>
                          <li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=23">SJPT</a></li>
                          <li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=24">FLEX</a></li>
                          <li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=25">BJT</a></li>
                          <li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=26">OPIC</a></li>
                        </ul>
                      </li>
                      <li class="has-children">
                        <a href="#">중국어</a>
                        <ul class="dropdown arrow-top">
                          <li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=31">HSK</a></li>
                          <li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=32">BCT</a></li>
                          <li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=33">FLEX</a></li>
                          <li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=34">OPIC</a></li>
                          <li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=35">新HSK</a></li>
                        </ul>
                      </li>
                       <li class="has-children">
                        <a href="#">코딩</a>
                        <ul class="dropdown arrow-top">
                          <li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=51">알고리즘</a></li>
                          <li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=52">공모전</a></li>
                        </ul>
                      </li>
                       <li class="has-children">
                        <a href="#">취업</a>
                        <ul class="dropdown arrow-top">
              				<li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=42">자기소개서</a></li>
							<li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=43">면접</a></li>
							<li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=41">인적성</a></li>
                        </ul>
                      </li>
                      <li class="has-children">
                        <a href="#">기타</a>
                        <ul class="dropdown arrow-top">
							<li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=61">자율</a></li>
							<li><a href="${pageContext.request.contextPath}/subjectlist.do?subjectcode=62">취미</a></li>                       
						</ul>
                      </li>
						<c:if test="${empty login}">
							<li><a class="menu" href="${pageContext.request.contextPath}/login.do">로
									그 인</a>
						</c:if>
						<c:if test="${!empty login}">  
							<li><a class="menu" href="${pageContext.request.contextPath}/write.do"">스터디 예약하기</a></li>
							<li><a class="menu" href="${pageContext.request.contextPath}/mypage.do">마이페이지</a></li>
							<li><a class="menu" href="${pageContext.request.contextPath}/logout.do">로그아웃</a></li>
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

    <div class="site-blocks-cover overlay" style="background-image: url('images/logo.png'); background-size: 50%; background-position: 50% -300px ;" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-12" data-aos="fade">
            <h1>Search Study</h1>
            <form action="#">
              <div class="row mb-3">
                <div class="col-md-9">
                  <div class="row">
                    <div class="dropdown" style="display : inline">
					    <button class="btn btn-default dropdown-toggle" type="button" id="menu1" data-toggle="dropdown">대분류
					    <span class="caret"></span></button>
					    <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
					      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">HTML</a></li>
					      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">CSS</a></li>
					      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">JavaScript</a></li>
					      <li role="presentation" class="divider"></li>
					      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">About Us</a></li>
					    </ul>
					  </div>
					  <div class="dropdown" style="display : inline">
					    <button class="btn btn-default dropdown-toggle" type="button" id="menu1" data-toggle="dropdown">소분류
					    <span class="caret"></span></button>
					    <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
					      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">HTML</a></li>
					      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">CSS</a></li>
					      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">JavaScript</a></li>
					      <li role="presentation" class="divider"></li>
					      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">About Us</a></li>
					    </ul>
					  </div>
                  
                    <div class="col-md-6 mb-3 mb-md-0">
                      <input type="text" class="mr-3 form-control border-0 px-4" placeholder="category keywords or subject name ">
                    </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <input type="submit" class="btn btn-search btn-primary btn-block" value="Search">
                </div>
              </div>
              
            </form>
          </div>
        </div>
      </div>
    </div>
   
    <footer class="site-footer">
      <div class="container">
        

        <div class="row">
          <div class="col-md-4">
            <h3 class="footer-heading mb-4 text-white">About</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat quos rem ullam, placeat amet.</p>
            <p><a href="#" class="btn btn-primary pill text-white px-4">Read More</a></p>
          </div>
          <div class="col-md-6">
            <div class="row">
              <div class="col-md-6">
              </div>
              <div class="col-md-6">
              </div>
            </div>
          </div>

          
          <div class="col-md-2">
            <div class="col-md-12"><h3 class="footer-heading mb-4 text-white">Social Icons</h3></div>
              <div class="col-md-12">
                <p>
                  <a href="#" class="pb-2 pr-2 pl-0"><span class="icon-facebook"></span></a>
                  <a href="#" class="p-2"><span class="icon-twitter"></span></a>
                  <a href="#" class="p-2"><span class="icon-instagram"></span></a>
                  <a href="#" class="p-2"><span class="icon-vimeo"></span></a>

                </p>
              </div>
          </div>
        </div>
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy; <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>document.write(new Date().getFullYear());</script> All Rights Reserved | This template is made with <i class="icon-heart text-warning" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
          </div>
          
        </div>
      </div>
    </footer>
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