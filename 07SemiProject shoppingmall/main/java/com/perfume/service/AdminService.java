package com.perfume.service;

import java.util.List;

import com.perfume.domain.ProductVO;

public interface AdminService {
	
	//CRUD 기능의 메소드 구현
	
	//상품 등록
	void productInsert(ProductVO vo) throws Exception;
	
	//상품 목록
	List<ProductVO> getProductList(ProductVO vo);
	
	//상품 상세 조회
	ProductVO getProduct(ProductVO vo);
	
	//상품 수정
	void updateProduct(ProductVO vo);
	
	//상품 삭제 
	void deleteProduct(ProductVO vo);
}
