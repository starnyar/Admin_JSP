<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "Bean.BookBean" %>
<%@ page import = "Bean.BookDAO" %>
<%@ page import = "java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
	BookDAO bdao = new BookDAO();
	List<BookBean> list = bdao.readDB();
%>
<body>
	<br><br>
	<h1>거래 명부서</h1>
	<table cellpadding = "8">
		<tr>
		<td>PC번호</td> <td>아이디</td>
		<td>이름</td>   <td>시작시간</td>
		<td>종료시간</td> <td>금액</td>
		</tr>
		<%
			for(int i = 0; i < list.size(); i++) {
				BookBean bbean = list.get(i);
		%>
		
		<tr>
		<td><%=bbean.getPc_Num() %></td><td><%=bbean.getUser_Id() %></td>
		<td><%=bbean.getUser_Name() %></td><td><%=bbean.getStarted_Time() %>
		<td><%=bbean.getEnded_Time() %></td><td><%=bbean.getPayment() %></td>
		</tr>
		<% } %>
	</table>
</body>
</html>