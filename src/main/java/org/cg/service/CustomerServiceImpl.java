package org.cg.service;

import java.util.Date;

import javax.inject.Inject;

import org.cg.domain.CustomerVO;
import org.cg.domain.MemberVO;
import org.cg.dto.LoginDTO;
import org.cg.persistence.CustomerDAO;
import org.springframework.stereotype.Service;
@Service
public class CustomerServiceImpl implements CustomerService {

	@Inject
	CustomerDAO dao;
	
	
	@Override
	public void insert(CustomerVO vo) {
		dao.insert(vo);

	}


	@Override
	public void keepLogin(String cemail, String sessionID, Date next) {
		dao.keepLogin(cemail, sessionID, next);
		
	}


	@Override
	public CustomerVO checkSessionKey(String value) {
		// TODO Auto-generated method stub
		return dao.checkSessionKey(value);
	}


	@Override
	public CustomerVO login(LoginDTO dto) throws Exception {
		
		return dao.login(dto);
	}


	@Override
	public CustomerVO idcheck(CustomerVO vo) throws Exception {
		
		return dao.idcheck(vo);
	}


	@Override
	public CustomerVO findId(String cname) {
		// TODO Auto-generated method stub
		return dao.findId(cname);
	}


	@Override
	public CustomerVO findPw(String cemail, String cname) {
		// TODO Auto-generated method stub
		return dao.findPw(cemail, cname);
	}


	@Override
	public void insertm(MemberVO vo) {
		dao.insertm(vo);
		
	}

}
