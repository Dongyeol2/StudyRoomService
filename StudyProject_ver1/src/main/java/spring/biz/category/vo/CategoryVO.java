package spring.biz.category.vo;

public class CategoryVO {
	public int categorycode;
	public String categoryname;
	
	public CategoryVO() {
		super();
	}

	public CategoryVO(int categorycode, String categoryname) {
		super();
		this.categorycode = categorycode;
		this.categoryname = categoryname;
	}

	public int getCategorycode() {
		return categorycode;
	}

	public void setCategorycode(int categorycode) {
		this.categorycode = categorycode;
	}

	public String getCategoryname() {
		return categoryname;
	}

	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}
	
	

}
