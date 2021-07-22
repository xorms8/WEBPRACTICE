package com.perfume.service;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.perfume.domain.MemberVO;
import com.perfume.dao.MemberDAOImpl;


@Service("memberService")
public class MerberServiceImpl implements MemberService{

	@Autowired
	private MemberDAOImpl memberDAO;
	
	/**
	  * 아이디 중복 체크하는 sql + 로그인 기능 sql
	  */
	  public MemberVO idCheck_Login( MemberVO vo)
	  {
		  return memberDAO.idCheck(vo);
	  }
	
	
	 /**
	   * 회원가입 sql
	   */
	   public int userInsert(MemberVO vo )
	   {
		  return memberDAO.memberInsert(vo);
	   }
	   
	   /*
	    * 로그아웃
	    * 
	    */
	   
	   public void logout(HttpSession session) throws Exception{
		   session.invalidate();
		   
	   }
	   
}
