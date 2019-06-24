<%@page contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<html>
<head>
<title>new studyroom</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script >
	function roomList() {
		f.action="subcategorylist.do"
		f.submit();
	}
	function roomModify() {
		f.action="modify.do";
		f.submit();
	}
	function roomRemove() {
		if ( confirm("정말 삭제하시겠습니까?") ) {
			f.action="remove.do";
			f.submit();
		}
	}
</script>
</head>
<body >
<table width=780 border=0 cellpadding=0 cellspacing=0>
	<tr>
	  <td width="20"></td>
	  <td>
  <!--contents-->
	  <table width=590 border=0 cellpadding=0 cellspacing=0>
		  <tr>
			<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>방 정보</b></td>
		  </tr>
	  </table>  
	  <br>
	  
	  <!-- view Form  -->
	  <form name="f" method="post" action="">
	  <input type="hidden" name="studyno" value="${room.studyno}">
	  <table border="0" cellpadding="0" cellspacing="1" width="610" bgcolor="BBBBBB">
		  <tr>
			<td width=120 align=center bgcolor="E6ECDE" height="22">방 번호</td>
			<td width=490 bgcolor="ffffff" style="padding-left:10">
				 ${room.studyno}
			</td>
		  </tr>
		  <tr>
			<td width=120 align=center bgcolor="E6ECDE" height="22">방 제목</td>
			<td width=490 bgcolor="ffffff" style="padding-left:10">
				 				 ${room.studytitle}
			</td>
		  </tr>
		  <tr>
			<td width=120 align=center bgcolor="E6ECDE" height="22">방장</td>
			<td width=490 bgcolor="ffffff" style="padding-left:10">
				 				 ${room.managerid}
			</td>
		  </tr>
	  </table>
	  </form>
	  <table width=610 border=0 cellpadding=0 cellspacing=0>
		  <c:if test="${room.managerid eq login}">
		  <tr>
			<td align=center>
			<input type="button" value="수정" onClick="roomModify()"> &nbsp;
			<input type="button" value="삭제" onClick="roomRemove()"> &nbsp;
			<input type="button" value="목록" onClick="roomList()"> 
			</td>
		  </tr>
		  </c:if>
		  <c:if test="${room.managerid ne login}">
		  <tr>
			<td align=center>
			<input type="button" value="참가하기" onClick=""> &nbsp;
			<input type="button" value="목록" onClick="roomList()"> 
			</td>
		  </tr>
		  </c:if>
	  </table>
	  </td>
	</tr>
</table>  

</body>
</html>