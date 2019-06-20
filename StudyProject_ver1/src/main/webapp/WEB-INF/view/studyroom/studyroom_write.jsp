<%@page contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib  prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>



<html>
<head>
<title>사용자 관리</title>
<meta charset="utf-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script language="JavaScript">

$(function() {
	var date = new Date(); 
	var year = date.getFullYear(); 
	var month = new String(date.getMonth()+1); 
	var day = new String(date.getDate()); 

	// 한자리수일 경우 0을 채워준다. 
	if(month.length == 1){ 
	  month = "0" + month; 
	} 
	if(day.length == 1){ 
	  day = "0" + day; 
	} 

	$("#regdate").val(year + "/" + month + "/" + day);

	
	function userCreate() {	
		f.action="./write.do";
		f.method="post";
		f.submit();
	}


});
	

</script>
</head>
<body bgcolor=#FFFFFF text=#000000 leftmargin=0 topmargin=0 marginwidth=0 marginheight=0>
<br>
<table width=780 border=0 cellpadding=0 cellspacing=0>
	<tr>
	  <td width="20"></td>
	  <td>
  <!--contents-->
	  <table width=590 border=0 cellpadding=0 cellspacing=0>
		  <tr>
			<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b></b></td>
		  </tr>
	  </table>  
	  <br>
	  <!-- view Form  -->
	  <form name="f" method="post" action="">
	  <input type="hidden" name="managerid" value="${login.userid}">
	  <table border="0" cellpadding="0" cellspacing="1" width="590" bgcolor="BBBBBB">
		  <tr>
			<td colspan="2" width=490 bgcolor="ffffff" style="padding-left:10">
				<input type="text" style="width:150" name="studytitle" value="${studyroom.studytitle}"> 
			</td>
		  </tr>
		  <tr>
			<td width=490 bgcolor="ffffff" style="padding-left:10">
				<input type="password" style="width:150" name="subjectcode" value="${studyroom.subjectcode}">
			</td>
			<td width=490 bgcolor="ffffff" style="padding-left:10">
				<input id="regdate"  readonly="readonly" style="width:240" name="regdate">
			</td>
		  </tr>
		  <tr>
			<td width=490 bgcolor="ffffff" style="padding-left:10">
				<input type="text" style="width:240" name="locationcode" value="${studyroom.locationcode}">
			</td>
			<td width=490 bgcolor="ffffff" style="padding-left:10">
				<input type="text" style="width:240" name="address" value="${studyroom.membercnt}">
			</td>
		  </tr>		
		  <tr>
			<td width=490 bgcolor="ffffff" style="padding-left:10">작성자 : ${login.username}</td>
			<td width=490 bgcolor="ffffff" style="padding-left:10">연락처 : ${login.phone}</td>
		  </tr>	
		  <tr>
			<td width=490 bgcolor="ffffff" style="padding-left:10">
				<input type="text" style="width:240" name="address" value="${studyroom.content}">
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