package kr.co.faceanalysis.controller;

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
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/main.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		//logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "main";
	}
	
	@RequestMapping(value = "/detail1.do", method = RequestMethod.GET)
	public String brand(Locale locale, Model model) {
		logger.info("brand page", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "detail1";
	}
	
	@RequestMapping(value = "/detail2.do", method = RequestMethod.GET)
	public String category(Locale locale, Model model) {
		logger.info("category page", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "detail2";
	}
	
	@RequestMapping(value = "/detail3.do", method = RequestMethod.GET)
	public String QnA(Locale locale, Model model) {
		logger.info("QnA page", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "detail3";
	}

	
	@RequestMapping(value = "/drop.do", method = RequestMethod.GET)
	public String drop(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "dropbar";
	}
	
	/*@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		//logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "loginhome";
	}*/
	
	@RequestMapping(value = "/productdetail.do", method = RequestMethod.GET)
	public String productdetail(Locale locale, Model model) {
		//logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "productdetail";
	}
	
	@RequestMapping("test.do")
	public String fbtest() {
		return "facebooklogin";
		
	}
	
	@RequestMapping("boot.do")
	public String boot() {
		return "boottest";		
	}
	
	@RequestMapping("kakao.do")
	public String kakao() {
		return "kakao";
	}
	
	@RequestMapping("naver.do")
	public String naver() {
		return "naverlogin";
	}
	
	@RequestMapping("naver_ok.do")
	public String naver_ok() {
		return "naver_ok";
	}
	
	@RequestMapping("signup.do")
	public String signUp() {
		return "signUp";
	}
	
	
}
