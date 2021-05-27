<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>template</title>
</head>
<link rel = "stylesheet" type = "text/css" href = "PC_Admin_CSS.css">

<body>
<div class = "container">
	<div class = "head">
	
		<jsp:include page = "header.jsp"/>
		
		<div class = "nav">
			<jsp:include page = "nav.jsp"/>
		</div>
		<div class = "log">
			<jsp:include page = "log.jsp" />
		</div>
		
	</div>
	
	<div class = "cont">
		<%
			if(request.getParameter("target") == null){
		%>
		<jsp:include page = "${target}.jsp"/>
		<% 	} else {
		%>
		<jsp:include page = "${param.target}.jsp"/>
		<% 	} %>
	</div>
	
	<div class = "foot">
		<jsp:include page = "footer.jsp"/>
	</div>
	
</div>

</body>
</html>