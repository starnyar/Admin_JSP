<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@ page import = "Bean.BookBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<% 
	SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 a hh:mm:ss");
	
	BookBean bbean = new BookBean();
	bbean.setStart_Time(System.currentTimeMillis());
%>

<script>
	

</script>

</head>
<body>
	<%=session.getAttribute("user_name") %> 님 접속 중<br>
	접속시간 : <%=sf.format(bbean.getStart_Time()) %><br>
	<%//이거를 숫자로 변환해서 DB로 보내야됨 %>
	
	<%
		out.print("<a href = 'logout.jsp'>로그아웃</a>");
		if(logout())
		{
			bbean.setEnd_Time(System.currentTimeMillis());
			bbean.setPayment((bbean.getEnd_Time() - bbean.getStart_Time()) / 1000 * 100);
		}
	%>
	
	<% 
	bdao.insertDB(bbean);
	%>
</body>
</html>