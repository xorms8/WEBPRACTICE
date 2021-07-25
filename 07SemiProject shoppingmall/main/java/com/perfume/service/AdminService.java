package com.perfume.service;

import java.util.List;

import com.perfume.domain.ProductVO;

public interface AdminService {
	
	//CRUD 기능의 메소드 구현
	
	//상품 등록
	void productInsert(ProductVO vo) throws Exception;
}
