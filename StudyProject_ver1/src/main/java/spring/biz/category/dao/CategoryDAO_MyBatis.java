package spring.biz.category.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import spring.biz.category.vo.CategoryVO;

@Repository("categorymybatis")
public class CategoryDAO_MyBatis implements CategoryDAO{

	@Inject
	SqlSession sqlSession=null;

	@Override
	public List<CategoryVO> getCategoryList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("category.categorylist");
	}

}
