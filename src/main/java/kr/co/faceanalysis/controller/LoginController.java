package kr.co.faceanalysis.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import kr.co.faceanalysis.persistence.Member_imple;
import kr.co.faceanalysis.vo.MemberVO;
import sun.nio.cs.HistoricallyNamedCharset;

@SessionAttributes("m_id")
@Controller
public class LoginController {
	@Autowired
	Member_imple dao;
	
	public void setDao(Member_imple dao) {
		this.dao = dao;
	}
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	
	@RequestMapping(value="/login.do")
	public String login() {
		return "loginhome";
	}
	
	@RequestMapping("signupOk.do")
	public String signupOk(@ModelAttribute()MemberVO mvo,Model model) {
		dao.insertMember(mvo);
		/*System.out.println(mvo.getM_name());
		System.out.println(mvo.getM_id());
		System.out.println(mvo.getM_pwd());
		System.out.println(mvo.getM_email());
		System.out.println(mvo.getM_tel());
		System.out.println(mvo.getM_addr1());
		System.out.println(mvo.getM_addr2());
		System.out.println(mvo.getM_type());
		System.out.println(mvo.getM_gender());*/
		
		return "main";
	}
	
	 
	@RequestMapping(value="/signin.do")
	public String signin(@ModelAttribute()MemberVO mvo, Model model) {
		if(dao.member_check(mvo) == true) {
			
			model.addAttribute("m_id", mvo.getM_id());
			
			return "historyback";
			
			
		}else {
			return "loginhome";
		}
	}
	
	
	
	
	/*@RequestMapping(value="/member_check.do")
	public String mCheck(HttpServletRequest request, HttpServletResponse response) {
		
		String m_id = request.getParameter("m_id");
		String m_pwd = request.getParameter("m_pwd");
		
		System.out.println(m_id);		
		System.out.println(m_pwd);
		
		int check = dao.member_check(MemberVO mvo);
		
		System.out.println(check);
		
		return "m_listpage";
		//return "m_check";
		
	}*/
	
	@RequestMapping(value="/idDuple.do", method=RequestMethod.GET)
	public void idDuplicationCheck(@RequestParam("m_id") String m_id, HttpServletResponse resp) {
		
		//System.out.println("로그인 컨트롤 아이디 : " + m_id);
		
		if(dao.idDuple(m_id)) {
			boolean result = dao.idDuple(m_id); 
			try {
				resp.getWriter().print(result);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			//System.out.println("로그인 컨트롤 결과 값 :" + result);
			
		}else {
			//System.out.println("로그인 컨트롤 결과 값 : false");
		}
		
		
	}
	
	
	@RequestMapping(value="/ajaxMember_check.do", method=RequestMethod.GET)
	public void ajaxMember_check(@RequestParam("m_id") String m_id, @RequestParam("m_pwd") String m_pwd, HttpServletResponse resp) {
		MemberVO mvo = new MemberVO();
		mvo.setM_id(m_id);
		mvo.setM_pwd(m_pwd);
		if(dao.member_check(mvo)) {
			boolean result = dao.member_check(mvo);
			try {
				resp.getWriter().print(result);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	@RequestMapping(value="/logout.do", method=RequestMethod.GET)
	public void logout(HttpServletResponse resp,SessionStatus sessionStatus, Model model) {
		
		
		sessionStatus.setComplete(); 
			
		
		try {
			resp.getWriter().print(true);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
}
