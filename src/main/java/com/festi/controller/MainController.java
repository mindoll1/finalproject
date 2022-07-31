package com.festi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	
	@RequestMapping("{page}")
	public String pageOpen(@PathVariable String page) {
		if(page.equals("index")){
			return "../../index";
		}
		else return page;
	}
}
