package com.tikitaka.cloudFunding.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {

	
	@RequestMapping("loginPage.do")
	public String loginPage() {
		return "member/loginPage";
	}
	
	@RequestMapping("joinPage.do")
	public String joinPage() {
		return "member/joinPage";
				
	}
	
	@RequestMapping("googleJoin.do")
	public ModelAndView join(@RequestParam("googlename") String name, 
			@RequestParam("profile_img") String profile_img, 
			@RequestParam("googleemail") String email,			
			ModelAndView mv) {
		
		System.out.println(name);
		System.out.println(profile_img);
		System.out.println(email);
		
		mv.setViewName("home");
		return mv;
	}
}
