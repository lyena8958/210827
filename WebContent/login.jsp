<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <!-- new 기본생성자가 하는 것을 == jsp useBean이 대체한다. -->
  <!-- 기능은 id, class, scope="페이지"가있다. -->
<jsp:useBean id="lb" class="day44_0827.LoginBean"/> <!-- 태그바디 -->
<jsp:setProperty property="*" name="lb"/>
<!-- setProperty 가능했던게 → html에서 request데이터가 넘어와서 데이터가 넘어와서 set해줌 -->
    <% 
    	if(lb.check()){
    		//로그인 성공
    		out.println("<h1>로그인 성공!</h1>");
    	}
    	else{
    		//로그인 실패
    		
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
				<!-- jsp getProperty는 == lb.getuserID()쓴 것과 같다. -->
				<!-- 표현식을 쓰는게 더 편해서 나중엔 안씀 -->
입력한 아이디 : <jsp:getProperty property="userID" name="lb"/> <br> 
입력한 패스워드 : <jsp:getProperty property="userPW" name="lb"/>
</body>
</html>