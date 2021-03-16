package com.example.demo.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	@RequestMapping("/")
	public String main() {
		return "/member/main";	
	}
	
	@GetMapping("/member/login")
	public String login() {
		return "/member/login";
	}
	
	@GetMapping("/member/join")
	public String join() {
		return "/member/join";
	}

}
