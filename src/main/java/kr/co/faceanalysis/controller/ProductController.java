package kr.co.faceanalysis.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.faceanalysis.persistence.Product_impl;
import kr.co.faceanalysis.vo.Pagination;
import kr.co.faceanalysis.vo.ProductVO;

@Controller
public class ProductController {
	@Autowired Product_impl proDao;
	//@Autowired ProductMapper productMapper;

	public void setDao(Product_impl proDao) {
		this.proDao = proDao;
	}


	// 화장품 리스트
	@RequestMapping(value="AromaList.do", method=RequestMethod.GET)
	public String AromaList(Model model, Pagination pagination) {
		List<ProductVO> products = proDao.findByAroma(pagination);
		model.addAttribute("products", products);
		return "list";
	}

	@RequestMapping(value="AprilList.do")
	public String AprilList(Model model, Pagination pagination) {
		List<ProductVO> products = proDao.findByApril(pagination);
		model.addAttribute("products", products);
		return "list";
	}

	@RequestMapping(value="BbiaList.do")
	public String BbiaList(Model model, Pagination pagination) {
		List<ProductVO> products = proDao.findByBbia(pagination);
		model.addAttribute("products", products);
		return "list";
	}


	@RequestMapping(value="MiliList.do")
	public String MiliList(Model model, Pagination pagination) {
		List<ProductVO> products = proDao.findByMili(pagination);
		model.addAttribute("products", products);
		return "list";
	}

	// 카테고리별 리스트
	@RequestMapping(value="baseList.do")
	public String BaseList(Model model, Pagination pagination) {
		List<ProductVO> products = proDao.findByBase(pagination);
		model.addAttribute("products", products);
		return "list";
	}

	@RequestMapping(value="makeList.do")
	public String makeupList(Model model, Pagination pagination) {
		List<ProductVO> products = proDao.findByMakeup(pagination);
		model.addAttribute("products", products);
		return "list";
	}

	@RequestMapping(value="hairList.do")
	public String hairbodyList(Model model, Pagination pagination) {
		List<ProductVO> products = proDao.findByHairbody(pagination);
		model.addAttribute("products", products);
		return "list";
	}

	@RequestMapping(value="skinList.do")
	public String skinList(Model model, Pagination pagination) {
		List<ProductVO> products = proDao.findBySkincare(pagination);
		model.addAttribute("products", products);
		return "list";
	}


	// 화장품 상세정보
	@RequestMapping(value="detail.do", method=RequestMethod.GET)
	public String AromaDetail(Model model, @RequestParam("p_no") int p_no) {
		ProductVO product = proDao.findById(p_no);
		model.addAttribute("product", product);
		return "listDetail";
	}
}
