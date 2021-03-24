package com.example.demo.member;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {
	
	void addMember(Member m);
	
	Member getMember(String id);
	
	void editMember(Member m);
	
	void delMember(String id);

}
	