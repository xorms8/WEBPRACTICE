package com.cmis.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cmis.domain.QnaBoardVO;
@Repository("qnaDAO")
public class QnaDAOImpl implements QnaDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public int insertQnaBoard(QnaBoardVO vo) {
		 System.out.println("===> Mybatis QnaDAO insertQnaBoard() 호출");
	     return mybatis.insert("QnaDAO.insertQnaBoard",vo);
	}

	public List<QnaBoardVO> getQnaBoardList() {
		System.out.println("===> Mybatis QnaDAO getQnaBoardList() 호출");
		return mybatis.selectList("QnaDAO.getQnaBoardList");
	}

}
