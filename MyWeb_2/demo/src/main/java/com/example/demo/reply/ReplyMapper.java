package com.example.demo.reply;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ReplyMapper {
	void writeReply(int b_num, String rep_content, String id); //hashmap? 특정번호 글에 댓글 등록
	
	ArrayList<Reply> SelectByBnum(int b_num);
	
	ArrayList<Reply> selectAll();

}
