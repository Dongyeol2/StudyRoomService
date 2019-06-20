package spring.biz.subcategory.service;

import java.util.List;

import spring.biz.subcategory.vo.SubCategoryVO;

public interface SubCategoryService {
	List<SubCategoryVO> getList();
	
	SubCategoryVO getSubCategory(int categorycode);

	List<SubCategoryVO> getSubCategoryList(String categoryname);

}
