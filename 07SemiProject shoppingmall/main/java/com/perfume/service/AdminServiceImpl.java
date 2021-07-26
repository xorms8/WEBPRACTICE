package com.perfume.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.perfume.dao.AdminDAOImpl;
import com.perfume.domain.ProductVO;


@Service("adminService")
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminDAOImpl adminDAO;
	
	
	@Override
	public void productInsert(ProductVO vo) {
		
		adminDAO.productInsert(vo);
	}


	public List<ProductVO> getProductList(ProductVO vo) {
		return adminDAO.getProductList(vo);
	}


	public ProductVO getProduct(ProductVO vo) {
		return adminDAO.getProduct(vo);
	}


	public void updateProduct(ProductVO vo) {
		adminDAO.updateProduct(vo);
		
	}

	
	public void deleteProduct(ProductVO vo) {
		adminDAO.deleteProduct(vo);
	}

}
