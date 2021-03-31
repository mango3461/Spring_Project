package org.ict.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "index";
	}
	
	@GetMapping("/mix")
	public String mix() {
		return "/mix/mix";
	}
	@GetMapping("/vote")
	public String vote() {
		return "/vote/vote";
	}
	@GetMapping("/rank")
	public String rank() {
		return "/rank/rank";
	}
	@GetMapping("/board")
	public String board() {
		return "/board/list";
	}
	@GetMapping("/login")
	public String login() {
		return "/member/login";
	}
	
	
	@GetMapping("/test")
	public void mixtest(){
		
	}
	
}
