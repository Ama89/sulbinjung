package sulbinjung.dto;

public class NoticeDto {

	private int num,hit;
	private String title, adminjob, writedate, contents, orgFileName, saveFileName, adminId;

	public NoticeDto() {}

	public NoticeDto(int num, int hit, String title, String adminjob, String writedate, String contents,
			String orgFileName, String saveFileName, String adminId) {
		super();
		this.num = num;
		this.hit = hit;
		this.title = title;
		this.adminjob = adminjob;
		this.writedate = writedate;
		this.contents = contents;
		this.orgFileName = orgFileName;
		this.saveFileName = saveFileName;
		this.adminId = adminId;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
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

	public String getOrgFileName() {
		return orgFileName;
	}

	public void setOrgFileName(String orgFileName) {
		this.orgFileName = orgFileName;
	}

	public String getSaveFileName() {
		return saveFileName;
	}

	public void setSaveFileName(String saveFileName) {
		this.saveFileName = saveFileName;
	}

	public String getAdminId() {
		return adminId;
	}

	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
}
