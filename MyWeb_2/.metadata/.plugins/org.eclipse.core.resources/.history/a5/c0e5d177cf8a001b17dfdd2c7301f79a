package com.example.demo.board;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardService {
	
	@Autowired
	private BoardMapper mapper;
	
	public void writeBoard(Board b) {
		mapper.writeBoard(b);
	}
	
	public ArrayList<Board> selectAll() {
		return mapper.selectAll();
	}
	
	public Board selectByNum(int num) {
		return mapper.selectByNum(num);
	}
	
	public void editBoard(Board b) {
		mapper.editBoard(b);
		
	}

}
