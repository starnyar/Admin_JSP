<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "Bean.DBCon" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
			td a:visited{
				color : blue;
				}
			td a:hover {
				color : AliceBlue;
			}


</style>
</head>
<body>
	<table cellpadding = 8>
		<tr>
		<td>이름</td><td>아이디</td><td>전화번호</td><td>남은시간</td><td>수정일</td><td>작업</td>
		</tr>
		
		<%
			Connection con = DBCon.getCon();
			String sql = "select * from USER_INFO_BACKUP";
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				out.print("<tr><td>" + rs.getString("USER_NAME") + "</td><td>"
						+ rs.getString("USER_ID") + "</td><td>"
						+ rs.getString("PHONENUM") + "</td><td>"
						+ rs.getString("REMAINED_TIME") + "</td><td>"
						+ rs.getString("UPDATE_DATE") + "</td><td>"
						+ rs.getString("DONE") + "</td></tr>");
			}
		%>
	</table>
</body>
</html>