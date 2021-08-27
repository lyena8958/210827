<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%
  	request.setCharacterEncoding("UTF-8");
  %>
<jsp:useBean id="memberVO_2"	class="day44_0827.MemberVO2" />
<jsp:setProperty property="*" name="memberVO"/>

<jsp:useBean id="memberDAO_2" class="day44_0827.MemberDAO2" scope="application" />
<%-- └> application.get("memberDAO")==null? 같은의미이므로 매 페이지마다 써보자 --%>
<%
	
	memberDAO_2.addMember(memberVO_2);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 회원가입 버튼을 누르고 가입이 완료되었다는 중간페이지를 생성할 것임 -->


<h2>회원가입</h2>

<hr>


	<table border="1">
		<tr>
			<td>이름</td>
			<td><%=memberVO_2.getName() %></td>
		</tr>
		<tr>
			<td>아이디</td>
			<td><%=memberVO_2.getUserID() %></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><%=memberVO_2.getUserPW() %></td>
		</tr>
		
	
	</table>
<hr>

<a href="mem_main.jsp">처음으로</a>

</body>
</html>