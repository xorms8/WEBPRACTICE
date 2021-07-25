package com.perfume.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.perfume.domain.ProductVO;


@Repository("adminDAO")
public class AdminDAOImpl implements AdminDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	@Override
	public void productInsert(ProductVO vo) { 
		mybatis.insert("AdminDAO.productInsert", vo);
	}

}
