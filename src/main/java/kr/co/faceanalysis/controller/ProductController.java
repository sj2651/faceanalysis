package kr.co.faceanalysis.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.faceanalysis.persistence.Product_impl;
import kr.co.faceanalysis.vo.ProductVO;

@Controller
public class ProductController {
	@Autowired Product_impl proDao;
	//@Autowired ProductMapper productMapper;
	
	public void setDao(Product_impl proDao) {
		this.proDao = proDao;
	} 
	
	@RequestMapping(value="AromaList.do", method=RequestMethod.GET)
	public String AromaList(Model model) {
		List<ProductVO> products = proDao.findByBrand("aromatica");
		model.addAttribute("products", products);
		return "list";
	}

	@RequestMapping(value="AprilList.do")
	public String AprilList(Model model, ProductVO productVO) {
		List<ProductVO> products = proDao.findByBrand("aprilskin");
		model.addAttribute("products", products);
		return "list";
	}
	
	@RequestMapping(value="BbiaList.do")
	public String BbiaList(Model model, ProductVO productVO) {
		List<ProductVO> products = proDao.findByBrand("bbia");
		model.addAttribute("products", products);
		return "list";
	}
	
	@RequestMapping(value="MiliList.do")
	public String MiliList(Model model, ProductVO productVO) {
		List<ProductVO> products = proDao.findByBrand("milimage");
		model.addAttribute("products", products);
		return "list";
	}
}
