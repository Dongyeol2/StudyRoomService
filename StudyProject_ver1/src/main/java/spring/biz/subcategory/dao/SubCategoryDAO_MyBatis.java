package spring.biz.subcategory.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import oracle.net.aso.s;
import spring.biz.studyroom.vo.StudyRoomVO;
import spring.biz.subcategory.vo.SubCategoryVO;

@Repository("subcategorymybatis")

public class SubCategoryDAO_MyBatis implements SubCategoryDAO{
	@Inject
	SqlSession sqlSession=null;

	@Override
	public List<SubCategoryVO> getList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("subcategory.getsubcategorylist");
	}
	
	@Override
	public SubCategoryVO getSubCategory(int categorycode) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("subcategory.getsubcategory", categorycode);
	}

	@Override
	public List<SubCategoryVO> getSubCategoryList(String categoryname) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("subcategory.getsubcategoryl", categoryname);
	}

	@Override
	public SubCategoryVO getSubCategory2(int subjectcode) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("subcategory.getsubcategory3", subjectcode);
	}


}
