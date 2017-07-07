package sulbinjung.dto;

public class NoticeDto {
	private int num,adminnum,hit;
	private String title, adminjob, writedate, contents, filepath;
	
	public NoticeDto() {}

	public NoticeDto(int num, int adminnum, int hit, String title, String adminjob, String writedate, String contents,
			String filepath) {
		super();
		this.num = num;
		this.adminnum = adminnum;
		this.hit = hit;
		this.title = title;
		this.adminjob = adminjob;
		this.writedate = writedate;
		this.contents = contents;
		this.filepath = filepath;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getAdminnum() {
		return adminnum;
	}

	public void setAdminnum(int adminnum) {
		this.adminnum = adminnum;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAdminjob() {
		return adminjob;
	}

	public void setAdminjob(String adminjob) {
		this.adminjob = adminjob;
	}

	public String getWritedate() {
		return writedate;
	}

	public void setWritedate(String writedate) {
		this.writedate = writedate;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getFilepath() {
		return filepath;
	}

	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}
	
	
}
