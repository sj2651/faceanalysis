package kr.co.faceanalysis.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.faceanalysis.dto.MemberDTO;
import kr.co.faceanalysis.persistence.DAO;

@Controller
public class MemberController {
	
	@Inject
	DAO dao;
	
	public void setDao(DAO dao) {
		this.dao = dao;
	}
	
	@RequestMapping(value="/mlist.do")
	public String mlist(Model model) {
		List<MemberDTO> list = dao.member_selectAll();
		System.out.println(list);
		model.addAttribute("m_list", list);
		
		return "m_listpage";
	}

}
