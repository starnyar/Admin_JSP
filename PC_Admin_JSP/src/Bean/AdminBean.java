package Bean;

public class AdminBean {
	private String name, id, phoneNum, remainedTime;
	private String password;
	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public AdminBean() {}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPhoneNum() {
		return phoneNum;
	}

	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}

	public String getRemainedTime() {
		return remainedTime;
	}

	public void setRemainedTime(String remainedTime) {
		this.remainedTime = remainedTime;
	}
	
	
}
