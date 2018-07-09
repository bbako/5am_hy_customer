package org.cg.controller;


import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.cg.domain.CustomerVO;
import org.cg.domain.MemberVO;
import org.cg.service.CustomerService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/register")
public class RegisterController {
	
	private static final Logger logger = Logger.getLogger(RegisterController.class);
	
	@Inject
	CustomerService cservice;
	
	@GetMapping("/main")
	public void getRegister()throws Exception{

	}
	
	@PostMapping("/main")
	public void postRegister(CustomerVO vo){
		
		logger.info(""+vo);
		
		cservice.insert(vo);
		
		MemberVO mvo = new MemberVO();
		mvo.setMid(vo.getCemail());
		mvo.setMpw(vo.getCpw());
		mvo.setMname(vo.getCname());
		mvo.setMaddr(vo.getCaddrm()+" "+vo.getCaddr());
		
		cservice.insertm(mvo);
	}
	
	@PostMapping("/check")
	@ResponseBody
	public String checkId(@RequestParam("email")String email) throws Exception{
		CustomerVO vo = new CustomerVO();
		vo.setCemail(email);
		CustomerVO vo1 = cservice.idcheck(vo);
		
		if(vo1 !=null){
			return "fail";
		}
		
		return email;
		
	}
	
}
