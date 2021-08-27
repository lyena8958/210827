<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="day44_0827.*"%>
<jsp:useBean id="memberDAO2" class="day44_0827.MemberDAO2" scope="application"/>
<!-- scope에서는 최초생성이되고, 이후에는 유지가 됨 이미DAO란 객체를 만들어내서 > 이미 있으니 생성하는것-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<a href="mem_reg.html">회원가입 하러가기</a> <br>
<a href="mem_login.html">로그인 하러가기</a> <br>
<hr>
<table border="1">
	<tr>
		<th>이름</th>
		<th>아이디</th>
		<th>비밀번호</th>
	</tr>
	<%
		for(MemberVO2 vo : memberDAO2.getDatas()){
	%>
	<tr>
		<td><%=vo.getName()%></td>
		<td><%=vo.getUserID()%></td>
		<td><%=vo.getUserPW()%></td>
	</tr>
	<%
		}	
	%>
</table>
</body>
</html>