<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <jsp:useBean id="memberDAO" class="day44_0827.MemberDAO" scope="application"/>
 <jsp:useBean id="memberVO" class="day44_0827.MemberVO"/>
 <jsp:setProperty property="*" name="memberVO"/>
 <%
 	boolean loginCheck = memberDAO.memberLoginCheck(memberVO);
 
 	if(loginCheck){
 		out.println("<script>alert('로그인이 성공하였습니다.');</script>");
 		response.sendRedirect("yn1_loginApply.html");
 	}
 	else{
 		out.println("<script>alert('로그인 실패하였습니다.'); history.go(-1);</script>");
 	}
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>