package spring.biz.location.dao;

import java.util.List;

import spring.biz.location.vo.LocationVO;

public interface LocationDAO {
	List<String> getLoc1List();
	
	List<LocationVO> getLoc2List(String loc1);
	LocationVO getLocation(long locationCode);
	
}
