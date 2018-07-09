package org.cg.domain;

import java.sql.Timestamp;

public class CustomerVO {
	private int cno;
	private String cname, cemail,caddrm,caddr,cpw;
	private Timestamp regdate,updatedate;
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCemail() {
		return cemail;
	}
	public void setCemail(String cemail) {
		this.cemail = cemail;
	}
	public String getCaddrm() {
		return caddrm;
	}
	public void setCaddrm(String caddrm) {
		this.caddrm = caddrm;
	}
	public String getCaddr() {
		return caddr;
	}
	public void setCaddr(String caddr) {
		this.caddr = caddr;
	}
	public String getCpw() {
		return cpw;
	}
	public void setCpw(String cpw) {
		this.cpw = cpw;
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
		return "CustomerVO [cno=" + cno + ", cname=" + cname + ", cemail=" + cemail + ", caddrm=" + caddrm + ", caddr="
				+ caddr + ", cpw=" + cpw + ", regdate=" + regdate + ", updatedate=" + updatedate + "]";
	}
	

	

	

	
	
	
}
