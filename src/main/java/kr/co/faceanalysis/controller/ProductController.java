package kr.co.faceanalysis.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mysql.fabric.xmlrpc.base.Array;

import kr.co.faceanalysis.persistence.Ingredient_imple;
import kr.co.faceanalysis.persistence.Product_impl;
import kr.co.faceanalysis.vo.IngredientVO;
import kr.co.faceanalysis.vo.Pagination;
import kr.co.faceanalysis.vo.ProductVO;

@Controller
public class ProductController {
	@Autowired Product_impl proDao;
	//@Autowired ProductMapper productMapper;

	@Autowired Ingredient_imple ingreDao;
	


	public void setDao(Product_impl proDao) {
		this.proDao = proDao;
	}


	// 화장품 리스트
	@RequestMapping(value="AromaList.do")
	public String AromaList(Model model, Pagination pagination) {
		List<ProductVO> products = proDao.findByAroma(pagination);
		model.addAttribute("products", products);
		model.addAttribute("orderBy", proDao.orderBy);
        model.addAttribute("searchBy", proDao.searchByCate);
        model.addAttribute("url", "AromaList.do");
		return "list";
	}

	@RequestMapping(value="AprilList.do")
	public String AprilList(Model model, Pagination pagination) {
		List<ProductVO> products = proDao.findByApril(pagination);
		model.addAttribute("products", products);
		model.addAttribute("orderBy", proDao.orderBy);
        model.addAttribute("searchBy", proDao.searchByCate);
        model.addAttribute("url", "AprilList.do");
		return "list";
	}

	@RequestMapping(value="BbiaList.do")
	public String BbiaList(Model model, Pagination pagination) {
		List<ProductVO> products = proDao.findByBbia(pagination);
		model.addAttribute("products", products);
		model.addAttribute("orderBy", proDao.orderBy);
        model.addAttribute("searchBy", proDao.searchByCate);
        model.addAttribute("url", "BbiaList.do");
		return "list";
	}


	@RequestMapping(value="MiliList.do")
	public String MiliList(Model model, Pagination pagination) {
		List<ProductVO> products = proDao.findByMili(pagination);
		model.addAttribute("products", products);
		model.addAttribute("orderBy", proDao.orderBy);
        model.addAttribute("searchBy", proDao.searchByCate);
        model.addAttribute("url", "MiliList.do");
		return "list";
	}

	// 카테고리별 리스트
	@RequestMapping(value="baseList.do")
	public String BaseList(Model model, Pagination pagination) {
		List<ProductVO> products = proDao.findByBase(pagination);
		model.addAttribute("products", products);
		model.addAttribute("orderBy", proDao.orderBy);
        model.addAttribute("searchBy", proDao.searchByBrand);
        model.addAttribute("url", "baseList.do");
		return "list";
	}

	@RequestMapping(value="makeList.do")
	public String makeupList(Model model, Pagination pagination) {
		List<ProductVO> products = proDao.findByMakeup(pagination);
		model.addAttribute("products", products);
		model.addAttribute("orderBy", proDao.orderBy);
        model.addAttribute("searchBy", proDao.searchByBrand);
        model.addAttribute("url", "makeList.do");
		return "list";
	}

	@RequestMapping(value="hairList.do")
	public String hairbodyList(Model model, Pagination pagination) {
		List<ProductVO> products = proDao.findByHairbody(pagination);
		model.addAttribute("products", products);
		model.addAttribute("orderBy", proDao.orderBy);
        model.addAttribute("searchBy", proDao.searchByBrand);
        model.addAttribute("url", "hairList.do");
		return "list";
	}

	@RequestMapping(value="skinList.do")
	public String skinList(Model model, Pagination pagination) {
		List<ProductVO> products = proDao.findBySkincare(pagination);
		model.addAttribute("products", products);
		model.addAttribute("orderBy", proDao.orderBy);
        model.addAttribute("searchBy", proDao.searchByBrand);
        model.addAttribute("url", "skinList.do");
		return "list";
	}
	@RequestMapping(value="productComment.do")
	public String productComment(Model model, Pagination pagination) {
		List<ProductVO> products = proDao.findBySkincare(pagination);
		model.addAttribute("products", products);
		model.addAttribute("orderBy", proDao.orderBy);
        model.addAttribute("searchBy", proDao.searchByBrand);
        model.addAttribute("url", "skinList.do");
		return "productCommentOk";
	}
	
	
	
	// 화장품 상세정보
	@RequestMapping(value="detail.do", method=RequestMethod.GET)
	public String AromaDetail(Model model, @RequestParam("p_no") int p_no) {
		ProductVO product = proDao.findById(p_no);
		List<IngredientVO> ingredient = ingreDao.ingredient_selectAll();
		ArrayList<IngredientVO> outputIngredient = new ArrayList<IngredientVO>() ;
	
		String str= product.getP_ingredient();
		int index [] = new int[9];
		
		String[] strList = str.split(",");
		System.out.println(str );
		for(int i = 0;i<strList.length;i++) {
			int j = 0;
			
			while(j<ingredient.size()) {
				
//				System.out.println("성분:"+strList[i]+" 비교:"+ingredient.get(j).getI_kname());
				if(strList[i].indexOf(ingredient.get(j).getI_kname().trim())!=-1) {
					boolean confirm = true;
					for(IngredientVO vo : outputIngredient) {
						if(vo.getI_kname().equals(ingredient.get(j).getI_kname())){
							confirm = false;
							break;
							}
					}
					
					
					
//					System.out.println("중복되는 값"+ingredient.get(j).getI_kname().trim());
					System.out.println(ingredient.get(j).getI_kname()+"\t"+ingredient.get(j).getI_grade());
					String indexSample = ingredient.get(j).getI_grade().substring(0, 1).trim();
					if(confirm == true) {
						outputIngredient.add(ingredient.get(j));
						if(!indexSample.equals("-"))index[Integer.parseInt(indexSample)-1]++;
					}
				
					break;
				}
//				if(j==ingredient.size()-1) {
//					System.out.println(strList[i]+"\t 미분류");
//					IngredientVO vo = new IngredientVO(strList[i]);
//					outputIngredient.add(vo);
//					index[9]++;
//				}
				j++;
			}
		}
		

		
		
		//for(int i :index)System.out.println(i);
		
		model.addAttribute("outputIngredient", outputIngredient);
		model.addAttribute("product", product);
		model.addAttribute("index", index);
		return "listDetail";
	}
}
