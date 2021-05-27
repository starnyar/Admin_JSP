<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script>

	function idCheck() {
		var id = document.getElementById("cid").value;
		
		if(!id) {
			alert("아이디를 입력하지 않았습니다.");
			return false;
		} 
		else if ((id < "0" || id > "9") && (id < "A" || id > "Z") && (id < "a" || id > "z")) 
		{
			alert("한글 및 특수문자는 아이디로 사용하실 수 없습니다.");
			return false;
		} 
		else 
		{
			var form = document.idcheckform;
			form.submit();
		}
	}

</script>

</head>
<body>
 <form method = "post" action = "idCheck.jsp" name = "idcheckform">
  아이디 : <input type = "text" name = "cid" id = "cid">
		<input type = "button" value = "중복 확인" onclick = "idCheck()">
 </form>
 <%
 	if(request.getAttribute("result") != null){
 		String result = (String) request.getAttribute("result");
 		String cid = (String) request.getAttribute("cid");
 		if(result.equals("true")){ %>
 			<script type = "text/javascript">
 				alert('이미 사용중인 아이디 입니다');
 				history.go(-1);
 			</script>
		<% } else { %> 
			<script type = "text/javascript">
				alert('사용 가능한 아이디 입니다');
				opener.document.form.id.value = "${cid}";
				//name = "form" 의 id의 value를 cid로 설정한다.
				opener.form.name.focus();
				// 넘긴 cid를 form의 name에 출력한다.
				window.self.close();
			</script>
		<% }
 		}%>
</body>
</html>