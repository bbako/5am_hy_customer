package org.cg.persistence;

import java.util.List;

import org.cg.domain.CartVO;

public interface CartDAO {
	
	public List<CartVO> read(String mid);
	
	public void add(String mid, String sid);
	
	public CartVO same(String mid, String sid);
	
	public void del(String mid, String sid);


}
