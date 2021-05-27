<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "board.BoardDAO" %>
<jsp:useBean id = "board" class = "board.BoardDTO" />
<jsp:setProperty property="*" name="board"/>
<style>
	table {
		
	}

	td{
		font-size : 15px;
	}
</style>


<%
	String SeqNo = request.getParameter("SEQ_NO");
	int bno = Integer.parseInt(SeqNo);
	BoardDAO bdao = new BoardDAO();
	board = bdao.readDB(bno);
%>
<table cellpadding = "6">
<tr><td colspan = 3>[제목]&nbsp;<%=board.getTitle() %><br></td></tr>
<tr><td>[작성자]&nbsp;<%=board.getWriter() %><br></td><td>[작성일시]&nbsp;<%=board.getRegdate() %><br></td></tr>

<tr><td colspan = 3>--------------------------------------------------------------------</td></tr><br>
<tr><td colspan = 3><%=board.getContent() %> </td></tr><br><br>
<tr><td><a href = 'BoardUpdateInput.jsp?bno=<%=board.getBno() %>'>[수정]</a></td>
<td><a href = 'BoardDelete.jsp?bno=<%=board.getBno() %>'>[삭제]</a></td>
<td><a href = 'BoardList.jsp'>[목록으로]</a></td>

</table>