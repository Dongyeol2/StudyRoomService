 
<%@page contentType="text/html; charset=utf-8" isELIgnored="false"%>
<html>
<head>
<title>사용자 관리</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script language="JavaScript">
function roomModify() {
	f.action= "update.do";
	f.submit();
}

function roomList() {
	f.action = "subjectlist.do";
	f.submit();
}
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
			<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>사용자 관리 - 사용자 정보  수정</b></td>
		  </tr>
	  </table>  
	  <br>
	  
	  <!-- modify Form  -->
	  <form name="f" method="post" action="">
	 	   <input type="hidden" name="managerid" value="${studyroom.managerid}">
	 	   <input type="hidden" name="studyno" value="${studyroom.studyno}}"> 
	 
	  <table border="0" cellpadding="0" cellspacing="1" width="590" bgcolor="BBBBBB">
		  <tr>
			<td width=100 align=center bgcolor="E6ECDE" height="22">방장</td>
			<td width=490 bgcolor="ffffff" style="padding-left:10">
				${studyroom.managerid}
			</td>
		  </tr>
		 
		  
		  <tr>
			<td width=100 align=center bgcolor="E6ECDE" height="22">방번호</td>
			<td width=490 bgcolor="ffffff" style="padding-left:10">
				 ${studyroom.studyno}
			</td>
		  </tr>
		  <tr>
			<td width=100 align=center bgcolor="E6ECDE" height="22">title</td>
			<td width=490 bgcolor="ffffff" style="padding-left:10">
				<input type="text" style="width:240" name="title" value="${studyroom.title}">
			</td>
		  </tr>	
		 <tr>
			<td width=100 align=center bgcolor="E6ECDE" height="22">membercnt</td>
			<td width=490 bgcolor="ffffff" style="padding-left:10">
				<input type="text" style="width:240" name="membercnt" value="${studyroom.membercnt}">
			</td>
		  </tr>	
		  <tr>
			<td width=100 align=center bgcolor="E6ECDE" height="22">content</td>
			<td width=490 bgcolor="ffffff" style="padding-left:10">
				<input type="text" style="width:240" name="content" value="${studyroom.content}">
			</td>
		  </tr>	
		  
	  </table>
	  </form>
	  <br>
	  
	  <table width=590 border=0 cellpadding=0 cellspacing=0>
		  <tr>
			<td align=center>
			<input type="button" value="수정" onClick="roomModify()"> &nbsp;
			<input type="button" value="목록" onClick="roomList()">
			</td>
		  </tr>
	  </table>

	  </td>
	</tr>
</table>  

</body>
</html>