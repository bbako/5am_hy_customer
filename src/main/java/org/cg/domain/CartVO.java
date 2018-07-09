package org.cg.domain;

public class CartVO {
	
	String mid, sid;

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getSid() {
		return sid;
	}

	public void setSid(String sid) {
		this.sid = sid;
	}

	@Override
	public String toString() {
		return "CartVO [mid=" + mid + ", sid=" + sid + "]";
	}
	
	

}
