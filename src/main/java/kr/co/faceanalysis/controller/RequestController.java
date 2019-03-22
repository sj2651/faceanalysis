package kr.co.faceanalysis.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.faceanalysis.persistence.Ariticle_imple;
import kr.co.faceanalysis.persistence.ArticleDAO;
import kr.co.faceanalysis.persistence.RequestBoardDAO;
import kr.co.faceanalysis.vo.ArticleVO;
import kr.co.faceanalysis.vo.RequestBoardVO;

@Controller
public class RequestController {
	
	@Autowired
	ArticleDAO a_dao;
	
	@Autowired
	RequestBoardDAO RBDao;
	
	
	public void setA_dao(ArticleDAO a_dao) {
		this.a_dao = a_dao;
	}
	
	public void setRBDao(RequestBoardDAO rBDao) {
		RBDao = rBDao;
	}


	//요청게시판 A_CATE(게시글 카테고리)는 임시로 5로 설정
	@RequestMapping("requestBoard.do")
	public String requestBoard(HttpServletRequest hsr , Model model) {
		
		int pageNo = 0;
		
		List<RequestBoardVO> list= null;
		
		if(hsr.getParameter("pageNo") != null) {
			pageNo = Integer.parseInt( hsr.getParameter("pageNo") );
			list = RBDao.selectAll( (pageNo-1)*10 );			
		}else {
			list = RBDao.selectAll(0);
		}
		
		model.addAttribute("requestList", list);
		
		return "requestBoard";
	}


	//게시글 추가
	@RequestMapping("/request_add.do")
	public String RequestAdd() {
		return "request_add";
	}
		
	@RequestMapping("/requestAddOK.do")
	public String RequestAddOK(HttpServletRequest hsr) {
		// 임시로 회원번호를 1으로 설정
		int mno = 1;

		String title = hsr.getParameter("title");
		String content = hsr.getParameter("content");
		
		//a_no에 시퀀스 필요
		ArticleVO vo = new ArticleVO(2,mno,5,title,content,"");
		
		System.out.println("vo : "+vo);
				
		// a_no, m_no, a_cate, a_title,a_content,a_reg		
		a_dao.article_insertOne(vo);

		return "requestAddOK";

	}
	

	@RequestMapping("/request_detail.do")
	public String RequestDetail(HttpServletRequest hsr, Model model) {
		int a_no = Integer.parseInt( hsr.getParameter("articleNo") );
		RequestBoardVO vo = RBDao.selectOne(a_no);
		
		model.addAttribute("RBVo", vo);
		
		return "request_detail";
	}
	//글삭제
	@RequestMapping("/requestDeleteOK.do")
	public String RequestDeleteOK(HttpServletRequest hsr) {
		int ano = Integer.parseInt( hsr.getParameter("articleNo") );
		a_dao.article_deleteOne(ano);
		
		return "requestDeleteOK"; 
	}
	//글수정
	@RequestMapping("/requestModify.do")
	public String RequestModify(HttpServletRequest hsr, Model model){
		int ano = Integer.parseInt( hsr.getParameter("articleNo") );
		RequestBoardVO vo = RBDao.selectOne(ano);
		model.addAttribute("requestBoardVo", vo);
		return "requestModify";
	}
	//수정적용
	@RequestMapping("/requestModifyOK.do")
	public String Request(HttpServletRequest hsr){
		String title = hsr.getParameter("title");
		String content = hsr.getParameter("content");
		int ano = Integer.parseInt( hsr.getParameter("articleNo") );
		
		ArticleVO vo = new ArticleVO(ano,0,5,title,content,"");
		
		a_dao.article_UpdateOne(vo);
		
		return "requestModify";
	}

}
