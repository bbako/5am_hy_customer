package org.cg.persistence;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.cg.domain.CustomerVO;
import org.cg.domain.MemberVO;
import org.cg.dto.LoginDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
@Repository
public class CustomerDAOImpl implements CustomerDAO {

	private static final String namespace = "org.cg.persistence.CustomerDAO";
	
	@Inject
	SqlSessionTemplate sess;
	
	@Override
	public void insert(CustomerVO vo) {
		
		sess.insert(namespace+".insert",vo);

	}

	@Override
	public void keepLogin(String cemail, String sessionID, Date next) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("cemail", cemail);
		map.put("sessionID", sessionID);
		map.put("next", next);
		
		sess.update(namespace+".keepLogin", map);
		
	}

	@Override
	public CustomerVO checkSessionKey(String value) {
		
		return sess.selectOne(namespace+".checkSessionKey", value);
	}

	@Override
	public CustomerVO login(LoginDTO dto) throws Exception {
		
		return sess.selectOne(namespace + ".login", dto);
	}

	@Override
	public CustomerVO idcheck(CustomerVO vo) throws Exception {
		
		return sess.selectOne(namespace+".idcheck", vo);
	}

	@Override
	public CustomerVO findId(String cname) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("cname", cname);
		
		return sess.selectOne(namespace+".findId", map);
	}

	@Override
	public CustomerVO findPw(String cemail, String cname) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("cemail", cemail);
		map.put("cname", cname);
		return sess.selectOne(namespace+".findPw", map);
	}

	@Override
	public void insertm(MemberVO vo) {
		sess.insert(namespace+".insertm",vo);
		
	}

}
