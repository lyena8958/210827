<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="day44_0827.MemberDAO"%>
    
<jsp:useBean id="memberDAO" class="day44_0827.MemberDAO" scope="application"/>

<jsp:useBean id="memberVO" class="day44_0827.MemberVO" />
<jsp:setProperty property="*" name="memberVO"/>

<%
	memberDAO = (MemberDAO)application.getAttribute("memberDAO"); 
	/*if (memberDAO == null) {
		memberDAO = new MemberDAO();
		application.setAttribute("memberDAO", memberDAO);
	}*/
	boolean apply = memberDAO.memberUpdate(memberVO);
	if(apply){
		out.println("<script>alert('회원가입이 정상적으로 완료되었습니다.'); history.go(-1);</script>");
		
	}
	else{
		out.println("<script>alert('아이디가 중복된 데이터가 있어 가입을 실패하셨습니다.'); history.go(-1);</script>");
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>


</body>
</html>