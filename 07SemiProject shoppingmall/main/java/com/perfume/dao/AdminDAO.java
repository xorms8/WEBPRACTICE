package com.perfume.dao;

import java.util.List;
import com.perfume.domain.ProductVO;

public interface AdminDAO {

	public void productInsert(ProductVO vo);
	
	public List<ProductVO> getProductList(ProductVO vo);
	
	public ProductVO getProduct(ProductVO vo);
	
	public void updateProduct(ProductVO vo);
	
	public void deleteProduct(ProductVO vo);
}