<%@page contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib  prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
<title>사용자 관리</title>
<meta charset="utf-8">
<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
<script language="JavaScript">
function checkPwd(){
	var f1 = document.forms[0];
	var pw1 = f1.userpw.value;
	var pw2 = f1.userpwConfirm.value;
	if(pw1!=pw2){
		document.getElementById('checkPwd').style.color = "red";
	   	document.getElementById('checkPwd').innerHTML = "동일한 암호를 입력하세요."; 
	}else{
	    document.getElementById('checkPwd').style.color = "blue";
	    document.getElementById('checkPwd').innerHTML = "암호가 확인 되었습니다.";  
	} 
}

$(".idCheck").click(function(){
	var query = {userid : $("#userid").val()};
	 
	$.ajax({
		url : "/idCheck",
		type : "post",
		data : query,
		success : function(data) {
	  
	   		if(data == 1) {
	    		$(".result .msg").text("사용 불가");
	    		$(".result .msg").attr("style", "color:#f00");    
	   		} else {
	    		$(".result .msg").text("사용 가능");
	    		$(".result .msg").attr("style", "color:#00f");
	   		}
		}
	});  // ajax 끝
});



function userCreate() {	
	f.action="./add.do";
	f.method="post";
	f.submit();
}

function userList() {
	f.action = "list.do";
	f.submit();
}


</script>
</head>
<body bgcolor=#FFFFFF text=#000000 leftmargin=0 topmargin=0 marginwidth=0 marginheight=0>
<br>

 <form name="f" method="post" action="">
<table width=780 border=0 cellpadding=0 cellspacing=0>
	<tr>
	  <td width="20"></td>
	  <td>
  <!--contents-->
	  <table width=590 border=0 cellpadding=0 cellspacing=0>
		  <tr>
			<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>사용자 관리 - 회원 가입</b></td>
		  </tr>
	  </table>  
	  <br>
	  <!-- view Form  -->
	  
	  <table border="0" cellpadding="0" cellspacing="1" width="590" bgcolor="BBBBBB">
		  <tr>
			<td width=200 align=center bgcolor="E6ECDE" height="22">사용자 아이디</td>
			<td width=600 bgcolor="ffffff" style="padding-left:10">
				<input type="text" style="width:150" name="userid" value="${user.userid}">
				<font color="red"><form:errors path="user.userid" /></font>
				<button type="button" class="idCheck">중복 확인</button>
				<p class="result">
					<span class="msg"></span>
				</p>
			</td>
			
		  </tr>
		  <tr>
			<td width=200 align=center bgcolor="E6ECDE" height="22">비밀번호</td>
			<td width=600 bgcolor="ffffff" style="padding-left:10">
				<input type="password" style="width:150" name="userpw" id="userpw" value="${user.userpw}">
				<font color="red"><form:errors path="user.userpw" /></font>
			
			</td>
		  </tr>
		  <tr>
		  <td width=200 align=center bgcolor="E6ECDE" height="22">비밀번호 확인</td>
		    <td width=600 bgcolor="ffffff" style="padding-left:10">
				<input type="password" style="width:150" name="userpwConfirm" id="userpwCheck" onkeyup="checkPwd()">
		    	<span id="checkPwd"></span>
		    </td>
		    
		  </tr>
		  <tr>
			<td width=200 align=center bgcolor="E6ECDE" height="22">이름</td>
			<td width=600 bgcolor="ffffff" style="padding-left:10">
				<input type="text" style="width:240" name="username" value="${user.username}">
				<font color="red"><form:errors path="user.username" /></font>
				
			</td>
		  </tr>
		  <tr>
			<td width=200 align=center bgcolor="E6ECDE" height="22">이메일</td>
			<td width=600 bgcolor="ffffff" style="padding-left:10">
				<input type="text" style="width:240" name="email" value="${user.email}">
				<font color="red"><form:errors path="user.email" /></font>
			</td>
		  </tr>		
		  
		  <tr>
			<td width=200 align=center bgcolor="E6ECDE" height="22">전화번호</td>
			<td width=600 bgcolor="ffffff" style="padding-left:10">
				<input type="text" style="width:240" name="phone" value="${user.phone}">
				<font color="red"><form:errors path="user.phone" /></font>
			</td>
		  </tr>	
		  <tr>
			<td width=200 align=center bgcolor="E6ECDE" height="22">주소</td>
			<td width=600 bgcolor="ffffff" style="padding-left:10">
				<input type="text" style="width:240" name="address" value="${user.address}">
				<font color="red"><form:errors path="user.address" /></font>
			</td>
		  </tr>	
	  </table>

	  <br>
	  
	  <table width=590 border=0 cellpadding=0 cellspacing=0>
		  <tr>
			<td align=center>
			<input type="button" value="회원 가입" onClick="userCreate()"> &nbsp;
			<input type="button" value="목록" onClick="userList()">
			</td>
		  </tr>
	  </table>

	  </td>
	</tr>
</table>  
</form>
</body>
</html>