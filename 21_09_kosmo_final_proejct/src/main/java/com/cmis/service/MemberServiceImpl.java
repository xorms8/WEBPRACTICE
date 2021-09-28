package com.cmis.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cmis.dao.MemberDAOImpl;
import com.cmis.domain.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAOImpl memberDAO;

	// 회원가입 작동
	public void userReg(MemberVO vo) {
		memberDAO.userReg(vo);
	}

	// 로그인
	public MemberVO userLogin(MemberVO vo) {
		return memberDAO.userLogin(vo);
	}
	
	
	// 회원가입 아이디 중복 체크
	public MemberVO idCheck_join(MemberVO vo) {
		return memberDAO.idCheck_join(vo);
	}
	
	public MemberVO getMember(String user_id) throws Exception {
		return memberDAO.getMember(user_id);
	}

	@Override
	public void updateMember(MemberVO vo) {
		memberDAO.updateMember(vo);
	}

	@Override
	public void joinMemberByGoogle(MemberVO vo) {
		memberDAO.userReg(vo);
		
	}

	@Override
	public MemberVO loginMemberByGoogle(MemberVO vo) {
		MemberVO returnVO = null;
		try {
			returnVO = memberDAO.userLogin(vo);
			System.out.println("S: 로그인 아디: "+vo.getUser_id()+" 비번: "+vo.getMember_pw()+" 이름: "+vo.getMember_name());
		} catch (Exception e) {
			e.printStackTrace();
			returnVO = null; //실행하다 문제가 생겼을때 해당 데이터를 보내지않겠다는 의미 = 예외처리
		}
		return returnVO;
	}
	
	
}
