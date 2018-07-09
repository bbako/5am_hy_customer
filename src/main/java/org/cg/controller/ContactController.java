package org.cg.controller;

import org.cg.util.SendEmail;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/contact")
public class ContactController {
	
	private static final Logger logger = LoggerFactory.getLogger(ContactController.class);
	
	@GetMapping("/list")
	public void getContact()throws Exception{

	}
	

	@RequestMapping(value= "/list", method=RequestMethod.POST)
	@ResponseBody
	public String getLogin(@RequestParam("address") String address, @RequestParam("name") String name, 
			@RequestParam("message") String message,RedirectAttributes rttr)throws Exception{
		logger.info("ms  : "+message);
		logger.info("add  : "+address);
		logger.info("na  : "+name);
		
		
		try {
			SendEmail mail = new SendEmail();
			
			mail.send( address, name, message );
			
			return "success";
			
		} catch (Exception e) {
			
			return "fail";
		}
		
		
	    
	   }

	}
	
	

