package org.cg.persistence;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.cg.domain.Criteria;
import org.cg.domain.MAnswerVO;
import org.cg.domain.MQuestionVO;
import org.cg.domain.StoreVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class StoreDAOImpl implements StoreDAO {

	@Inject
	private SqlSessionTemplate sess;

	private static final String namespace = "org.cg.persistence.StoreDAO";

	
	@Override
	public List<StoreVO> getlist(StoreVO vo,Integer page) {
		
		HashMap<String, Object> map = new HashMap<>();
		map.put("vo", vo);
		map.put("page", page);
		
		
		return sess.selectList(namespace+".getlist",map);
	}

	@Override
	public List<StoreVO> getadlist(Integer page) {
		
		return sess.selectList(namespace+".getadlist",page);
	}


	@Override
	public List<StoreVO> categetadlist(HashMap<String, String> map) {
		
		return sess.selectList(namespace+".categetadlist", map);
	}

	@Override
	public StoreVO getDetail(String sid) {
		return sess.selectOne(namespace+".getDetail", sid);
	}

	@Override
	public List<MQuestionVO> qRead(Criteria cri) {
		return sess.selectList(namespace+".qRead", cri);
	}

	@Override
	public MQuestionVO qDetail(String mqno) {
		return sess.selectOne(namespace+".qDetail", mqno);
	}


	@Override
	public List<MAnswerVO> aDetail(String mqno) {
		return sess.selectList(namespace+".aDetail", mqno);
	}

	@Override
	public void replyRegister(MQuestionVO vo) {
		sess.insert(namespace+".replyRegister", vo);
	}

	@Override
	public int getReplyTotal(Criteria cri) {
		return sess.selectOne(namespace+".getReplyTotal", cri);
	}
	
}
