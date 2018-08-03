package com.tikitaka.cloudFunding.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProjectController {
	
	@RequestMapping("projectStart.do")
	public String ProjectForm(){
		return "project/projectstart";
	}
}
