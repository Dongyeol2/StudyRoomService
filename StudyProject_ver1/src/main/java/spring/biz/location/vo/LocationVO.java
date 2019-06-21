package spring.biz.location.vo;

public class LocationVO {
	public long locationcode;
	public String loc1;
	public String loc2;
	
	public LocationVO() {
		super();
	}

	public LocationVO(long locationcode, String loc1, String loc2) {
		super();
		this.locationcode = locationcode;
		this.loc1 = loc1;
		this.loc2 = loc2;
	}

	public long getLocationcode() {
		return locationcode;
	}

	public void setLocationcode(long locationcode) {
		this.locationcode = locationcode;
	}

	public String getLoc1() {
		return loc1;
	}

	public void setLoc1(String loc1) {
		this.loc1 = loc1;
	}

	public String getLoc2() {
		return loc2;
	}

	public void setLoc2(String loc2) {
		this.loc2 = loc2;
	}

}
