package com.example.demo.reply;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ReplyMapper {
	void writeReply(); //hashmap? 특정번호 글에 댓글 등록
}
