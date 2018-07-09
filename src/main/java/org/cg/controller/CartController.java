package org.cg.controller;

import java.util.List;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.cg.domain.CartVO;
import org.cg.persistence.CartDAO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/cart")
public class CartController {
	
	private static final Logger logger = Logger.getLogger(CartController.class);
	
	@Inject
	CartDAO dao;
	
	@PostMapping("/list")
	@ResponseBody
	public List<CartVO> cartPost(@RequestParam("customer") String customer){
		
		logger.info("카트 리스트 보내기");
		
		List<CartVO> list = dao.read(customer);
		
		return list;
	}

	
	@PostMapping("/add")
	@ResponseBody
	public String cartaddPost(@RequestParam("customer") String customer, @RequestParam("store") String sid ){
		
		logger.info("카트에 넣기");
			
			CartVO vo = dao.same(customer, sid);
			
			if(vo !=null){
				
				return "Already in my list";
				
			}else {
		
				dao.add(customer, sid);
				
				return "add to cart";
					
			}
		
	}
	
	@PostMapping("/del")
	@ResponseBody
	public String zzimDelPost(@RequestParam("customer") String mid, @RequestParam("store") String sid ){
		
		logger.info("찜 지우기");
		
		dao.del(mid, sid);
		
		return "zzim deleted";
		
	}

	
}
