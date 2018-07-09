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
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/index")
public class IndexController {
	
	@Inject
	StoreDAO dao;
	
	
	private static final Logger logger = LoggerFactory.getLogger(IndexController.class);

	
	@GetMapping
	public void getIndex()throws Exception{

	}
	
	@RequestMapping(value = "getadlist", method = RequestMethod.POST)
	public @ResponseBody List<StoreVO> sendadlist(@RequestParam("lat") String lat, @RequestParam("lng") String lng,@RequestParam("page") Integer page,@RequestParam("sname")String sname){

		logger.info("zzzzzzzzzzzzzzzdddd");
		logger.info("..."+lat+"...");
		logger.info(lng);
		logger.info(""+page);
		
		
		if(lat.equals("0")){
			logger.info("lat 0일떄");
			
			List<StoreVO> list = dao.getadlist(page);
			
			return list;
		}else{
			logger.info("lat 좌표 들왔을떄");
			List<StoreVO> list= new ArrayList<>();
			StoreVO vo=new StoreVO(); 
			vo.setLat(lat);
			vo.setLng(lng);
			vo.setSname(sname);
			
			list = dao.getlist(vo,page);
			
			
			logger.info(list.toString());
			
			
			return list;
		}
		
				 
		
		
	}
	
	
	@GetMapping("/shipping")
	public void getShipping()throws Exception{

	}
	
	
	@GetMapping("/wishlist")
	public void getWishlist()throws Exception{

	}
	@GetMapping("/about")
	public void getAbout()throws Exception{

	}
	
	@PostMapping("/search")
	public @ResponseBody List<StoreVO> searchResult(@RequestParam("lat") String lat, @RequestParam("lng") String lng, @RequestParam("page") Integer page){
		
		logger.info("zzzzzzzzzzzzzzzdddd");
		logger.info(lat);
		logger.info(lng);
		logger.info(""+page);
		
		List<StoreVO> list= new ArrayList<>();
		StoreVO vo=new StoreVO(); 
		vo.setLat(lat);
		vo.setLng(lng);
		
		list = dao.getlist(vo,page);
		logger.info(list.toString());
		
		
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