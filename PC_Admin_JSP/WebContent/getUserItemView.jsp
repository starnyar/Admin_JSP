<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "Bean.AdminBean" %>
<%@ page import = "Bean.AdminDAO" %>
<%@ page import = "java.util.*" %>

<%
	String cid = request.getParameter("id");
	AdminDAO adao = new AdminDAO();
	AdminBean abean = adao.readDB_By_Id(cid);
%>
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
	<h1>사용자 정보</h1>
	<table cellpadding = "8">
		<tr><td>이름</td><td><%=abean.getName() %></tr>
		<tr><td>아이디</td><td><%=abean.getId() %></td>
		<tr><td>전화번호</td><td><%=abean.getPhoneNum() %></td>
		
		<tr>
		<td>
		<input type = "button" value = "정보 수정"
		onclick = "location.href = 'idx_Jsp.jsp?id=<%=abean.getId()%>&idx=updateUserProcess'">
		</td>
		<td>
		<input type = "button" value = "정보 삭제"
		onclick = "location.href = 'idx_Jsp.jsp?id=
		<%=abean.getId()%>&idx=deleteUser'">
	</table>
</body>
</html>