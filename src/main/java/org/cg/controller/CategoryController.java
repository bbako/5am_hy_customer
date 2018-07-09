package org.cg.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.cg.domain.Criteria;
import org.cg.domain.MAnswerVO;
import org.cg.domain.MQuestionVO;
import org.cg.domain.PageMaker;
import org.cg.domain.StoreVO;
import org.cg.persistence.StoreDAO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/category")
public class CategoryController {

	
	private static final Logger logger= LoggerFactory.getLogger(CategoryController.class);
	@Inject
	StoreDAO dao;
	
	@GetMapping("/list")
	public void categoryget(@RequestParam("cate")String cate,Model model){
		
		model.addAttribute("cate", cate);
		
		
	}
	

	@PostMapping("/list")
	@ResponseBody
	public List<StoreVO> getKitchen(@RequestParam("scategory")String scategory,@RequestParam("page")String page)throws Exception{

		logger.info("list 들어와써용 ");
		
		logger.info("scategory: "+scategory);
		logger.info("page: "+page);		
		
		List<StoreVO> list = new ArrayList<>();		
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("scategory", scategory);
		map.put("page", page);
		
		list = dao.categetadlist(map);
		
		return list;
		
	}
	
	@PostMapping("/getDetail")
	@ResponseBody
	public StoreVO getDetail(String sid){
		StoreVO vo=new StoreVO();
		vo = dao.getDetail(sid);
		return vo;
	}

	@PostMapping("/qRead")
	@ResponseBody
	public List<MQuestionVO> qRead(Criteria cri){
		logger.info("cri$$$$$$$ "+cri);
		List<MQuestionVO> list= new ArrayList<>();
		list=dao.qRead(cri);
		return list;
	}
	
	@PostMapping("/qPage")
	@ResponseBody
	public PageMaker qPage(Criteria cri){
		PageMaker pageMaker=new PageMaker(cri, dao.getReplyTotal(cri)); 
		return pageMaker;
	}
	
	@PostMapping("/qDetail")
	@ResponseBody
	public MQuestionVO qDetail(String mqno){
		MQuestionVO qvo=dao.qDetail(mqno);
		return qvo;
	}
	
	@PostMapping("/aDetail")
	@ResponseBody
	public List<MAnswerVO> aDetail(String mqno){
		List<MAnswerVO> aList=dao.aDetail(mqno);
		return aList;
	}
	
	@PostMapping("/replyRegister")
	@ResponseBody
	public String replyRegister(MQuestionVO vo){
		dao.replyRegister(vo);
		return "success";
	}
	

	
}
