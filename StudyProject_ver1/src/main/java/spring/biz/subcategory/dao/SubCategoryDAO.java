package spring.biz.subcategory.dao;

import java.util.List;

import spring.biz.subcategory.vo.SubCategoryVO;

public interface SubCategoryDAO {
	   
	List<SubCategoryVO> getList();
	SubCategoryVO getSubCategory(int categorycode);
	List<SubCategoryVO> getSubCategoryList(String categoryname);
}
