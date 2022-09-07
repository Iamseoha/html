package org.zerock.myapp.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Server;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.myapp.domain.UsersDTO;
import org.zerock.myapp.service.UsersService;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@NoArgsConstructor

@RequestMapping("/")
@Controller
public class LoginController {
	
	@Inject
	UsersService service;

//	@로그인
	@GetMapping(value="/login")
	public String login() {
		return "login";
	}//
//	@로그인
	@PostMapping(value="/login")
	public String postlogin(HttpServletRequest request, UsersDTO dto, RedirectAttributes rttr) {
		
		HttpSession session = request.getSession();
		UsersDTO id = service.login(dto);
		System.out.println( service.login(dto));
        if(id == null) {                                // 일치하지 않는 아이디, 비밀번호 입력 경우
            int result = 0;
            rttr.addFlashAttribute("resultt", result);
            return "redirect:/login";
        }
       
        session.setAttribute("users", id);              // 일치하는 아이디, 비밀번호 경우 (로그인 성공)
       
        return "redirect:/board/main";

	}//
	
// @로그아웃
    @GetMapping(value="/logout")
    public String logoutMainGET(HttpServletRequest request) throws Exception{

        HttpSession session = request.getSession();
        session.invalidate();
        
        return "redirect:/board/main";        
    }
    
//	@회원가입
	@GetMapping(value="/register")
	public String register() {
		return "register";
	}// 
	
//	@회원가입
	@PostMapping(value="/register")
	public String postregister(UsersDTO usersDTO) {
		service.register(usersDTO);
		return "login";
	}//
	//@회원탈퇴
		@GetMapping(value="/remove")
		public String remove() {
			return "remove";
		}//

	//@회원탈퇴
		@PostMapping(value="/remove")
		public String postremove(HttpSession session, UsersDTO dto, 
				RedirectAttributes rttr,HttpServletResponse response) throws IOException {		
			UsersDTO user = (UsersDTO) session.getAttribute("users");

			String pass1 = user.getPassword();
			String pass2 = dto.getPassword();
			
			if(pass1.equals(pass2)) {
//				rttr.addFlashAttribute("result","removeOK");
				service.remove(dto);
				session.invalidate();
				return "redirect:/board/main"; 
			}else {
				rttr.addFlashAttribute("result","removeFalse");
				return "redirect:/remove"; 
			}
		}//
	
//	@개인정보수정
	@GetMapping(value="/personalinformation")
	public String personalinformation() {
		return "personalinformation";
	}//		
//	@개인정보수정
	@PostMapping(value="/personalinformation")
	public String postpersonalinformation(HttpSession session, UsersDTO dto) {
		
		service.modify(dto);
		session.invalidate();
		
		return "redirect:/login";
	}//	
//	@프로필수정
	@GetMapping("/profile")
	public String profile() {
		return "profile";
	}//	
//	@프로필수정
	@PostMapping("/profile")
	public String postprofile(HttpSession session,UsersDTO dto) {
		service.updateprofile(dto);
		session.invalidate();
		return "redirect:/login";
	}//	
//	@마이페이지
	@GetMapping(value="/mypage")
	public String mypage() {
//		service.list()
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
