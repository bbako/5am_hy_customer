package org.cg.domain;

import java.sql.Timestamp;

public class CusAnswerVO {

	private int cusano;
	private int cusqno;
	private String cusacontent;
	private String cusawriter;
	private Timestamp regdate;
	private Timestamp updatedate;
	
	
	public int getCusano() {
		return cusano;
	}
	public void setCusano(int cusano) {
		this.cusano = cusano;
	}
	public int getCusqno() {
		return cusqno;
	}
	public void setCusqno(int cusqno) {
		this.cusqno = cusqno;
	}
	public String getCusacontent() {
		return cusacontent;
	}
	public void setCusacontent(String cusacontent) {
		this.cusacontent = cusacontent;
	}
	public String getCusawriter() {
		return cusawriter;
	}
	public void setCusawriter(String cusawriter) {
		this.cusawriter = cusawriter;
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
		return "CusAnswerVO [cusano=" + cusano + ", cusqno=" + cusqno + ", cusacontent=" + cusacontent + ", cusawriter="
				+ cusawriter + ", regdate=" + regdate + ", updatedate=" + updatedate + "]";
	}
	
	
	
	
}
