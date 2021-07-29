package com.perfume.service;

import java.util.List;

import com.perfume.domain.CartListVO;
import com.perfume.domain.CartVO;
import com.perfume.domain.ProductVO;

public interface ShopService {
	List<ProductVO> getProductList(ProductVO vo);

	// 상품 상세 조회
	ProductVO getProduct(ProductVO vo);
	
	// 장바구니 Insert
	void addCart(CartVO vo);
	
	// 장바구니 리스트 출력 (cart.do 장바구니 페이지)
	List<CartListVO> cartList(String mID);
}
