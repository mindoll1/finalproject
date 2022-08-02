package com.festi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.festi.letfeVO.LetfeVO;
import com.festi.service.LetfeService;

@Controller
public class LetfeControllerYB {

	@Autowired
	private LetfeService letfeService;
	

	
	  @RequestMapping("")	  
	  public String insertLetfe(LetfeVO vo) {
		  letfeService.letfeInsert(vo);
		  return "example";
	  }
	 
}
