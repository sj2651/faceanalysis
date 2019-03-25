package kr.co.faceanalysis.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.faceanalysis.persistence.Ingredient_imple;
import kr.co.faceanalysis.persistence.Product_impl;
import kr.co.faceanalysis.vo.IngredientVO;
import kr.co.faceanalysis.vo.ProductVO;

@Controller
public class ProductController {
	@Autowired Product_impl proDao;
	//@Autowired ProductMapper productMapper;
	@Autowired Ingredient_imple ingreDao;
	
	public void setDao(Product_impl proDao) {
		this.proDao = proDao;
	} 
	
	@RequestMapping(value="AromaList.do", method=RequestMethod.GET)
	public String AromaList(Model model) {
		List<ProductVO> products = proDao.findByBrand("aromatica");
		model.addAttribute("products", products);
		return "list";
	}
	
	@RequestMapping(value="AromaDetail.do", method=RequestMethod.GET)
	public String AromaDetail(Model model, @RequestParam("p_no") int p_no) {
		ProductVO product = proDao.findById(p_no);
		List<IngredientVO> ingredient = ingreDao.ingredient_selectAll();
		ArrayList<IngredientVO> outputIngredient = new ArrayList<IngredientVO>() ;
		String str= product.getP_ingredient();
		int index [] = new int[9];
		
		String[] strList = str.split(",");
		for(int i = 0;i<strList.length;i++) {
			int j = 0;
			while(j<ingredient.size()) {
				
				System.out.println("성분:"+strList[i]+" 비교:"+ingredient.get(j).getI_kname());
				if(strList[i].indexOf(ingredient.get(j).getI_kname().trim())!=-1) {
					outputIngredient.add(ingredient.get(j));
					System.out.println("중복되는 값"+ingredient.get(j).getI_kname().trim());
					break;
				}
				if(j==ingredient.size()-1) {
					IngredientVO vo = new IngredientVO(strList[i]);
					outputIngredient.add(vo);
				}
				j++;
			}
		}
		

		for(int z= 0;z<outputIngredient.size();z++)System.out.println(outputIngredient.get(z).getI_kname()+outputIngredient.get(z).getI_grade()+outputIngredient.get(z).getI_content());

		
		
		
		model.addAttribute("outputIngredient", outputIngredient);
		model.addAttribute("product", product);
		return "listDetail";
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
	
	@RequestMapping(value="baseList.do")
	public String BaseList(Model model, ProductVO productVO) {
		List<ProductVO> products = proDao.findByCate("base");
		model.addAttribute("products", products);
		return "list";
	}
	
	@RequestMapping(value="makeList.do")
	public String makeupList(Model model, ProductVO productVO) {
		List<ProductVO> products = proDao.findByCate("makeup");
		model.addAttribute("products", products);
		return "list";
	}
	
	@RequestMapping(value="hairList.do")
	public String hairbodyList(Model model, ProductVO productVO) {
		List<ProductVO> products = proDao.findByCate("hairbody");
		model.addAttribute("products", products);
		return "list";
	}
	
	@RequestMapping(value="skinList.do")
	public String skinList(Model model, ProductVO productVO) {
		List<ProductVO> products = proDao.findByCate("skin");
		model.addAttribute("products", products);
		return "list";
	}
	
	
	
	
}
