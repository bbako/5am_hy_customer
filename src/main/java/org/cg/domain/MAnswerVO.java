package org.cg.domain;

import java.sql.Date;
import java.sql.Timestamp;

public class MAnswerVO {
	
	int mano, mqno;
	String title, content, sid;
	Date regdate ,updatedate;
	
	public int getMano() {
		return mano;
	}
	public void setMano(int mano) {
		this.mano = mano;
	}
	public int getMqno() {
		return mqno;
	}
	public void setMqno(int mqno) {
		this.mqno = mqno;
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
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public Date getUpdatedate() {
		return updatedate;
	}
	public void setUpdatedate(Date updatedate) {
		this.updatedate = updatedate;
	}
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	@Override
	public String toString() {
		return "MAnswerVO [mano=" + mano + ", mqno=" + mqno + ", title=" + title + ", content=" + content + ", sid="
				+ sid + ", regdate=" + regdate + ", updatedate=" + updatedate + "]";
	}
	
	
	
	

}
