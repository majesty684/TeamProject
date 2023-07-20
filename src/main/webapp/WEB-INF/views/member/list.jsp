<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/list.jsp</title>
</head>
<body>
<%
// //MemberDAO 객체생성
// MemberDAO dao=new MemberDAO();
// //List<MemberDTO>  getMemberList() 메서드 정의
// //List<MemberDTO> dtoList =  getMemberList() 메서드 호출
// List<MemberDTO> dtoList = dao.getMemberList();
%>
<table border="1">
<tr><td>아이디</td><td>비밀번호</td><td>이름</td><td>가입날짜</td></tr>
<%
// for(int i=0;i<dtoList.size();i++){
// 	MemberDTO dto=dtoList.get(i);
%>
<tr><td><%//=dto.getId() %></td>
    <td><%//=dto.getPass() %></td>
    <td><%//=dto.getName() %></td>
    <td><%//=dto.getDate() %></td></tr>
<%	
// }
%>
</table>

</body>
</html>