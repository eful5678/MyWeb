package com.example.demo.board;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardMapper {
	
	void writeBoard(Board b);
	
	ArrayList<Board> selectAll();
	
	Board selectByNum(int num);
	
	void editBoard(Board b);

}
