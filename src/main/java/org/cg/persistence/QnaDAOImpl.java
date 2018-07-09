package org.cg.persistence;

import java.util.List;

import javax.inject.Inject;

import org.cg.domain.Criteria;
import org.cg.domain.CusQuestionVO;
import org.cg.domain.CusReplyVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class QnaDAOImpl implements QnaDAO {

	@Inject
	private SqlSessionTemplate sess;

	private static final String namespace = "org.cg.persistence.QnaDAO";
	
	@Override
	public List<CusQuestionVO> getQList(Criteria cri) {
		
		return sess.selectList(namespace+".QuestionList",cri);
	}
	@Override
	public int getTotal(Criteria cri) {
		
		return sess.selectOne(namespace+".getTotal",cri);
	}
	@Override
	public CusQuestionVO qReadOne(CusQuestionVO vo) {
		
		return sess.selectOne(namespace+".getDetail",vo);
	}
	@Override
	public void qUpdate(CusQuestionVO vo) {
		sess.update(namespace+".qupdate",vo);
		
	}
	@Override
	public void qDelete(CusQuestionVO vo) {
		sess.delete(namespace+".qdelete",vo);
	}
	@Override
	public void qInsert(CusQuestionVO vo) {
		sess.insert(namespace+".qinsert",vo);
	}
	
	@Override
	public String gettime() {
	
		return sess.selectOne(namespace+".gettime");
	}
	@Override
	public void reregi(CusReplyVO vo) {
		
		sess.insert(namespace+".reregi",vo);
		
	}
	@Override
	public List<CusReplyVO> getreList(CusReplyVO vo) {
		
		return sess.selectList(namespace+".relist",vo);
	}
	@Override
	public void setcount(int cusqno) {
		sess.update(namespace+".setcount",cusqno);
		
	}
	
	
	
	

}
