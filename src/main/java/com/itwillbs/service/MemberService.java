package com.itwillbs.service;

import java.sql.Timestamp;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.MemberDAO;
import com.itwillbs.domain.MemberDTO;

@Service
public class MemberService {

	// MemberDAO 객체생성 
//	MemberDAO memberDAO =new MemberDAO();
	@Inject
	private MemberDAO memberDAO;
	
//	@Inject
//	public void setMemberDAO(MemberDAO memberDAO) {
//		this.memberDAO = memberDAO;
//	}

	public void insertMember(MemberDTO memberDTO) {
		System.out.println("MemberService insertMember()");
		//날짜 저장
		memberDTO.setDate(new Timestamp(System.currentTimeMillis()));
		
		// insertMember 메서드 호출
		memberDAO.insertMember(memberDTO);
	}
	
	public MemberDTO userCheck(MemberDTO memberDTO) {
		System.out.println("MemberService userCheck()");
		return memberDAO.userCheck(memberDTO);
	}
	public MemberDTO getmember(String id) {
		System.out.println("MemberService getMember");
		return memberDAO.getmember(id);
	}
		
}

