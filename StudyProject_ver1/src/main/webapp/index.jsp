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

</head>
<body>

	<div class="site-wrap">

		<jsp:include page="WEB-INF/view/header/header.jsp"></jsp:include>

		<div style="height: 70px;"></div>

		<div class="site-blocks-cover overlay"
			style="background-image: url('images/study.jpg'); "
			data-aos="fade" data-stellar-background-ratio="0.5">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-12" data-aos="fade">
						<h1>Search Study</h1>
						<form action="#">
							<div class="row mb-3">
								<div class="col-md-9">
									<div class="row">
											<div class="col-sm-10">
												<div class="dropdown" id="s1">
													<select name="category" id="category">
														<option id="big" value="default" selected="selected">대분류</option>
														<c:forEach var="scateData" items="${category }">
															<option value="${scateData.categorycode}">${scateData.categoryname }</option>
														</c:forEach>
													</select>

												</div>
												<div class="dropdown" id="s2">
													<select name="subcategory" id="subcategory">
														<option id="small" value="default" selected="selected">소분류</option>
														<c:forEach var="scateData" items="${subcategory }">
															<option value="${scateData.subjectcode }">${scateData.subjectname }></option>
														</c:forEach>
													</select>
												</div>
												<div class="dropdown" id="s3">
													<select name="location1" id="location1">
														<option id="do_si" value="default" selected="selected">도,시</option>
														<c:forEach var="data" items="${location1 }">
															<option value="${data.loc1 }">${data.loc1 }></option>
														</c:forEach>
													</select>
												</div>
												<div class="dropdown" id="s4">
													<select name="location2" id="location2">
														<option id="si_gun_gu" value="default" selected="selected">시,군,구</option>
														<c:forEach var="data" items="${location2 }">
															<option value="${data.loc2 }">${data.loc2 }></option>
														</c:forEach>
													</select>
												</div>
											</div>

										<div class="col-md-6 mb-3 mb-md-0">
											<input type="text" class="mr-3 form-control border-0 px-4"
												placeholder="category keywords or subject name ">
										</div>
									</div>
								</div>
								<div class="col-md-3">
									<input type="submit"
										class="btn btn-search btn-primary btn-block" value="Search">
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
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Repellat quos rem ullam, placeat amet.</p>
						<p>
							<a href="#" class="btn btn-primary pill text-white px-4">Read
								More</a>
						</p>
					</div>
					<div class="col-md-6">
						<div class="row">
							<div class="col-md-6"></div>
							<div class="col-md-6"></div>
						</div>
					</div>


					<div class="col-md-2">
						<div class="col-md-12">
							<h3 class="footer-heading mb-4 text-white">Social Icons</h3>
						</div>
						<div class="col-md-12">
							<p>
								<a href="#" class="pb-2 pr-2 pl-0"><span
									class="icon-facebook"></span></a> <a href="#" class="p-2"><span
									class="icon-twitter"></span></a> <a href="#" class="p-2"><span
									class="icon-instagram"></span></a> <a href="#" class="p-2"><span
									class="icon-vimeo"></span></a>

							</p>
						</div>
					</div>
				</div>
				<div class="row pt-5 mt-5 text-center">
					<div class="col-md-12">
						<p>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;
							<script>
								document.write(new Date().getFullYear());
							</script>
							All Rights Reserved | This template is made with <i
								class="icon-heart text-warning" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib</a>
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