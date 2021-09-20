package com.cmis.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cmis.domain.QnaBoardVO;
import com.cmis.service.QnaService;


@Controller
public class QnaController {

	
	@Autowired QnaService qnaService;


	@RequestMapping("qnaBoard.do")
	public String qnaBoard(Model m) {
		m.addAttribute("qnaBoardList", qnaService.getQnaBoardList());
		return "qnaBoard";
	}

	@RequestMapping("insertQna.do")
	public String insertQna(QnaBoardVO vo) {
		qnaService.insertQna(vo);
		return "redirect:qnaBoard.do";
		
	}


}