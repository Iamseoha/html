package org.zerock.myapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@NoArgsConstructor

@RequestMapping("")
@Controller
public class SampleController {
	
	
//	@1번
	@RequestMapping("/main/")
//	@RequestMapping
	public String basic() {
		log.trace("basic() invoked.");
		
		return "main";
	}//basic

	
}//end class
