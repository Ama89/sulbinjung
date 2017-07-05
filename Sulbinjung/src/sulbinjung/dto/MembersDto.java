package sulbinjung.dto;

public class MembersDto {
	private int num;
	private String id, pwd, name, birth, phone, email, regdate;
	private boolean isMan, isMember;
	
	public MembersDto() {}

	public MembersDto(int num, String id, String pwd, String name, String birth, String phone, String email,
			String regdate, boolean isMan, boolean isMember) {
		super();
		this.num = num;
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.birth = birth;
		this.phone = phone;
		this.email = email;
		this.regdate = regdate;
		this.isMan = isMan;
		this.isMember = isMember;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
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

	public boolean isMan() {
		return isMan;
	}

	public void setMan(boolean isMan) {
		this.isMan = isMan;
	}

	public boolean isMember() {
		return isMember;
	}

	public void setMember(boolean isMember) {
		this.isMember = isMember;
	}
}
