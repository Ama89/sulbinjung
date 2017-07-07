package sulbinjung.dto;

public class FaqDto {
	private int num;
	private String title, contents;
	
	public FaqDto(){}
	
	public FaqDto(int num, String title, String contents) {
		super();
		this.num = num;
		this.title = title;
		this.contents = contents;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}	
}
