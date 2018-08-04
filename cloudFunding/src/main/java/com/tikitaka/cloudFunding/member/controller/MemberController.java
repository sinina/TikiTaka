package com.tikitaka.cloudFunding.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
//
	
	@RequestMapping("loginPage.do")
	public String loginPage() {
		return "member/loginPage";
	}
	
	@RequestMapping("joinPage.do")
	public String joinPage() {
		return "member/joinPage";
				
	}
}
