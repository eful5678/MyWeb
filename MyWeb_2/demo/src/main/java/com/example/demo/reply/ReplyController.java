package com.example.demo.reply;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.board.BoardService;

@Controller
public class ReplyController {
	
	@Autowired
	private ReplyService rservice;
	
	@Autowired
	private BoardService bservice;
	
	@PostMapping("/reply/writeReply")
	public ModelAndView writeReply(HttpServletRequest req, @RequestParam("b_num")int b_num, @RequestParam("rep_content")String rep_content) {
		System.out.println("ReplyController.writeReply()");
		System.out.println("리플 번호 : " + b_num);
		System.out.println("리플 내용 : " + rep_content);
		ModelAndView mav = new ModelAndView("/reply/replyList");
		
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		System.out.println("리플 id : " + id);
		rservice.writeReply(b_num, rep_content, id);
		ArrayList<Reply> list = rservice.SelectByBnum(b_num);
		//mav.addObject("list", list);
		//ArrayList<Reply> list = rservice.selectAll();
		System.out.println(b_num + "번 글 댓글 : " + list);
		mav.addObject("list", list);
		return mav;
		
	}
	
	@GetMapping("/reply/replyList")
	public ModelAndView replyList(@RequestParam("b_num")int b_num) {
		System.out.println("ReplyController.replyList()");
		System.out.println("댓글 글 번호 : " + b_num);
		ModelAndView mav = new ModelAndView("/reply/replyList");
		ArrayList<Reply> list = rservice.SelectByBnum(b_num);
		System.out.println("댓글 목록 : " + list);
		
		mav.addObject("list", list);
		return mav;
		
	}
}
