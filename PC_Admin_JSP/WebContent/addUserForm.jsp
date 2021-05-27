<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
<script>
	  function oncheck(){
		  if(!form.name.value){
			  alert('이름을 입력하세요');
			  form.name.focus();
			  return false;
		  }
		  
		  if(!form.id.value){
			  alert('아이디를 입력하세요');
			  form.id.focus();
			  return false;
		  }
		  
		  if(!form.password.value){
			  alert('비밀번호를 입력하세요');
			  form.password.focus();
			  return false;
		  }
		  
		  if(!form.tel2.value || !fm.tel3.value){
			  alert('전화번호를 입력하세요');
			  form.tel2.focus();
			  return false;
		  }
	  }
	  
	    function id_search(){
	       theURL = "id.jsp";
	       window.open(theURL,'id_check','width=500, height=200');
	    }

</script>
</head>
<body>
<br><br>
<h1>회원 추가</h1>
<br>
<form action = "addUser.jsp" name = "form" onsubmit = "return oncheck()">
<table cellpadding = "8">
<tr><td>이름</td>
	<td> <INPUT TYPE="text" NAME="name" SIZE="10"></td> </tr>
<tr><td>아이디</td>   
	<td> <INPUT TYPE="text" NAME="id" SIZE="10" readonly>
	 <INPUT TYPE="button" value="아이디 생성" onclick="id_search()"></td> </tr>
<tr><td>비밀번호</td>
	<td> <INPUT TYPE="password" NAME="password" SIZE="10"></td> </tr>
<tr><td>전화번호</td>
	<td> <select name = "tel1">
	<option selected> 010 </option>
	<option> 011 </option>
	<option> 016 </option>
	</select>
	<input name = "tel2" size = "4" maxlength = 4>
	<input name = "tel3" size = "4" maxlength = 4>
	</td>
	</tr>
	 <tr>   
	   <td colspan="2" align="center" id="last"> 
	   <input type="submit" value="등록하기">&nbsp;&nbsp;     
	      <input type="reset" value="취소하기"> </td> 
	  </tr> 
</table>
</form>


</body>
</html>