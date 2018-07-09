package org.cg.controller;

import java.util.Date;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.cg.domain.CustomerVO;
import org.cg.dto.LoginDTO;
import org.cg.service.CustomerService;
import org.cg.util.SendEmailCus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.WebUtils;

@Controller
@RequestMapping("/login")
public class LoginController {
	
	private static final Logger logger = Logger.getLogger(LoginController.class);
	
	private static final String LOGIN = "login";
	
	@Inject
	CustomerService cservice;

	@GetMapping("/main")
	public void getLogin(){
		
	}
	
	@PostMapping("/login2")
	public String postLoginSNS(LoginDTO dto,RedirectAttributes rttr, Model model,HttpSession session)throws Exception {
			logger.info(""+dto);
			CustomerVO vo = cservice.login(dto);
			
			if(vo == null){
				logger.info("SNS정보가 없을떄");
				rttr.addFlashAttribute("dto", dto);
				
				
				return "redirect:/register/main";
				
			}
		
			logger.info(""+vo);
			model.addAttribute("customerVO", vo);
			logger.info(dto.getToken());
			model.addAttribute("token", dto.getToken());
			
					logger.info("SNS정보가 있을때");
					if(dto.isUseCookie()){
						
						int amount = 60*60*24*7;			
						Date sessionLimit = new Date(System.currentTimeMillis()+(1000*amount));
						
						cservice.keepLogin(vo.getCemail(), session.getId(), sessionLimit);
						
					}
				
					
					return "login/login2";
	}
	
	@PostMapping("/loginPost")

	public String postLogin(LoginDTO dto,HttpSession session, Model model,RedirectAttributes rttr)throws Exception{
		logger.info("==============================================================================");
		logger.info("일반 로그인 보낼때");
		logger.info(""+dto);
		CustomerVO vo = cservice.login(dto);
		
		
		if(vo == null){
			rttr.addFlashAttribute("fail", "fail");
			logger.info("로그인 정보 없을 때");
			return "redirect:/login/main";
		}
		
		model.addAttribute("customerVO", vo);
		
		if(dto.isUseCookie()){
			
			int amount = 60*60*24*7;			
			Date sessionLimit = new Date(System.currentTimeMillis()+(1000*amount));
			
			cservice.keepLogin(vo.getCemail(), session.getId(), sessionLimit);
			
		}
		logger.info(""+vo);		
	
		return "login/loginPost";
		
	}
	
	@GetMapping("/logout")
	public String logoutGet(HttpSession session, RedirectAttributes rttr, HttpServletRequest request, HttpServletResponse response){
		
		logger.info("로그아웃");
		
		Object obj = session.getAttribute(LOGIN);
		
		if (obj != null) {
			CustomerVO vo = (CustomerVO) obj;
			session.removeAttribute(LOGIN);
			session.invalidate();
			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");			
			
			if (loginCookie !=null) {
				
				loginCookie.setPath("/");
				loginCookie.setMaxAge(0);
				response.addCookie(loginCookie);
				cservice.keepLogin(vo.getCemail(), session.getId(), new Date());
			}
			rttr.addFlashAttribute("logoutmsg","success");
			
		}
		return "redirect:/index";
		
	}
	
	@GetMapping("/forgotid")
	public void forgotidGet ()throws Exception{
		
	}
	
	@PostMapping("/forgotid")
	public String forgotidPost (String cname, CustomerVO vo,RedirectAttributes rttr) throws Exception{
		logger.info("forgotid@@");
		logger.info(cname);
		
		
		try {
			vo = cservice.findId(cname);
			
			SendEmailCus mail = new SendEmailCus();
			
			mail.send("5AM에서 요청하신 아이디 입니다.", vo.getCemail(), vo.getCemail());
			
			rttr.addFlashAttribute("sendId","success");
			return "redirect:/login/main";
			
		} catch (Exception e) {
			
			rttr.addFlashAttribute("sendId","fail");
			return "redirect:/login/forgotid";

		}
	}
	
	@GetMapping("/forgotpw")
	public void forgotpwGet ()throws Exception{
		
	}
	
	@PostMapping("/forgotpw")
	public String forgotpwPost (String cemail, String cname,CustomerVO vo, RedirectAttributes rttr) throws Exception{
		logger.info("forgotpw@@");
		logger.info(cemail);
		logger.info(cname);
		try {
			vo = cservice.findPw(cemail, cname);
			
			SendEmailCus mail = new SendEmailCus();
			
			mail.send("5AM에서 요청하신 비밀번호 입니다.", vo.getCemail(), vo.getCpw());
			
			rttr.addFlashAttribute("sendPw","success");
			return "redirect:/login/main";
			
		} catch (Exception e) {
			rttr.addFlashAttribute("sendPw","fail");
			return "redirect:/login/forgotpw";
		}
		
	}
	
	@GetMapping("/callback")
	public void callback()throws Exception{
			
		logger.info("네이버 콜백");
	}
	
	
}
