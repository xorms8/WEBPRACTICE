package com.perfume.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.perfume.service.ShopService;
import com.perfume.domain.*;

@Controller
public class ShopController {
	
	@Autowired
	private ShopService shopService;
	
	//Shop 페이지 요청
	@RequestMapping("shop.do")
	public void shop(ProductVO vo, Model model) {
		model.addAttribute("productList", shopService.getProductList(vo));
	}
	
	//Shop -> 상품 상세 페이지 요청
	@RequestMapping("productdetails")
	public void productDetalis(ProductVO vo, Model model) {
		model.addAttribute("product", shopService.getProduct(vo));
	}
	
	//장바구니 -> cart.do 페이지 요청
	@ResponseBody
	@RequestMapping(value="cart.do",produces="application/text;charset=UTF-8")
	public String cart(Model model, CartVO vo, HttpSession session) throws Exception {
		String message="카트 담기 실패";
		MemberVO member = (MemberVO)session.getAttribute("member");
		System.out.println(vo.getCartSTOCK());
		System.out.println(vo.getpID());
		vo.setmID(member.getmID());
		shopService.addCart(vo);
		message ="카트 담기 성공";
		return message;
	}
	
	
}
