package com.cmis.dao;

import java.util.HashMap;
import java.util.List;

import com.cmis.domain.ProductVO;
import com.cmis.domain.QnaBoardVO;

public interface QnaDAO {
   
   int insertQnaBoard(QnaBoardVO vo);
   
   List<QnaBoardVO> getQnaBoardList();
}