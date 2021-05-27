<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<nav>
		<ul>
			<li>
				<%
					out.println("<a href = 'idx_Jsp.jsp?idx=BoardList'>직원게시판</a>");
				%>
			</li>
			
			 <li class = "dropdown">
			 <% 
				out.println("<a href = 'idx_Jsp.jsp?idx=addUserForm'>회원 등록 </a>");
			 %>
					<div class = "submenu">
					<% 
						out.println("<a href = 'idx_Jsp.jsp?idx=addUserForm'>회원 추가 </a>");
						out.println("<a href = 'idx_Jsp.jsp?idx=deleteUserForm'>회원 삭제</a>");
					%>
					</div>
			 </li>
			 <li>
				<a href = "#">회원 정보</a>
					<div class = "submenu">
					<% 
						out.println("<a href = 'idx_Jsp.jsp?idx=getUserView'>사용자 검색</a>");
						out.println("<a href = 'idx_Jsp.jsp?idx=getUsersAll'>전체 사용자</a>");
					%>
					</div>
			</li>
			
			<li>
				<%
					out.println("<a href = 'idx_Jsp.jsp?idx=AccountBookView'>거래명부서</a>");
				%>
			</li>
		</ul>
	</nav>

</body>
</html>