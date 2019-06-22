package web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import spring.biz.category.service.CategoryService;
import spring.biz.category.vo.CategoryVO;
import spring.biz.location.service.LocationService;
import spring.biz.location.vo.LocationVO;
import spring.biz.subcategory.service.SubCategoryService;
import spring.biz.subcategory.vo.SubCategoryVO;

@Controller
public class ComnController {
	
	@Autowired
	CategoryService categoryservice;
	
	@Autowired
	SubCategoryService subcategoryservice;
	
	@Autowired
	LocationService locationservice;
	
	
	//set category select box
	@RequestMapping(value="/getcategorylist.do")
	@ResponseBody  //응답 데이터로 넘어감
	public List<CategoryVO> getCategoryList() throws Exception{
		List<CategoryVO> categorylist  = categoryservice.getCategoryList();
		return categorylist;
		
	}
	
	//get subcategory select box
	@RequestMapping(value="/getsubcategorylist.do")
	@ResponseBody  //응답 데이터로 넘어감
	public List<SubCategoryVO> getSubCategoryList(@RequestParam("categorycode") int categorycode) throws Exception{
		List<SubCategoryVO> subcategorylist  = subcategoryservice.getSubCategoryList(categorycode);
		return subcategorylist;
		
	}

	
	//set loc1 select box
	@RequestMapping(value="/getloc1list.do")
	@ResponseBody  //응답 데이터로 넘어감
	public List<String> getLoc1List() throws Exception{
		List<String> loc1list  = locationservice.getLoc1List();
		return loc1list;
		
	}
	
	//get loc2 select box
	@RequestMapping(value="/getloc2list.do")
	@ResponseBody  //응답 데이터로 넘어감
	public List<LocationVO> getLoc2List(@RequestParam("loc1name") String loc1name) throws Exception{
		List<LocationVO> loc2list  = locationservice.getLoc2List(loc1name);
		return loc2list;
		
	}

}
