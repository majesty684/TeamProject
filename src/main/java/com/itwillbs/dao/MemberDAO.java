package com.itwillbs.dao;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.MemberDTO;

@Repository
public class MemberDAO {
	
	//마이바티스 객체생성 => 멤버변수 root-context.xml  -> 자동 주입
	@Inject
	private SqlSession sqlSession;
	
	//mapper파일 이름 => 변수 정의
	private static final String namespace="com.itwillbs.mappers.memberMapper";
	
////	private DataSource dataSource;
//	private SimpleJdbcTemplate jdbcTemplate;
//	
//	@Inject
//	public void setDataSource(DataSource dataSource) {
////		this.dataSource = dataSource;
//		jdbcTemplate=new SimpleJdbcTemplate(dataSource);
//	}

//	String insertMember="insert into members(id,pass,name,date) values(?,?,?,?)";
	public void insertMember(MemberDTO memberDTO) {
		System.out.println("MemberDAO insertMember()");
//		jdbcTemplate.update(insertMember, memberDTO.getId(),memberDTO.getPass(),memberDTO.getName(),memberDTO.getDate());
		// MemberDTO 멤버변수 이름, memberMapper.xml #{id} 일치
		// com.itwillbs.mappers.memberMapper.insertMember
		sqlSession.insert(namespace+".insertMember", memberDTO);
	}
	
	public MemberDTO userCheck(MemberDTO memberDTO) {
		System.out.println("MemberDAO userCheck()");
		return sqlSession.selectOne(namespace+".userCheck", memberDTO);
	}
	public MemberDTO getmember(String id) {
		System.out.println("MemberDAO getmember()");
		return sqlSession.selectOne(namespace+".getmember", id);
	}
}
