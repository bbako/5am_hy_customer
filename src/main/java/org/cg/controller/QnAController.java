package org.cg.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.cg.domain.Criteria;
import org.cg.domain.CusQuestionVO;
import org.cg.domain.CusReplyVO;
import org.cg.domain.PageMaker;
import org.cg.persistence.QnaDAO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/qna")
public class QnAController {
	
	@Inject
	QnaDAO dao;
	
	private final static Logger logger = Logger.getLogger(QnAController.class);

	@GetMapping("/list")
	public void qnaGet(){
	
	
			
	}
	
	@PostMapping("/list")
	@ResponseBody
	public List<CusQuestionVO> qnaPost(String keyword,String type,Integer page){
		
		Criteria cri = new Criteria();
		cri.setKeyword(keyword);
		cri.setType(type);
		cri.setPage(page);
		List<CusQuestionVO> list= new ArrayList<CusQuestionVO>();
		
		PageMaker pageMaker=new PageMaker(cri, dao.getTotal(cri)); 
		
		
		list=dao.getQList(cri);
		
		return list;
	}
	
	
	
	@PostMapping("/regi")
	@ResponseBody
	public String regicusQ(CusQuestionVO vo){
		logger.info("regi post...... ");
		logger.info(vo);
		dao.qInsert(vo);
		
		return "success";
	}
	
	@PostMapping("/modi")
	public @ResponseBody String modipost(CusQuestionVO vo){
		
		logger.info(vo);
		dao.qUpdate(vo);
		
		return "modi success";
		
	}
	
	@PostMapping("/del")
	public @ResponseBody String delpost(CusQuestionVO vo){
		
		logger.info(vo);
		dao.qDelete(vo);
		
		return "del success";
		
	}
	
	
	@PostMapping("/relist")
	@ResponseBody
	public List<CusReplyVO> relistPost(CusReplyVO vo){
		
		logger.info("relist post in......");
		
		List<CusReplyVO> list= new ArrayList<CusReplyVO>();
		
		list=dao.getreList(vo);
		
		return list;
	}
	
	
	@PostMapping("/reregi")
	public @ResponseBody String reregipost(CusReplyVO vo){

		logger.info("reregi post in......");
		logger.info(vo.getCusqno());
		
		dao.reregi(vo);
		dao.setcount(vo.getCusqno());
		
		return String.valueOf(vo.getCusqno());
		
	}
	
	
	
}
