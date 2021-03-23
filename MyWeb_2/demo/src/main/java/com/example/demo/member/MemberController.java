package com.example.demo.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService mservice;
	
	@RequestMapping("/")
	public String main() {
		return "/index";	
	}
	
	@GetMapping("/member/joinForm")
	public String joinForm() {
		return "/member/join";
	}
	
	@PostMapping("/member/join")
	public String join(Member m) {
		System.out.println("MemberController.join()");
		System.out.println("회원가입 정보 : " + m);
		mservice.addMember(m);
		
		return "redirect:/";
	}
	
	@GetMapping("/member/idCheck")
	public ModelAndView idCheck(@RequestParam("id") String id) {
		System.out.println("MemberController.idCheck()");
		System.out.println("입력된 id = " + id);
		String result = "";
		ModelAndView mav = new ModelAndView("/member/check");
		Member m = mservice.getMember(id);
		System.out.println("입력된 id 정보 : " + m);
		if(m == null) {
			result = "가능";
		}else {
			result = "불가";
		}
		System.out.println("중복 여부 :" + result);
		mav.addObject("result",result);
		return mav;
	}
	
	@GetMapping("/member/loginForm")
	public String loginForm() {
		return "/member/login";
	}
	
	@PostMapping("/member/login")
	public ModelAndView login(HttpServletRequest req, @RequestParam("id")String id, @RequestParam("password") String password) {
		System.out.println("MemberController.login()");
		HttpSession session = req.getSession();
		ModelAndView mav = new ModelAndView("/member/check");
		System.out.println("입력된 id = " + id);
		System.out.println("입력된 password = " + password);
		Member member = mservice.getMember(id);

		String result ="";
		if(member == null || !member.getPassword().equals(password) ) {
			result = "로그인 실패";
			System.out.println(result);
			mav.addObject("result",result);
			//mav.setViewName("redirect:/member/loginForm");
			
		}else {
			result = "로그인 성공";
			System.out.println(result);
			session.setAttribute("id", member.getId());
			mav.addObject("result", result);
			//mav.setViewName("/index");
			
		}
		
		return mav;
	}
	

	
	@GetMapping("/member/logout")
	public String logout(HttpServletRequest req) {
		System.out.println("MemberController.logout()");
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("id");
		session.removeAttribute("id");
		session.invalidate();
		
		return "redirect:/";
	}
	

	
	@GetMapping("/member/editForm")
	public ModelAndView editForm(HttpServletRequest req) {
		System.out.println("MemberController.editForm()");
		ModelAndView mav = new ModelAndView("/member/editForm");
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("id");
		Member member = mservice.getMember(id);
		System.out.println("접속중인 ID : " + id);
		System.out.println("수정할 회원정보 : " + member);
		mav.addObject("m", member);
		
		return mav;
	}
	
	@PostMapping("/member/edit")
	public String edit(Member m) {
		System.out.println("MemberController.edit()");
		System.out.println("수정된 회원정보 : " + m);
		mservice.editMember(m);
		
		return "redirect:/";
	}

}
