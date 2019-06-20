package spring.biz.subcategory.vo;

public class SubCategoryVO {
	
	public int subcategorycode;
	public int categorycode;
	public String subjectname;
	
	public SubCategoryVO() {
		super();
	}

	public SubCategoryVO(int subcategorycode, int categorycode, String subjectname) {
		super();
		this.subcategorycode = subcategorycode;
		this.categorycode = categorycode;
		this.subjectname = subjectname;
	}

	public int getSubcategorycode() {
		return subcategorycode;
	}

	public void setSubcategorycode(int subcategorycode) {
		this.subcategorycode = subcategorycode;
	}

	public int getCategorycode() {
		return categorycode;
	}

	public void setCategorycode(int categorycode) {
		this.categorycode = categorycode;
	}

	public String getSubjectname() {
		return subjectname;
	}

	public void setSubjectname(String subjectname) {
		this.subjectname = subjectname;
	}
	
	
}
