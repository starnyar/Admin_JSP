<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style>
	table{
		margin-left : auto;
		margin-right : auto;
		text-align : center;
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

</head>
<body>

	<br><br>
	<h1>사용자 정보 수정</h1>
	<form action = "updateUser.jsp" method = post name = "form">
		<table cellpadding = "8">
			<tr><td>아이디</td>
			<td><input type = "text"  name = "id" size = "10"
				readonly value = ${abean.getId()} ></td></tr>
			
			<tr><td>이름</td>
			<td><input type = "text" name = "name" size = "10"
				value = ${abean.getName()} ></td></tr>
				
			<tr><td>전화번호</td>
			<td><input type = "text" name = "phoneNum" size = "15"
				value = ${abean.getPhoneNum()} align = "center"> </td></tr>
			
			<tr><td colspan = "2" align = "center"><input type = "submit" value = "수정하기">
			</td></tr>
		</table>
	</form>
</body>
</html>