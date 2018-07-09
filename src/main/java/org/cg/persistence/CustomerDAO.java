package org.cg.persistence;

import java.util.Date;

import org.cg.domain.CustomerVO;
import org.cg.domain.MemberVO;
import org.cg.dto.LoginDTO;


public interface CustomerDAO {
	
	public void insert(CustomerVO vo);
	
	public void insertm(MemberVO vo);
	
	public void keepLogin(String cemail, String sessionID, Date next);
	
	public CustomerVO checkSessionKey(String value);
	
	public CustomerVO login(LoginDTO dto) throws Exception;
	
	public CustomerVO idcheck(CustomerVO vo)throws Exception;
	
	public CustomerVO findId(String cname);
	
	public CustomerVO findPw(String cemail, String cname);
}
