package spring.biz.location.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import spring.biz.location.vo.LocationVO;

@Repository("locationmybatis")
public class LocationDAO_MyBatis implements LocationDAO{

	@Inject
	SqlSession sqlSession=null;

	@Override
	public List<String> getLoc1List() {
		return sqlSession.selectList("location.getloc1list");
	}

	@Override
	public List<LocationVO> getLoc2List(String loc1) {
		return sqlSession.selectList("location.getloc2list", loc1);
	}

}
