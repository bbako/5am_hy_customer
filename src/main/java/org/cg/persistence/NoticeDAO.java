package org.cg.persistence;

import java.util.List;

import org.cg.domain.NoticeVO;

public interface NoticeDAO {
	
	public void create(NoticeVO vo);
	
	public List<NoticeVO> getList(int page); 
	
	public void update(NoticeVO vo);
	
	public void delete(String tcno);
	
	

}
