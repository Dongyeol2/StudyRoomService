package spring.biz.category.vo;

public class CategoryVO {
	public int category;
	public String categoryname;
	
	public CategoryVO() {
		super();
	}

	public CategoryVO(int category, String categoryname) {
		super();
		this.category = category;
		this.categoryname = categoryname;
	}

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}

	public String getCategoryname() {
		return categoryname;
	}

	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}
	
	

}
