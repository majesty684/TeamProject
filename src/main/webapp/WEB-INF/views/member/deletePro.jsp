<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp3/deletePro.jsp</title>
</head>
<body>
<%
//delete.jsp에서 폼화면에서 내용을 서버 전달해옴
//서버 request 에 저장됨
// request "id", "pass"  => 가져와서 => 변수에 저장
String id=request.getParameter("id");
String pass=request.getParameter("pass");

//1단계 : JDBC 프로그램
//(폴더 com.mysql.cj.jdbc  파일이름 Driver.class) 불러오기
Class.forName("com.mysql.cj.jdbc.Driver");

//2단계 : JDBC이용해서 데이터베이스 연결 => 연결정보저장
//(디비주소,디비아이디,디비비밀번호)
String dbUrl="jdbc:mysql://localhost:3306/jspdb?serverTimezone=UTC";
String dbUser="root";
String dbPass="1234";
//java.sql.Connection 자바내장객체 : 디비연결 정보를 저장하는 내장객체
Connection con=DriverManager.getConnection(dbUrl, dbUser, dbPass);

//3단계 : 연결정보를 이용해서 SQL구문을 만들기
//select * from 테이블 where 조건열=값 and 조건열=값
String sql="select * from members where id=? and pass=?";
PreparedStatement pstmt=con.prepareStatement(sql);
pstmt.setString(1, id);
pstmt.setString(2, pass);

//4단계 : SQL구문을 실행(select) .executeQuery() => 결과 저장
ResultSet rs=pstmt.executeQuery();

//5단계 : 결과 접근 -> if 행 true-> 아이디 비밀번호 일치 -> 삭제 작업
//                else 행 false-> 아이디 비밀번호 틀림 -> 뒤로이동
if(rs.next()){
	//아이디 비밀번호 일치 -> 삭제 작업
	//3단계 sql구문 
	String sql2="delete from members where id=?";
	PreparedStatement pstmt2=con.prepareStatement(sql2);
	pstmt2.setString(1, id);
	//4단계 실행
	pstmt2.executeUpdate();
	//세션값 초기화(로그아웃)
	session.invalidate();
	//main.jsp 이동
	response.sendRedirect("main.jsp");
}else{
	//아이디 비밀번호 틀림 -> 뒤로이동
	%>
	<script type="text/javascript">
		alert("아이디 비밀번호 틀림");
		history.back();
	</script>
	<%
}
%>
</body>
</html>

