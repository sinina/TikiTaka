package com.tikitaka.cloudFunding.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProjectController {
	/*@Autowired
	ProjectService pService;*/
	
	@RequestMapping("projectStart.do")
	public String ProjectForm(){
		return "project/projectstart";
	}
	
	@RequestMapping("projectDetail.do")
	public ModelAndView projectDetail(/*int pProjectCode, */ModelAndView mv){
		/*ProjectVo project = pService.selectProject(pProjectCode);
		mv.addObject("project", project);*/
		mv.setViewName("project/projectDetail");
		return mv;
		
	}
}
