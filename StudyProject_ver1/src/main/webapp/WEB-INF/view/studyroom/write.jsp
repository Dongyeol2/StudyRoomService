<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib  prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script type="text/javascript" src="http://code.jquery.com/jquery-3.2.1.min.js"></script>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

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

	
	function studyroomCreate() {	
		f.action="./write.do";
		f.method="post";
		f.submit();
	}
	
	$('#category1').change(function() {
		
		changeSubCategory();
		alert("클릭");
		
	})

});

var xdata
function changeSubCategory() {
	var selected = $('#category1 option:selected').val();
		$.ajax({
			type : "GET",
			url : "./url.do",
			data : selected,
			dataType : "json",
			success : function(data) {
				xdata=data;
				if(data){
					if(data.subcategory.length > 0){
						$("#f").find("#small").remove();
						for (var i = 0; i < data.subcategory.length; i++) {
							$("#f").find("#small")
							.append("<option value='"+data.subcategory[i].subjectname+"' >"+ data.subcategory[i].subjectname + "</option>");
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
<style type="text/css">
	#uinfo{
		display: inline;
		float: right;
		text-align: right;
	}
	#s1{
		float: left;
	}
	#s3{
		float: left;
	}
	#s2{
		float: left;
	}
</style>
</head>
<body>

<div class="container">
  <h2>스터디 신청서</h2>
  <form name="f" method="post" action="" class="form-horizontal" class="needs-validation">
    <div class="form-group">
      <label class="control-label col-sm-2" for="studytitle">제목:</label>
      <div class="col-sm-10">
 	      <input type="text" class="form-control" id="studytitle" placeholder="Enter title" name="studytitle" required="required" value="${studyroom.studytitle}">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="regdate">게시일:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="regdate" name="regdate" readonly="readonly">
      </div>
    </div>


   <div class="form-group" >
      <label class="control-label col-sm-2" for="regdate">과목:</label>
      <div class="col-sm-10">          
	    <div class="dropdown"  id="s3">
	     <select name="category1" id="category1" >
	     	<option id="big" value='' selected="selected">대분류</option>
		     <c:forEach var="scateData" items="영어,일본어,중국어,취업,코딩,기타">
		     	<option value="${scateData}">${scateData}</option>
		     </c:forEach>
	     </select>

  		</div>
	    <div class="dropdown"  id="s2">
	     <select name="category" id="category" >
	     	<option id="small" value='' selected="selected">소분류</option>
		     <c:forEach var="scateData" items="${subcategory }">
		     	<option value="${scateData.categoryname }">${scateData.categoryname }></option>
		     </c:forEach>
	     </select>

  		</div>
     </div>
   </div>
  
    <div class="form-group">
      <label class="control-label col-sm-2" for="membercnt">인원수:</label>
      <div class="col-sm-10">
	      <input type="number" class="form-control" id="membercnt" placeholder="Enter membercount" name="membercnt"  value="${studyroom.membercnt}">
      </div>
    </div>
    
    <div class="form-group">
      <div class="col-sm-10" id="uinfo">
      	 신청자 : ${login.username}	      	 연락처 : ${login.phone}      	 
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="content">내용:</label>
      <div class="col-sm-10">
	      <input type="text" class="form-control" id="content" placeholder="Enter content" name="content"  value="${studyroom.content}">
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-primary" onclick="studyroomCreate()">신청하기</button>
      </div>
    </div>

  </form>
</div>

</body>
</html>