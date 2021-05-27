<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "Bean.AdminDAO" %>
<%@ page import = "Bean.AdminBean" %>
<%@ page import = "java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사용자 조회</title>
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
</head>
<%
	String name = request.getParameter("name");
	AdminDAO adao = new AdminDAO();
	List<AdminBean> list = adao.readDB_By_Name(name);
%>

<body>
<br><br>
<h1>사용자 조회 결과</h1>
<table cellpadding = "8">
<tr>
<td>이름</td><td>아이디</td><td>전화번호</td><td>남은시간</td>

</tr>

<% 
	for(int i = 0; i < list.size(); i++){
		AdminBean abean = list.get(i);
%>

<tr>
<td><%=abean.getName() %></td>
<td><a href = 'idx_Jsp.jsp?id=<%=abean.getId()%>&idx=getUserItemView'>
<%=abean.getId() %></a></td>
<td><%=abean.getPhoneNum() %></td><td><%=abean.getRemainedTime() %></td>
</tr>
<% } %>
</table>
<br><br>
<h1><a href = 'idx_Jsp.jsp?idx=getUsersAll'>전체 사용자 목록</a></h1>
</body>
</html>
