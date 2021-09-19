package com.cmis.controller;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class EtcController {
	
	@RequestMapping("test.do")
	public void Test() {
		System.out.println("test페이지불림");
	}
	
	@RequestMapping("map.do")
	public void map() {
		System.out.println("map페이지불림");
	}
	
	
	
}
