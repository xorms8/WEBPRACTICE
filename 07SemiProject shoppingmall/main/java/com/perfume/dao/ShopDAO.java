package com.perfume.dao;


import java.util.List;

import com.perfume.domain.ProductVO;
import com.perfume.domain.CartVO;

public interface ShopDAO {

	
	public List<ProductVO> getProductList(ProductVO vo);
	
	public ProductVO getProduct(ProductVO vo);
	
	public void addCart(CartVO vo);
}
