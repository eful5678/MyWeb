package com.example.demo.board;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService bservice;
	
	@GetMapping("/board/boardForm")
	public String boardForm() {
		return "/board/boardForm";
	}
	
	@PostMapping("/board/board")
	public String board(Board b) {
		bservice.writeBoard(b);
		return "redirect:/board/boardList";
	}
	
	@GetMapping("/board/boardList")
	public ModelAndView boardList() {
		ModelAndView mav = new ModelAndView("/board/boardList");
		ArrayList<Board> boardList = null;
		boardList = bservice.selectAll();
		System.out.println(boardList);
		
		mav.addObject("list", boardList);
		return mav;
	}
	
	@GetMapping("/board/boardDetail")
	public ModelAndView boardDetail(@RequestParam("b_num") int num) {
		System.out.println("글 번호 : " + num);
		ModelAndView mav = new ModelAndView("/board/boardDetail");
		Board board = bservice.selectByNum(num);
		
		bservice.incCNT(num);
		
		System.out.println("글 내용 : " + board);
		mav.addObject("b",board);
		
		return mav;
	}
	
	@GetMapping("/board/boardUpdate")
	public ModelAndView boardUpdate(@RequestParam("b_num") int num) {
		System.out.println("BoardController.boardUpdate()");
		System.out.println("글 번호(update) : " + num);
		ModelAndView mav = new ModelAndView("/board/boardUpdate");
		Board board = bservice.selectByNum(num);
		System.out.println("선택된 글 : " + board);
		mav.addObject("b", board);
		return mav;
	}
	
	@PostMapping("/board/boardEdit")
	public String boardEdit(Board b) {
		System.out.println("BoardController.boardEdit()");
		System.out.println("수정된 board : " + b);
		bservice.editBoard(b);
		return "redirect:/board/boardList";
	}
	
	

}
