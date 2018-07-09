package org.cg.domain;

import java.sql.Timestamp;

public class CusReplyVO {
	
	private int rno;
	private int cusqno;
	private String recontent;
	private String rewriter;
	private Timestamp regdate;
	private Timestamp updatedate;
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public int getCusqno() {
		return cusqno;
	}
	public void setCusqno(int cusqno) {
		this.cusqno = cusqno;
	}
	public String getRecontent() {
		return recontent;
	}
	public void setRecontent(String recontent) {
		this.recontent = recontent;
	}
	public String getRewriter() {
		return rewriter;
	}
	public void setRewriter(String rewriter) {
		this.rewriter = rewriter;
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
		return "CusReplyVO [rno=" + rno + ", cusqno=" + cusqno + ", recontent=" + recontent + ", rewriter=" + rewriter
				+ ", regdate=" + regdate + ", updatedate=" + updatedate + "]";
	}
	
	
}
