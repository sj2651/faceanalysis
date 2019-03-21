package kr.co.faceanalysis.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.faceanalysis.persistence.Member_imple;

public class LoginController {
	@Autowired
	Member_imple dao;
	
	public void setDao(Member_imple dao) {
		this.dao = dao;
	}
	
	@RequestMapping(value="/login.do")
	public String login() {
		return "loginhome";
	}
	
	
	@RequestMapping(value="/member_check.do")
	public String mCheck(HttpServletRequest request, HttpServletResponse response) {
		
		String m_id = request.getParameter("m_id");
		String m_pwd = request.getParameter("m_pwd");
		
		System.out.println(m_id);		
		System.out.println(m_pwd);
		
		int check = dao.member_check(m_id, m_pwd);
		
		System.out.println(check);
		
		return "m_listpage";
		//return "m_check";
		
	}
}
