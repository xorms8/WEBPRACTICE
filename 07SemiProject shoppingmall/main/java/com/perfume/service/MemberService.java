package com.perfume.service;

import javax.servlet.http.HttpSession;

import com.perfume.domain.MemberVO;

public interface MemberService {
	//로그인 + 아이디 체크
	public MemberVO idCheck_Login( MemberVO vo);
	
	//로그아웃
	public void logout(HttpSession session) throws Exception;
	
	//회원가입
	public int userInsert(MemberVO vo);
	
}
