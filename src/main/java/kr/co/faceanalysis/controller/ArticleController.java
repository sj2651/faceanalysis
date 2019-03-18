package kr.co.faceanalysis.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import kr.co.faceanalysis.persistence.Ariticle_imple;

@Controller
public class ArticleController {
	
	@Autowired
	Ariticle_imple dao;
	
	public void setDao(Ariticle_imple dao) {
		this.dao = dao;
	}
	
	/*
	@RequestMapping(value="/mlist.do")
	public String mlist(Model model) {
		List<MemberDTO> list = dao.member_selectAll();
		System.out.println(list);
		model.addAttribute("m_list", list);
		
		return "m_listpage";
	}
	*/

	

}
