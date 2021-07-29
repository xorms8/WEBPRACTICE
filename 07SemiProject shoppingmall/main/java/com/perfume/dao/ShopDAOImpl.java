package com.perfume.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.perfume.domain.CartListVO;
import com.perfume.domain.CartVO;
import com.perfume.domain.ProductVO;

@Repository("shopDAO")
public class ShopDAOImpl implements ShopDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public List<ProductVO> getProductList(ProductVO vo) {
		System.out.println("===> Mybatis ShopDAO getProductList() 호출");
		return mybatis.selectList("ShopDAO.getProductList", vo);
	}

	@Override
	public ProductVO getProduct(ProductVO vo) {
		System.out.println("Mybatis ShopDAO getProduct()호출");
		return (ProductVO) mybatis.selectOne("ShopDAO.getProduct", vo);
	}

	@Override
	public void addCart(CartVO vo) {
		mybatis.insert("ShopDAO.addCart", vo);
	}
	
	@Override
	public List<CartListVO> CartList(String mID) {
		System.out.println("==>Mybatis ShopDAO CartList()호출");
		return mybatis.selectList("ShopDAO.cartList", mID);
	}
	
}
