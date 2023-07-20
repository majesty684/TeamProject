<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp3/logout.jsp</title>
</head>
<body>
<%
// session내장객체 연결정보를 유지하는 기억장소 전체를 삭제
session.invalidate();

%>
<script type="text/javascript">
	alert("로그아웃"); 
	location.href="main.jsp";
</script>

</body>
</html>