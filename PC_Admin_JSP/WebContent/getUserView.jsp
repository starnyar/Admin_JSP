<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table{
		margin-left : auto;
		margin-right : auto;
				}
	 td:nth-child(odd) {
		background-color : black;
		color : white;
	 }
	 td:nth-child(even) {
		background-color : black;
		color : white
		}
</style>
<script>
	function oncheck(){
		if(!fm.name.value){
			alert('이름을 입력하세요');
			fm.name.focus();
			return false;
		}
		
	}

</script>

</head>
<body>
<br><br>
<h1>사용자 검색</h1>
<form action = "template.jsp" name = "fm" onsubmit = "return oncheck()">
<input type = hidden name = "target" value = "getUser">
<table cellpadding = "8">
<tr><td>이름</td>
	<td><input type = "text" name = "name" size = "10"></td></tr>
	<tr><td colspan = "2" align = "center" id = "search"><input type = "submit" value = "조회하기"></td></tr>
</table>
</form>
</body>
</html>