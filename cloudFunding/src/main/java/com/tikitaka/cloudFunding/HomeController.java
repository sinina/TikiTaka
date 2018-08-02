package com.tikitaka.cloudFunding;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
<<<<<<< HEAD
		System.out.println("haha");
		System.out.println("sd");
		System.out.println("123");
		System.out.println("111");
		System.out.println("222");

=======
		System.out.println("test");
		System.out.println("없어저라");
		System.out.println("없어져라2");
		System.out.println("asd");
		System.out.println("qmdpdpd");
>>>>>>> branch 'kky' of https://github.com/sinina/TikiTaka.git
		return "home";
	}
	
}
