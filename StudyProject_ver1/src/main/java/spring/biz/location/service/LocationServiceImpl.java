package spring.biz.location.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Service;

import spring.biz.location.dao.LocationDAO;
import spring.biz.location.vo.LocationVO;

@Service("locationservice")
public class LocationServiceImpl implements LocationService{

	@Resource(name = "locationmybatis")
	LocationDAO dao;
	
	@Autowired
	ApplicationContext context;


	@Override
	public List<String> getLoc1List() {
		return dao.getLoc1List();
	}

	@Override
	public List<LocationVO> getLoc2List(String loc1) {
		return dao.getLoc2List(loc1);
	}

	@Override
	public LocationVO getLocation(long locationCode) {
		// TODO Auto-generated method stub
		return dao.getLocation(locationCode);
	}

}
