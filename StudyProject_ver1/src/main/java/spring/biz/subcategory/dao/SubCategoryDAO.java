package spring.biz.subcategory.dao;

import java.util.List;

import spring.biz.subcategory.vo.SubCategoryVO;

public interface SubCategoryDAO {
	   
	List<SubCategoryVO> getList();
	SubCategoryVO getSubCategory(int categorycode);
	SubCategoryVO getSubCategory2(int subcategorycode);
	List<SubCategoryVO> getSubCategoryList(int categorycode);
}
