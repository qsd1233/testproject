package trap.model;

public class TrapUserDTO {
	private int userIdx,userAge;
	private String userName,userId,userPwd,userAdd,userPhone,userEmail,userNick,userBirth;
	
	public TrapUserDTO() {
	}

	public TrapUserDTO(String userId, String userPwd) {
		this.userId = userId;
		this.userPwd = userPwd;
	}
	
	public TrapUserDTO(String userEmail) {
		this.userEmail = userEmail;
	}

	public TrapUserDTO(int userAge, String userName, String userId, String userPwd, String userAdd,
			String userPhone, String userEmail, String userNick, String userBirth) {
		this.userAge = userAge;
		this.userName = userName;
		this.userId = userId;
		this.userPwd = userPwd;
		this.userAdd = userAdd;
		this.userPhone = userPhone;
		this.userEmail = userEmail;
		this.userNick = userNick;
		this.userBirth = userBirth;
	}

	public int getUserIdx() {return userIdx;}
	public void setUserIdx(int userIdx) {this.userIdx = userIdx;}
	public int getUserAge() {return userAge;}
	public void setUserAge(int userAge) {this.userAge = userAge;}
	public String getUserName() {return userName;}
	public void setUserName(String userName) {this.userName = userName;}
	public String getUserId() {return userId;}
	public void setUserId(String userId) {this.userId = userId;}
	public String getUserPwd() {return userPwd;}
	public void setUserPwd(String userPwd) {this.userPwd = userPwd;}
	public String getUserAdd() {return userAdd;}
	public void setUserAdd(String userAdd) {this.userAdd = userAdd;}
	public String getUserPhone() {return userPhone;}
	public void setUserPhone(String userPhone) {this.userPhone = userPhone;}
	public String getUserEmail() {return userEmail;}
	public void setUserEmail(String userEmail) {this.userEmail = userEmail;}
	public String getUserNick() {return userNick;}
	public void setUserNick(String userNick) {this.userNick = userNick;}
	public String getUserBirth() {return userBirth;}
	public void setUserBirth(String userBirth) {this.userBirth = userBirth;}
}
