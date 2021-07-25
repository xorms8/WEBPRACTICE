package com.perfume.service;

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

}
