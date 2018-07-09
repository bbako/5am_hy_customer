package org.cg.persistence;

import java.util.List;

import org.cg.domain.Criteria;
import org.cg.domain.CusQuestionVO;
import org.cg.domain.CusReplyVO;

public interface QnaDAO {
	
//  question
	
	public List<CusQuestionVO> getQList(Criteria cri);
	
	public int getTotal(Criteria cri);
	
	public CusQuestionVO qReadOne(CusQuestionVO vo);
	
	public void qUpdate(CusQuestionVO vo);
	
	public void qDelete(CusQuestionVO vo);
	
	public void qInsert(CusQuestionVO vo);
	
	public String gettime();

	public void reregi(CusReplyVO vo);

	public List<CusReplyVO> getreList(CusReplyVO vo);

	public void setcount(int cusqno);
	

	
	

	
}
