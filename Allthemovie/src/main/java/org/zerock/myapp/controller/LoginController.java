package org.zerock.myapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@NoArgsConstructor

@RequestMapping("/")
@Controller
public class LoginController {

	
//	@로그인
	@GetMapping("/login")
	public String login() {
		return "login";
	}//
	
//	@회원가입
	@GetMapping("/register")
	public String register() {
		return "register";
	}//
	
//	@마이페이지
	@GetMapping("/mypage")
	public String mypage() {
		return "mypage";
	}//
//	@마이페이지설정
	@GetMapping("/mypageset")
	public String mypageset() {
		return "mypageset";
	}//
	
//	@비밀번호 재설정
	@GetMapping("/passwordreset")
	public String passwordreset() {
		return "passwordreset";
	}//
	
//	@찜
	@GetMapping("/wish")
	public String wish() {
		return "wish";
	}//
	
//	@나의리뷰
	@GetMapping("/myreview")
	public String myreview() {
		return "myreview";
	}//
	
//	@개인정보수정
	@GetMapping("/personalinformation")
	public String personalinformation() {
		return "personalinformation";
	}//	
	
//	@프로필수정
	@GetMapping("/profile")
	public String profile() {
		return "profile";
	}//	
	
//	@가이드
	@GetMapping("/guide")
	public String guide() {
		return "guide";
	}//	
	
//	@문의하기
	@GetMapping("/inquire")
	public String inquire() {
		return "inquire";
	}//	
	
}
