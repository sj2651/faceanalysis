package kr.co.faceanalysis.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.faceanalysis.persistence.Member_imple;
import kr.co.faceanalysis.vo.MemberVO;

@Controller

public class MemberController {
	
	@Autowired
	Member_imple dao;
	
	public void setDao(Member_imple dao) {
		this.dao = dao;
	}
	
	@RequestMapping(value="/mlist.do")
	public String mlist(Model model) {
		List<MemberVO> list = dao.member_selectAll();
		//System.out.println(list);
		
		model.addAttribute("m_list", list);
		
		return "m_listpage";
		
	}
	
	

}
