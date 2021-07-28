package com.perfume.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.perfume.dao.ShopDAOImpl;
import com.perfume.domain.CartVO;
import com.perfume.domain.ProductVO;

@Service("shopService")
public class ShopServiceImpl implements ShopService {
	
	@Autowired
	private ShopDAOImpl shopDAO;
	
	
	@Override
	public List<ProductVO> getProductList(ProductVO vo) {
		return shopDAO.getProductList(vo);
	}

	@Override
	public ProductVO getProduct(ProductVO vo) {
		return shopDAO.getProduct(vo);
	}

	@Override
	public void addCart(CartVO vo) {
		shopDAO.addCart(vo);
		
	}

}
