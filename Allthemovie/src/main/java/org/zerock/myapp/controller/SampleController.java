package org.zerock.myapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@NoArgsConstructor

@RequestMapping("/board/")
@Controller
public class SampleController {
	
	
//	@메인페이지
	@GetMapping("/main")
	public String main() {
		return "main";
	}//

//	@상세페이지
	@GetMapping("/detail")
	public String detail() {
		return "detail";
	}//
	
//	@에디터추천
	@GetMapping("/editor")
	public String editor() {
		return "editor";
	}//
	
//	@에디터 글
	@GetMapping("/editorarticle")
	public String editorarticle() {
		return "editorarticle";
	}//
	
//	@신작소개
	@GetMapping("/newwork")
	public String newwork() {
		return "newwork";
	}//
	
//	@배우필모그래피
	@GetMapping("/actorfilmography")
	public String actorfilmography() {
		return "actorfilmography";
	}//
	
//	@감독필모그래피
	@GetMapping("/directorfilmography")
	public String directorfilmography() {
		return "directorfilmography";
	}//
	
//	@모든리뷰
	@GetMapping("/allreview")
	public String allreview() {
		return "allreview";
	}//
	
//	@리뷰상세보기
	@GetMapping("/reviewdetail")
	public String reviewdetail() {
		return "reviewdetail";
	}//
}//end class
