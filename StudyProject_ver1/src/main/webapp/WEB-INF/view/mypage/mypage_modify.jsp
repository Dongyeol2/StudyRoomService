 <%@page contentType="text/html; charset=utf-8" isELIgnored="false"%>
<html>
<head>
<title>사용자 관리</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="../css/table.css">

<script language="JavaScript">
function userModify() {
	f.action= "${pageContext.request.contextPath}/mypage/update.do";
	f.submit();
}


</script>
</head>
<body >
<h2>나의 정보 수정</h2>
<form name="f" method="post" action="">
	<%-- <input type="hidden" name="userid" value="${user.userid }">
	<input type="hidden" name="username" value="${user.username }">  --%>
	<table class="tablea">
			  <tr>
				<td>아이디</td>
				<td>
					 <input name="userid" readonly value="${user.userid }">
				</td>
			  </tr>		
			  <tr>
				<td>이름</td>
				<td>
					 <input name="username" readonly value="${user.username }">
				</td>
			  </tr>		
			  <tr>
				<td>이메일주소</td>
				<td>
					 <input type="text" name="email" value="${user.email}">
				</td>
			  </tr>		
			  <tr>
				<td>전화번호</td>
				<td>
					 <input type="text" name="phone" value="${user.phone}">
				</td>
			  </tr>		
			  <tr>
				<td>주소</td>
				<td>
					<input type="text" name="address" value="${user.address}">
				</td>
			  </tr>		
			 </table>
			 </form>
		  <table>
		  <tr>
			<td align=center>
			<input type="button" value="수정" onClick="userModify()"> &nbsp;
			</td>
		  </tr>
	  </table>
</body>
</html>