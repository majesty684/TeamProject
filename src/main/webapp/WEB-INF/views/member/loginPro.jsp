<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp3/loginPro.jsp</title>
</head>
<body>
<%
//폼에서 입력한 내용을 서버에 전달 => request 요청 정보 저장
// request에서 id,pass 값을 가져와서 => 변수 저장
String id=request.getParameter("id");
String pass=request.getParameter("pass");

//MemberDTO 객체 생성(기억장소 할당)
// memberDAO dao=new memberDAO();
//메서드 호출
// MemberDTO dto= dao.userCheck(id, pass);
// 아이디 비밀번호 일치하면 dto 기억장소에 데이터 저장해서 가져옴
// 		틀리면 dto 비어있는 값 (null)을 가져옴
// if(dto != null){
	//결과 있음
// 	out.println("아이디 비밀번호 일치");
	// get방식일때 주소줄에 값이 넘어옴
// 	http://localhost:8080/JspProject/jsp3/
//                    loginPro.jsp?id=kim&pass=1111
// 	response.sendRedirect("main.jsp?id="+id);
	
	// 아이디 비밀번호 일치 확인 받아 옴 => 로그인 유지
	// kim님 로그인 하셨습니다. => 로그인값 유지(페이지 상관없이 값 유지)
	
	// session내장객체 : 클라이언트 서버 연결정보를 저장하는 내장객체
	//              : 클라이언트 서버 연결 유지 되는 동안 값 유지
	// session내장객체 삭제 1) 사용자 브라우저 닫았을때
//                     2) 30분 동안 유지시간 설정 -> 지나면 삭제
//                     3) 로그아웃(session기억장소 전체 삭제)

// 	out.println("세션기억장소id값 : "+session.getId());
// 	out.println("세션기억장소유지시간 : "+session.getMaxInactiveInterval());

//    session내장객체 이용(연결만 되어있으면 값유지)
//    => session내장객체 값을 저장(로그인 값을 유지)
// 		session.setAttribute("id", id);
// 		response.sendRedirect("main.jsp");
// }else{
	//결과 없음
// 	out.println("아이디 비밀번호 틀림");
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




