package com.perfume.dao;
 
import com.perfume.domain.MemberVO;
public interface MemberDAO {
	/*
	 * 회원가입 기능 구현
	 * */
	int memberInsert(MemberVO vo);
	
	/**
	 * id 중복체트 기능 구현
	 */	
	MemberVO  idCheck( MemberVO vo );
	
	/**
	 * 로그인 확인 기능 구현
	 */
	MemberVO memberLogin(MemberVO vo);
	
}
