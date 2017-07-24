package sulbinjung.dto;

public class NoticeDto {
	private int hit, fileSize;
	private String title, contents, regdate, orgFileName, saveFileName, adminId;
	
	public NoticeDto() {}

	public NoticeDto(int hit, int fileSize, String title, String contents, String regdate, String orgFileName,
			String saveFileName, String adminId) {
		super();
		this.hit = hit;
		this.fileSize = fileSize;
		this.title = title;
		this.contents = contents;
		this.regdate = regdate;
		this.orgFileName = orgFileName;
		this.saveFileName = saveFileName;
		this.adminId = adminId;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public int getFileSize() {
		return fileSize;
	}

	public void setFileSize(int fileSize) {
		this.fileSize = fileSize;
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

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
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
