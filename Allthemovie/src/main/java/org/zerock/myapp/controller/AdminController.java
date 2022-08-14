package org.zerock.myapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@NoArgsConstructor

@RequestMapping("/admin/")
@Controller
public class AdminController {

//	@회원관리
	@GetMapping("/member")
	public String member() {
		return "member";
	}//
	
//	@회원관리
	@GetMapping("/review")
	public String review() {
		return "review";
	}//
	
//	@공지사항
	@GetMapping("/notice")
	public String notice() {
		return "notice";
	}//
	
//	@faq
	@GetMapping("/faq")
	public String faq() {
		return "faq";
	}//
	
//	@등록
	@GetMapping("/registration")
	public String registration() {
		return "registration";
	}//
}
