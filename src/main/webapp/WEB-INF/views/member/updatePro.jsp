<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp3/updatePro.jsp</title>
</head>
<body>
<%
//update.jsp에서 폼화면에서 수정한 내용을 서버 전달해옴
// 서버 request 에 저장됨
// request 한글처리
request.setCharacterEncoding("utf-8");
// request "id", "pass", "name"  => 가져와서 => 변수에 저장
String id=request.getParameter("id");
String pass=request.getParameter("pass");
String name=request.getParameter("name");

// 수정할 데이터를 하나의 바구니 저장
// MemberDTO 객체생성
// MemberDTO updateDTO= new MemberDTO();
// updateDTO.setId(id);
// updateDTO.setPass(pass);
// updateDTO.setName(name);


// MemberDAO 객체생성(기억장소 할당)
// memberDAO dao= new memberDAO();
// userCheck 메서드 호출
// MemberDTO dto = dao.userCheck(id,pass);

//5단계 : 결과 접근 -> if 행 true-> 아이디 비밀번호 일치 -> 수정 작업
//                else 행 false-> 아이디 비밀번호 틀림 -> 뒤로이동
// if(dto != null){
	//아이디 비밀번호 일치 -> 수정 작업
// 	dao.updateMember(updateDTO);

	//main.jsp 이동
// 	response.sendRedirect("main.jsp");
// }else{
	//아이디 비밀번호 틀림 -> 뒤로이동
	%>
<!-- 	<script type="text/javascript"> -->
<!-- 		alert("아이디 비밀번호 틀림"); -->
<!-- 		history.back(); -->
<!-- 	</script> -->
	<%
// }
%>
</body>
</html>


