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


<script language="JavaScript">
	$(function() {
		getCategoryList(); //Category가져오기
		getLoc1List(); //Location1가져오기

		$('#category').change(
				function() {
					if ($('#category option:selected').val() == "default") {
						$("#subcategory").empty();
						$("#subcategory").append(
								"<option value='default'>소분류</option>");

					} else {
						getSubCategory();
					}
				})

		$('#location1').change(function() {
			if ($('#location1 option:selected').val() == "default") {
				$("#location2").empty();
				$("#location2").append("<option value='default'>전체</option>");
			} else {
				getLoc2List();
			}
		})

	});

	function getCategoryList() {
		$.ajax({
			type : "GET",
			url : "./getcategorylist.do",
			//data : {categoryname : $('#category1 option:selected').val()},
			dataType : 'json',
			success : function(data) {
				if (data) {
					if (data.length > 0) {
						//$("#location1").empty();   
						var html = "";
						for (var i = 0; i < data.length; i++) {
							$("#category").append(
									"<option value='"+data[i].categorycode+"'>"
											+ data[i].categoryname
											+ "</option>");
						}
					}
				}
			},
			error : function(request, status, error) {
				console.log('code:' + request.status + '\n' + 'message:'
						+ request.responseText + '\n' + 'error:' + error);
			}
		});
	}

	function getSubCategory() {
		$.ajax({
			type : "GET",
			url : "./getsubcategorylist.do",
			data : {
				categorycode : $('#category option:selected').val()
			},
			dataType : 'json',
			success : function(data) {
				if (data) {
					if (data.length > 0) {
						$("#subcategory").empty();
						var html = "";
						for (var i = 0; i < data.length; i++) {
							$("#subcategory")
									.append(
											"<option value='"+data[i].subcategorycode+"'>"
													+ data[i].subjectname
													+ "</option>");
						}
					}
				}
			},
			error : function(request, status, error) {
				console.log('code:' + request.status + '\n' + 'message:'
						+ request.responseText + '\n' + 'error:' + error);
			}

		});

	}

	function getLoc1List() {
		$.ajax({
			type : "GET",
			url : "./getloc1list.do",
			//data : {categoryname : $('#category1 option:selected').val()},
			dataType : 'json',
			success : function(data) {
				if (data) {
					if (data.length > 0) {
						//$("#location1").empty();   
						var html = "";
						for (var i = 0; i < data.length; i++) {
							$("#location1").append(
									"<option value='"+data[i]+"'>" + data[i]
											+ "</option>");
						}
					}
				}
			},
			error : function(request, status, error) {
				console.log('code:' + request.status + '\n' + 'message:'
						+ request.responseText + '\n' + 'error:' + error);
			}

		});

	}

	function getLoc2List() {
		$.ajax({
			type : "GET",
			url : "./getloc2list.do",
			data : {
				loc1name : $('#location1 option:selected').val()
			},
			dataType : 'json',
			success : function(data) {
				if (data) {
					if (data.length > 0) {
						$("#location2").empty();
						var html = "";
						for (var i = 0; i < data.length; i++) {
							$("#location2").append(
									"<option value='"+data[i].locationcode+"'>"
											+ data[i].loc2 + "</option>");
						}
					}
				}
			},
			error : function(request, status, error) {
				console.log('code:' + request.status + '\n' + 'message:'
						+ request.responseText + '\n' + 'error:' + error);
			}

		});

	}
</script>

<style type="text/css">
select {
	float: left;
}

#category1, #category {
	width: 6em;
}

#location1 {
	width: 10em;
}

#location2 {
	width: 7em;
}
</style>
</head>
<body>

	<table class="tablea">
		<tr>
			<th>studyno</th>
			<th>studytitle</th>
			<th>membercnt</th>
			<th>managerid</th>
			<th>regdate</th>
		</tr>


		<form name="f" method="get"
			action="${pageContext.request.contextPath}/write.do">

			<!-- 사용자 리스트를 클라이언트에게 보여주기 위하여 출력. -->
			<c:forEach var="room" items="${rooms}">
				<tr>
					<td>${room.studyno}</td>
					<td>${room.studytitle}</td>
					<td>${room.membercnt}</td>
					<td>${room.managerid}</td>
					<td>${room.regdate}</td>

				</tr>
			</c:forEach>
	</table>
	<table>
		<tr>
			<td><input type="submit" value="방 추가" /></td>
		</tr>
	</table>
	</form>


</body>
</html>