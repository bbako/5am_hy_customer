package org.cg.persistence;

import java.util.HashMap;
import java.util.List;

import org.cg.domain.Criteria;
import org.cg.domain.MAnswerVO;
import org.cg.domain.MQuestionVO;
import org.cg.domain.StoreVO;

public interface StoreDAO {

	public List<StoreVO> getlist(StoreVO vo,Integer page);

	public List<StoreVO> getadlist(Integer page);
	
	public List<StoreVO> categetadlist(HashMap<String, String> map);
	
	public StoreVO getDetail(String sid);
	
	public List<MQuestionVO> qRead(Criteria cri);
	
	public MQuestionVO qDetail(String mqno);
	
	public List<MAnswerVO> aDetail(String mqno);
	
	public void replyRegister(MQuestionVO vo);
	
	public int getReplyTotal(Criteria cri);
	
}
