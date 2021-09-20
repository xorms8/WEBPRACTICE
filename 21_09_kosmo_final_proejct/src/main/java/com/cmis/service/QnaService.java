package com.cmis.service;

import java.util.List;

import com.cmis.domain.QnaBoardVO;

public interface QnaService {
	int insertQna(QnaBoardVO vo);
	
	List<QnaBoardVO> getQnaBoardList();
}
