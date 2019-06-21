package web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import spring.biz.studyroom.service.StudyRoomService;
import spring.biz.studyroom.vo.StudyRoomVO;
import spring.biz.subcategory.service.SubCategoryService;
import spring.biz.subcategory.vo.SubCategoryVO;

@Controller
public class StudyController {
	

	@Autowired
	StudyRoomService service;

	@Autowired
	SubCategoryService cservice;
	
	@RequestMapping(value = "/write.do",method = RequestMethod.GET)
	public String addStudyRoom() {
		return "studyroom/studyroom_write";
	}
	
	@RequestMapping(value = "/write.do",method = RequestMethod.POST)
	public String addStudyRoomProc(@ModelAttribute("studyroom") StudyRoomVO studyroom , 
			                  HttpServletRequest request,
			                  BindingResult errors) {
		
		System.out.println(studyroom);
		
		int row = 0 ;
		row = service.addStudyRoom(studyroom);
		return "studyroom/studyroom_write";
		
	}
	
	/*
	 * @RequestMapping(value="/url.do") public ModelAndView test(String
	 * categoryname) throws Exception{ ModelAndView mav = new ModelAndView();
	 * List<SubCategoryVO> subvo = cservice.getSubCategoryList(categoryname);
	 * mav.addObject("subcategory",cservice.getSubCategoryList(categoryname));
	 * mav.setViewName("/studyroom/write"); return mav;
	 * 
	 * }
	 */
	
	/*
	 * @RequestMapping(value="/url.do")
	 * 
	 * @ResponseBody //응답 데이터로 넘어감 public List<SubCategoryVO>
	 * test(@RequestParam("categoryname") String categoryname) throws Exception{
	 * ModelAndView mav = new ModelAndView(); System.out.println(categoryname);
	 * List<SubCategoryVO> subvo = cservice.getSubCategoryList(categoryname);
	 * //mav.addObject("subcategory",cservice.getSubCategoryList(categoryname));
	 * //mav.setViewName("/studyroom/write"); System.out.println(subvo); return
	 * subvo;
	 * 
	 * }
	 */
	
	@RequestMapping(value="/url.do")
	@ResponseBody  //응답 데이터로 넘어감
	public List<SubCategoryVO> test(@RequestParam("categoryname") String categoryname) throws Exception{
		ModelAndView mav = new ModelAndView();		
		System.out.println(categoryname);
		List<SubCategoryVO> subvo  = cservice.getSubCategoryList(categoryname);
		//mav.addObject("subcategory",cservice.getSubCategoryList(categoryname));
		//mav.setViewName("/studyroom/write");
		System.out.println(subvo);
		
		
		return subvo;
		
	}

}
