package sulbinjung.dto;

public class AdminDto {
	private String id, pwd, name, job;
	
	public AdminDto() {}

	public AdminDto(int num, String id, String pwd, String name, String job) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.job = job;
	}
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}
	
	
}
