package org.cg.persistence;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.cg.domain.CartVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
@Repository
public class CartDAOImpl implements CartDAO {
	
	String namespace = "org.cg.persistence.CartDAO";

	@Inject
	SqlSessionTemplate sess;
	
	@Override
	public List<CartVO> read(String mid) {
		
		return sess.selectList(namespace+".getCart", mid);
	}

	@Override
	public void add(String mid, String sid) {
		
		HashMap<String, Object> map = new HashMap<>();

		map.put("mid", mid);
		map.put("sid", sid);
		
		sess.insert(namespace+".add", map);
	}

	@Override
	public CartVO same(String mid, String sid) {
		HashMap<String, Object> map = new HashMap<>();

		map.put("mid", mid);
		map.put("sid", sid);
		return sess.selectOne(namespace+".sameCheck", map);
	}

	@Override
	public void del(String mid, String sid) {
		HashMap<String, Object> map = new HashMap<>();

		map.put("mid", mid);
		map.put("sid", sid);
		
		sess.delete(namespace+".del", map);
	}


}
