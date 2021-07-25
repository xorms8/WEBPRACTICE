package com.perfume.controller;


import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.perfume.service.AdminService;
import com.perfume.service.MemberService;
import com.perfume.domain.MemberVO;
import com.perfume.domain.ProductVO;;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	
	
	//관리자 페이지 요청
	@RequestMapping("index2.do")
	public String preHandle(MemberVO vo, HttpServletRequest req, HttpServletResponse res) 
			throws Exception{
		
		HttpSession session = req.getSession();
		MemberVO member = (MemberVO)session.getAttribute("member");
		
		if(member == null || member.getVerify() != 9) {
			return "login";
		}else {return "index2";}
		
	}
	
	
	
	//상품 등록 입력 페이지 요청 (시작임)
	@RequestMapping("productInsert.do")
	public void productInsert() {
			
	}
		
	//상품 등록 버튼 링크 요청시(Insert / CRUD->C(CREATE)
	@RequestMapping("productSave.do")
	public String productSave(ProductVO vo) throws Exception{
		adminService.productInsert(vo);
		return "producInsert";
	}
	
	
	
}
