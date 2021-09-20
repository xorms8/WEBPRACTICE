package com.cmis.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cmis.dao.QnaDAO;
import com.cmis.domain.QnaBoardVO;

@Service("qnaService")
public class QnaServiceImpl implements QnaService {
	
	@Autowired
	private QnaDAO qnaDAO;
	
	public int insertQna(QnaBoardVO vo) {
		return qnaDAO.insertQnaBoard(vo);
	}

	public List<QnaBoardVO> getQnaBoardList() {
		return qnaDAO.getQnaBoardList();
	}

}
