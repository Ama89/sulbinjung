package sulbinjung.dto;

public class NoticeDto {
	private int hit;
	private long fileSize;
	private String title, contents, regdate, orgFileName, saveFileName, adminId;
	
	public NoticeDto() {}

	public NoticeDto(String title, String contents, String regdate, int hit, String orgFileName,
			String saveFileName, int fileSize, String adminId) {
		super();
		this.title = title;
		this.contents = contents;
		this.regdate = regdate;
		this.hit = hit;
		this.orgFileName = orgFileName;
		this.saveFileName = saveFileName;
		this.fileSize = fileSize;		
		this.adminId = adminId;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public long getFileSize() {
		return fileSize;
	}

	public void setFileSize(long fileSize) {
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
