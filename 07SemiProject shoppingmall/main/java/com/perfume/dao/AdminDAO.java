package com.perfume.dao;

import java.util.List;

import com.perfume.domain.MemberVO;
import com.perfume.domain.ProductVO;

public interface AdminDAO {
	
	//관리자의 상품 관리
	public void productInsert(ProductVO vo);
	
	public List<ProductVO> getProductList(ProductVO vo);
	
	public ProductVO getProduct(ProductVO vo);
	
	public void updateProduct(ProductVO vo);
	
	public void deleteProduct(ProductVO vo);
	
	//관리자의 회원 관리
	public List<MemberVO> getMemberList(MemberVO vo);
	
	public MemberVO getMember(MemberVO vo);
	
	public void updateMember(MemberVO vo);
	
	public void deleteMember(MemberVO vo);
}