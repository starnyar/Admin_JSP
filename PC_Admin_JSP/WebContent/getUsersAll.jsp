<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "Bean.AdminDAO" %>
<%@ page import = "Bean.AdminBean" %>
<%@ page import = "java.util.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<style>
		table{
			margin-left : auto;
			margin-right : auto;
			font-size : 23px;
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>전체 사용자 정보</title>
</head>
<%
	AdminDAO adao = new AdminDAO();
	List<AdminBean> list = adao.readDB_All();
%>

<body>
	<br><br>
	<h1>전체 사용자 목록</h1>
	<table cellpadding = "8">
		<tr>
		<td>이름</td><td>아이디</td><td>전화번호</td><td>남은시간</td>
		<% for(int i = 0; i < list.size(); i++) {
			AdminBean bean = list.get(i);
			%>
		</tr>
		<td><%=bean.getName()%></td>
		<td><a href = 'idx_Jsp.jsp?id=<%=bean.getId()%>&idx=getUserItemView'>
			<%=bean.getId() %></a></td>
		<td><%=bean.getPhoneNum() %></td><td><%=bean.getRemainedTime()%></td>
		</tr>
		<% } %>
	</table>
</body>
</html>