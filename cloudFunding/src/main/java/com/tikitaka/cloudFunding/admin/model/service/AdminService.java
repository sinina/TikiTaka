package com.tikitaka.cloudFunding.admin.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tikitaka.cloudFunding.admin.model.dao.AdminDao;

@Service
public class AdminService {
	
	@Autowired
	AdminDao admindao;

}
