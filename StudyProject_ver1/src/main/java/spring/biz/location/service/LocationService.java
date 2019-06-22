package spring.biz.location.service;

import java.util.List;

import spring.biz.location.vo.LocationVO;

public interface LocationService {
	List<String> getLoc1List();
	List<LocationVO> getLoc2List(String loc1);
	LocationVO getLocation(long locationCode);
}
