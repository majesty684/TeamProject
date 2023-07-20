<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/insertPro.jsp</title>
</head>
<body>
<%
//폼에서 입력한 내용이 서버에 전달되면 request내장객체 저장
//post방식 request 한글처리
// request.setCharacterEncoding("utf-8");
//request에 저장된 id,pass,name 가져와서 변수에 저장
// String id=request.getParameter("id");
// String pass=request.getParameter("pass");
// String name=request.getParameter("name");
//import="java.sql.Timestamp" 날짜 시스템 날짜 가져오기
// Timestamp date=new Timestamp(System.currentTimeMillis());

// Member관련 데이터를 하나의 바구니(자바)에 담아서 전달
// 패키지(폴더) member  자바파일 MemberDTO 
// MemberDTO 객체생성(기억장소 할당)
// MemberDTO dto=new MemberDTO(); 
// System.out.println("MemberDTO기억장소 주소 : " + dto);
// MemberDTO안에 있는 멤버변수 id,pass,name,date에 데이터 저장
// 멤버변수 private 으로 접근 못하게 되어있음=> set통해서 값을 전달해서 저장
// dto.setId(id);
// dto.setPass(pass);
// dto.setName(name);
// dto.setDate(date);

// 패키지(폴더) member  자바파일 MemberDAO 
// 디비연결해서 회원가입하는 기능을 만듬 -> 자바파일 안에 메서드 정의
// 메서드 호출 할 때  회원 값을 전달 

// MemberDAO 객체생성(기억장소 할당)
// memberDAO dao=new memberDAO();
// System.out.println("MemberDAO기억장소 주소 : " + dao);
// insertMember() 메서드 호출
// dao.insertMember(id,pass,name,date);
// dao.insertMember(dto);


//로그인 이동

%>
<%-- 회원가입 성공 <%=pstmt %> --%>
<a href="login.jsp">로그인</a>

<script type="text/javascript">
	alert("회원가입 성공");
	location.href="login.jsp";
</script>

<%
// 서버가 insertPro.jsp 응답하면서 login.jsp 이동
// response.sendRedirect("login.jsp");
%>
</body>
</html>




