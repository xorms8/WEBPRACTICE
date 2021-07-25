package com.perfume.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.perfume.domain.ProductVO;

@Controller
public class ProductController {

	
	
	
	
	//상품 정보 입력 페이지 (시작임)
	@RequestMapping("productInsert.do")
	public void productInsert() {
		
	}
	
	//상품 등록(Insert / CRUD->C(CREATE)
	@RequestMapping("productSave.do")
	public void productSave(ProductVO vo) throws Exception{
		
	}
	
}
