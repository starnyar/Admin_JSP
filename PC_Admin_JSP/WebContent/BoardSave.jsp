<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "board.BoardDAO" %>
<jsp:useBean id = "board" class = "board.BoardDTO" />
<jsp:setProperty property = "*" name = "board"/>
<%
	request.setCharacterEncoding("utf-8");
	BoardDAO bdao = new BoardDAO();
	int lastbno = bdao.maxCnt() + 1;
	board.setBno(lastbno);
	bdao.insertDB(board);
	
	response.sendRedirect("BoardList.jsp");
%>
<%-- <jsp:forward page = "BoardList.jsp" /> --%>