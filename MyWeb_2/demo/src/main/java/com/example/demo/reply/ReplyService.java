package com.example.demo.reply;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReplyService {
	
	@Autowired
	private ReplyMapper mapper;
	
	public void writeReply(int b_num, String rep_content, String id) {
		mapper.writeReply(b_num, rep_content, id);
	}
	
	public ArrayList<Reply> SelectByBnum(int b_num){
		
		return mapper.SelectByBnum(b_num);
	}
	
	public ArrayList<Reply> selectAll(){
		return mapper.selectAll();
	}
}
