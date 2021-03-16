package com.example.demo.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberLeeController {

	@RequestMapping("/MemberLee/Lee")
	public String Lee() {
		return "/MemberLee/Lee";	
	}
	
}
