package kr.co.faceanalysis.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.faceanalysis.persistence.Product_impl;
import kr.co.faceanalysis.vo.Pagination;
import kr.co.faceanalysis.vo.ProductVO;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired Product_impl dao;

	public void setDao(Product_impl dao) {
		this.dao = dao;
	}

	@RequestMapping(value="ProductAllList.do")
	public String ProductAllList(Model model, Pagination pagination) {
		List<ProductVO> products = dao.findAllProduct(pagination);
		model.addAttribute("products", products);
		model.addAttribute("orderBy", dao.orderBy);
        model.addAttribute("searchBy", dao.searchBy);
		return "admin/allList";
	}

	// 화장품 정보 생성
	@RequestMapping(value="ProductCreate.do", method=RequestMethod.GET)
	public String ProductCreate(Model model) {
		model.addAttribute("product", new ProductVO());
		return "admin/edit";
	}

	@RequestMapping(value="ProductCreate.do", method=RequestMethod.POST)
	public String ProductCreate(Model model, @ModelAttribute("ProductVO") @Valid ProductVO productVO, BindingResult bindingResult, RedirectAttributes rttr) {
		dao.insert(productVO);
		return "redirect:ProductAllList.do";
	}

	// 화장품 정보 수정
	@RequestMapping(value="ProductEdit.do", method=RequestMethod.GET)
	public String ProductEdit(Model model, @RequestParam("p_no") int p_no) {
		ProductVO product = dao.findById(p_no);
		model.addAttribute("product", product);
		return "admin/edit";
	}

	@RequestMapping(value="ProductEdit.do", method=RequestMethod.POST)
	public String ProductEdit(Model model, @ModelAttribute("ProductVO") @Valid ProductVO productVO, BindingResult bindingResult, RedirectAttributes rttr) {
		dao.update(productVO);
		return "redirect:ProductAllList.do";
	}

	// 화장품 삭제
	@RequestMapping(value="ProductDelete.do")
	public String ProductDelete(Model model, @RequestParam("p_no") int p_no) {
		dao.delete(p_no);
		return "redirect:ProductAllList.do";
	}


}
