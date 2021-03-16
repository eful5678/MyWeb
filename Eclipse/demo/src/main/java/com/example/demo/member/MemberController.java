package com.example.demo.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService mservice;
	
	@RequestMapping("/")
	public String main() {
		return "/member/main";	
	}
	
	@GetMapping("/member/loginForm")
	public String loginForm() {
		return "/member/login";
	}
	
	@GetMapping("/member/login")
	public String login(HttpServletRequest req, Member m) {
		HttpSession session = req.getSession();
		Member member = mservice.getMember(m.getId());
		System.out.println("입력된 ID : " + m.getId());
		if(member == null || !member.getPassword().equals(m.getPassword()) ) {
			System.out.println("로그인 실패");
			return "/member/loginForm";
		}else {
			System.out.println("로그인 성공");
			session.setAttribute("id", member.getId());
			return "/member/main";
		}
	}
	
	@GetMapping("/member/joinForm")
	public String joinForm() {
		return "/member/join";
	}
	
	@PostMapping("/member/join")
	public String join(Member m) {
		mservice.addMember(m);
		
		return "redirect:/";
	}

}
