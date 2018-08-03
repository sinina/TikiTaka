package com.tikitaka.cloudFunding.jungin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JunginController {
	
	@RequestMapping("selectProjectDetail.do")
	public String selectProjectDetail(/*int projectCode*/){
		
		return "jungin/projectDetail";
	}
}
