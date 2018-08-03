package com.tikitaka.cloudFunding.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tikitaka.cloudFunding.admin.model.service.AdminService;

@Controller
public class AdminController {
	
	@Autowired
	AdminService adminservice;
	
	@RequestMapping("adminMenuList.do")
	public String adminMenuList() {
		
		
		
		
		
		return "admin/adminMenuList";
	}
	
	

}
