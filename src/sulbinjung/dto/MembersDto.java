package sulbinjung.dto;

public class MembersDto {
	private String id, pwd, name, birth, gender, email, phone, regdate, isMember;
	
	public MembersDto() {}

	public MembersDto(String id, String pwd, String name, String birth, String email, String phone,
			String regdate, String gender, String isMember) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.birth = birth;
		this.email = email;
		this.phone = phone;
		this.regdate = regdate;
		this.gender = gender;
		this.isMember = isMember;
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

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getIsMember() {
		return isMember;
	}

	public void setIsMember(String isMember) {
		this.isMember = isMember;
	}
}
