package com.perfume.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.perfume.service.MemberService;
import com.perfume.domain.MemberVO;;


@Controller
public class MemberController {
  
	
	@Autowired
	MemberService memberService;
	
	
	
	//회원가입 요청이 들어왔을 때
	@RequestMapping("userInsert.do")
	public ModelAndView userInsert(MemberVO vo) {
		int result = memberService.userInsert(vo);
		
		String message = "가입되지 않았습니다.";
		if(result > 0) message = vo.getmNAME() + "님, 가입을 축하합니다.";
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("userJoin");
		mv.addObject("result", result);
		mv.addObject("message", message);
		return mv;
	}
	
	
	//로그인 페이지에 들어왔을 때
	@RequestMapping("login.do")
	public void login() {
		
	}
	
	
	//로그인 요청이 들어왔을 때
	@RequestMapping("loginInsert.do")
	public String loginInsert(MemberVO vo, HttpSession session) {
		
		MemberVO result = memberService.idCheck_Login(vo);
		
		if(result == null || result.getmID()==null) {
			//로그인 실패
			session.setAttribute("member", null);
			return "login";
		}else {
			//로그인 성공
			session.setAttribute("member", result);
			session.setAttribute("userName", result.getmID());
			session.setAttribute("sessionTime", new Date());
			return "home";
		}
		
	}
	
	//로그아웃 요청이 들어왔을 때 [세션 종료]컨트롤러
	@RequestMapping("logout.do")
	public String logout(HttpSession session) throws Exception{
		memberService.logout(session);
		
		return "home";
	}
	
	//memberInfo (마이페이지) 요청이 들어왔을 때
	@RequestMapping("memberInfo.do")
	public void memberInfo() {
	
	}
	
	@RequestMapping("register.do")
	public void register() {
	
	}
	
	@RequestMapping("cart.do")
	public void cart() {
	
	}
	
	@RequestMapping("productdetails.do")
	public void productdetails() {
	
	}
	
	@RequestMapping("shop.do")
	public void shop() {
	
	}
	@RequestMapping("login2.do")
	public void login2() {
		
	}
	
	
	
}
