<%@page contentType="text/html; charset=utf-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Info</title>
<link rel="stylesheet" href="../css/table.css">

<script language="JavaScript">


function userModify() {
	f.action= "${pageContext.request.contextPath}/mypage/mypage_modify.do";
	f.submit();
}


</script>
</head>
<body>
<h2>나의 정보</h2>
<form name="f" method="post" action="">
<table class="tablea">
			  <tr>
				<td>이름</td>
				<td>
					 ${user.username}
				</td>
			  </tr>
			  <tr>
				<td>사용자 아이디</td>
				<td>
					 ${user.userid}
				</td>
			  </tr>
			  <tr>
				<td>이메일주소</td>
				<td>
					 ${user.email}
				</td>
			  </tr>		
			  <tr>
				<td>전화번호</td>
				<td>
					 ${user.phone}
				</td>
			  </tr>		
			  <tr>
				<td>주소</td>
				<td>
					${user.address}
				</td>
			  </tr>		
			 </table>
			 </form>
			 <table>
		  <tr>
			<td align=center>
			<input type="button" value="수정하기" onClick="userModify()"> &nbsp;
			</td>
		  </tr>
	  </table>
</body>
</html>