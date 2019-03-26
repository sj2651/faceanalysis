package kr.co.faceanalysis.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.faceanalysis.persistence.Ariticle_imple;
import kr.co.faceanalysis.persistence.ArticleDAO;
import kr.co.faceanalysis.persistence.CommentDAO;
import kr.co.faceanalysis.persistence.RequestBoardDAO;
import kr.co.faceanalysis.vo.ArticleVO;
import kr.co.faceanalysis.vo.CommentVO;
import kr.co.faceanalysis.vo.RequestBoardVO;

@Controller
public class RequestController {
	
	@Autowired
	ArticleDAO a_dao;
	
	@Autowired
	RequestBoardDAO RBDao;
	
	@Autowired
	CommentDAO cDao;
	
	
	public void setA_dao(ArticleDAO a_dao) {
		this.a_dao = a_dao;
	}
	
	public void setRBDao(RequestBoardDAO rBDao) {
		RBDao = rBDao;
	}

	

	public void setcDao(CommentDAO cDao) {
		this.cDao = cDao;
	}

	//요청게시판 A_CATE(게시글 카테고리)는 임시로 5로 설정
	@RequestMapping("requestBoard.do")
	public String requestBoard(HttpServletRequest hsr , Model model) {
		
		int allPageNo = RBDao.countRowOfRequestBoard() / 10;
		
		//model.addAttribute("countRow", countRow);
		//int allPageNo = countRow/10; //총 페이지 수
		int pageNo = 0; // 현재 페이지 번호 0으로 초기화
		
		List<RequestBoardVO> list= null;
		
		if(hsr.getParameter("pageNo") != null) {
			pageNo = Integer.parseInt( hsr.getParameter("pageNo") ); //현재 페이지번호를 파라미터로 받은경우 변수(pageNo)에 저장
			list = RBDao.selectAll( (pageNo-1)*10 ); //리스트로 DB정보 받아오기
		}else {
			list = RBDao.selectAll(0);// 현재 페이지 번호 파라미터가 null이면 1페이지를 부른다.
		}
		
		//게시판 아래에 표시될 페이지 번호
		ArrayList<Integer> pageList = new ArrayList<Integer>();
		if (pageNo < 3) {
			for(int i=0 ; i <=4 ; i++) {
				if(i <= allPageNo) {
					pageList.add(i+1);
				}
			}
		}else if(pageNo > allPageNo-2) {
			for(int i=allPageNo-5 ; i <= allPageNo ; i++) {
				pageList.add(i);	
			}
		}else {
			for(int i=pageNo-2 ; i <= pageNo+2 ; i++) {
				pageList.add(i);
			}
		}
		System.out.println(pageList);
		//게시물들
		model.addAttribute("requestList", list);
		//페이지이동 번호용
		model.addAttribute("pageList", pageList);
		
		return "requestBoard";
	}


	//게시글 추가
	@RequestMapping("/request_add.do")
	public String RequestAdd() {
		return "request_add";
	}
	//추가 OK	
	@RequestMapping("/requestAddOK.do")
	public String RequestAddOK(HttpServletRequest hsr) {
		// 임시로 회원번호를 9999으로 설정
		int mno = 9999;

		String title = hsr.getParameter("title");
		String content = hsr.getParameter("content");
		
		//a_no에 시퀀스 필요
		ArticleVO vo = new ArticleVO(2,mno,5,title,content,"");
		
		System.out.println("vo : "+vo);
				
		// a_no, m_no, a_cate, a_title,a_content,a_reg		
		a_dao.article_insertOne(vo);

		return "requestAddOK";

	}
	
	//각각 글 상세페이지
	@RequestMapping("/request_detail.do")
	public String RequestDetail(HttpServletRequest hsr, Model model) {
		int a_no = Integer.parseInt( hsr.getParameter("articleNo") );
		RequestBoardVO vo = RBDao.selectOne(a_no);
		List<CommentVO> commentList = cDao.selectAllFromA_No(a_no);
		
		//본문
		model.addAttribute("RBVo", vo);
		//댓글
		model.addAttribute("commentList", commentList);
		
		return "request_detail";
	}
	
	//댓글작성
	@RequestMapping("/CommentOK.do")
	public String RequestCommentOK(HttpServletRequest hsr) {
		System.out.println("comment");
		int aNo;
		if (hsr.getParameter("articleNo") != null) {
			aNo = Integer.parseInt( hsr.getParameter("articleNo") );
			String cContent = hsr.getParameter("commentContent");
			
			if(cContent != null) {
				CommentVO vo = new CommentVO(0, aNo, 0, cContent,"");
				cDao.insertOne(vo);
			}
		}
		
		return "CommentOK";
	}
	
	//대댓글
	@RequestMapping("/reCommentOK.do")
	public String RequestRecommentOK(HttpServletRequest hsr) {
		System.out.println("Recomment");
		int rcno = Integer.parseInt( hsr.getParameter("commentNo") );
		int aNo;
		if (hsr.getParameter("articleNo") != null) {
			aNo = Integer.parseInt( hsr.getParameter("articleNo") );
			String cContent = hsr.getParameter("reCommentContent");
			
			if(cContent != null) {
				CommentVO vo = new CommentVO(0, aNo, rcno, "ㄴ"+cContent,"");
				cDao.insertOneRecomment(vo);
			}
		}
		
		return "CommentOK";
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
		
		return "requestModifyOK";
	}

}
