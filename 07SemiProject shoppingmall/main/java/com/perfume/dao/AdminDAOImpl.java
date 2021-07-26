package com.perfume.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.perfume.domain.ProductVO;


@Repository("adminDAO")
public class AdminDAOImpl implements AdminDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	@Override
	public void productInsert(ProductVO vo) { 
		mybatis.insert("AdminDAO.productInsert", vo);
	}


	
	public List<ProductVO> getProductList(ProductVO vo) {
		System.out.println("===> Mybatis getProductList() 호출");
		return mybatis.selectList("AdminDAO.getProductList", vo);
		// selectList AdminDAO.getProductList로 사용
		// AdminDAO는 Mapper의 <mapper namespace="AdminDAO">
		// getProductList는 Mapper의 <select id ="getProductList"
	}

	public ProductVO getProduct(ProductVO vo) {
		System.out.println("Mybatis getProduct()호출");
		return (ProductVO) mybatis.selectOne("AdminDAO.getProduct", vo);
	}



	public void updateProduct(ProductVO vo) {
		System.out.println("Mybatis updateProduct() 호출");
		mybatis.update("AdminDAO.updateProduct", vo);
		
	}


	public void deleteProduct(ProductVO vo) {
		System.out.println("Mybatis deleteProduct() 호출");
		mybatis.update("AdminDAO.deleteProduct", vo);
		
	}
	
	

}
