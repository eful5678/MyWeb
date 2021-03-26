package com.example.demo.reply;

public class Reply {
	
	String m_id;
	int b_num;
	String rep_content;
	
	
	public Reply() {
		super();
	}
	public Reply(String m_id, int b_num, String rep_content) {
		super();
		this.m_id = m_id;
		this.b_num = b_num;
		this.rep_content = rep_content;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public int getB_num() {
		return b_num;
	}
	public void setB_num(int b_num) {
		this.b_num = b_num;
	}
	public String getRep_content() {
		return rep_content;
	}
	public void setRep_content(String rep_content) {
		this.rep_content = rep_content;
	}
	@Override
	public String toString() {
		return "Reply [m_id=" + m_id + ", b_num=" + b_num + ", rep_content=" + rep_content + "]";
	}
	
	
}
