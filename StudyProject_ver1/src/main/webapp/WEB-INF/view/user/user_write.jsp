<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="icon" type="image/png" href="images/logo.png" />
<title>Sign Up</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="../css/style_signup.css">

<script language="JavaScript">
	function checkPwd() {
		var f1 = document.forms[0];
		var pw1 = f1.userpw.value;
		var pw2 = f1.userpwConfirm.value;
		if (pw1 != pw2) {
			document.getElementById('checkPwd').style.color = "red";
			document.getElementById('checkPwd').innerHTML = "동일한 암호를 입력하세요.";
		} else {
			document.getElementById('checkPwd').style.color = "blue";
			document.getElementById('checkPwd').innerHTML = "암호가 확인 되었습니다.";
		}
	}

	$(".idCheck").click(function() {
		var query = {
			userid : $("#userid").val()
		};

		$.ajax({
			url : "/idCheck",
			type : "post",
			data : query,
			success : function(data) {

				if (data == 1) {
					$(".result .msg").text("사용 불가");
					$(".result .msg").attr("style", "color:#f00");
				} else {
					$(".result .msg").text("사용 가능");
					$(".result .msg").attr("style", "color:#00f");
				}
			}
		}); // ajax 끝
	});

	function userCreate() {
		f.action = "./add.do";
		f.method = "post";
		f.submit();
	}

	function userList() {
		f.action = "list.do";
		f.submit();
	}
</script>

</head>
<body>

	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Sign up</h2>
						<form method="" class="register-form" id="register-form" name="f">
							<div class="form-group">
								<label for="userid"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" placeholder="Your ID" style="width: 150"
									id="userid" name="userid" value="${user.userid}"> <font
									color="red"><form:errors path="user.userid" /></font>
								<button class="form-group form-button" class="form-submit"
									type="button" class="idCheck">중복 확인</button>
								<p class="result">
									<span class="msg"></span>
								</p>
							</div>

							<div class="form-group">
								<label for="username"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" placeholder="Your Name" style="width: 240"
									id="username" name="username" value="${user.username}">
								<font color="red"><form:errors path="user.username" /></font>
							</div>
							
							<div class="form-group">
								<label for="userpw"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" placeholder="Your Password" style="width: 150"
									id="userpw" name="userpw" id="userpw" onkeyup="checkPwd()"
									value="${user.userpw}"> <font color="red"><form:errors
										path="user.userpw" /></font>
							</div>

							<div class="form-group">
								<label for="userpwConfirm"><i
									class="zmdi zmdi-lock-outline"></i></label> <input type="password"
									placeholder="Repeat your password" style="width: 150"
									name="userpwConfirm" id="userpwCheck" onkeyup="checkPwd()">
								<span id="checkPwd"></span>
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="text" id="email" placeholder="Your Email"
									style="width: 240" name="email" value="${user.email}">
								<font color="red"><form:errors path="user.email" /></font>
							</div>
							<div class="form-group">
								<label for="phone]"><i class="zmdi zmdi-email"></i></label> <input
									type="text" id="phone" placeholder="Your Phone"
									style="width: 240" name="phone" value="${user.phone}">
								<font color="red"><form:errors path="user.phone" /></font>
							</div>
							<div class="form-group">
								<label for="address"><i class="zmdi zmdi-email"></i></label> <input
									type="text" id="address" placeholder="Your Address"
									style="width: 240" name="address" value="${user.address}">
								<font color="red"><form:errors path="user.address" /></font>
							</div>
							<div class="form-group form-button">
								<input type="button" value="Sign up" onClick="userCreate()">
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="../images/logo.png" alt="logo_StudyHeaven">
						</figure>
						<a href="${pageContext.request.contextPath}/login.do"
							class="signup-image-link">I am already member</a>
					</div>
				</div>
			</div>
		</section>
	</div>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main_signup.js"></script>

</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>