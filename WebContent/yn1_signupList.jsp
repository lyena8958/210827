<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList, day44_0827.*"%>
<jsp:useBean id="memberDAO" class="day44_0827.MemberDAO" scope="application"/>
<%
	response.setCharacterEncoding("UTF-8");


	ArrayList<MemberVO> datas = memberDAO.memberAllSelect();

	// memberAllSelect에서 데이터가 없어 null로 반환받았다면
	if (datas == null) {
		out.println("<h3>저장된 회원정보가 없습니다.</h3>");
	} else {
		int i = 0;
		for (MemberVO vo : datas) {
			i++;
			out.println("<p>"+i+". &nbsp;");
			out.println("ID : "+vo.getUserID() +" &nbsp; name :" + vo.getUserName());
			out.println("</p>");
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록</title>
<style>
	a{
		text-decoration : none;
		color : black;
	}
</style>
</head>
<body>
	<button type="button">
		<a href="yn1_index_login.html">처음으로 돌아가기</a>
	</button>
</body>
</html>