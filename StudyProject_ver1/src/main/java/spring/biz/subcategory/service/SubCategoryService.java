package spring.biz.subcategory.service;

import java.util.List;

import spring.biz.subcategory.vo.SubCategoryVO;

public interface SubCategoryService {
	List<SubCategoryVO> getList();
	
	SubCategoryVO getSubCategory(int categorycode);
	SubCategoryVO getSubCategory2(int subjectcode);

	List<SubCategoryVO> getSubCategoryList(String categoryname);

}
