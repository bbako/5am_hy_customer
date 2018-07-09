package org.cg.domain;

import java.sql.Timestamp;

public class NoticeVO {
	
 	int tcno; 
	String writer, title, content; 
	Timestamp regdate, updatedate;
	
	
	
	
	public int getTcno() {
		return tcno;
	}
	public void setTcno(int tcno) {
		this.tcno = tcno;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	public Timestamp getUpdatedate() {
		return updatedate;
	}
	public void setUpdatedate(Timestamp updatedate) {
		this.updatedate = updatedate;
	}
	@Override
	public String toString() {
		return "NoticeVO [tcno=" + tcno + ", writer=" + writer + ", title=" + title + ", content=" + content
				+ ", regdate=" + regdate + ", updatedate=" + updatedate + "]";
	}
	
	

}
