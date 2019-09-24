package trap.model;

public class TrapUserDTO {
	private int userIdx,userAge,userAddnum;
	private String userName,userId,userPwd,userAdd1,userAdd2,userAdd3,userPhone,userEmail,userNick,userBirth;
	
	public TrapUserDTO() {}

	public TrapUserDTO(String userId, String userPwd) {
		this.userId = userId;
		this.userPwd = userPwd;
	}
	
	public TrapUserDTO(String userEmail) {
		this.userEmail = userEmail;
	}

	public TrapUserDTO(int userAge, int userAddnum, String userName, String userId, String userPwd,
			String userAdd1, String userAdd2, String userAdd3, String userPhone, String userEmail, String userNick,
			String userBirth) {
		this.userAge = userAge;
		this.userAddnum = userAddnum;
		this.userName = userName;
		this.userId = userId;
		this.userPwd = userPwd;
		this.userAdd1 = userAdd1;
		this.userAdd2 = userAdd2;
		this.userAdd3 = userAdd3;
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
	public String getUserPhone() {return userPhone;}
	public void setUserPhone(String userPhone) {this.userPhone = userPhone;}
	public String getUserEmail() {return userEmail;}
	public void setUserEmail(String userEmail) {this.userEmail = userEmail;}
	public String getUserNick() {return userNick;}
	public void setUserNick(String userNick) {this.userNick = userNick;}
	public String getUserBirth() {return userBirth;}
	public void setUserBirth(String userBirth) {this.userBirth = userBirth;}
	public int getUserAddnum() {return userAddnum;}
	public void setUserAddnum(int userAddnum) {this.userAddnum = userAddnum;}
	public String getUserAdd1() {return userAdd1;}
	public void setUserAdd1(String userAdd1) {this.userAdd1 = userAdd1;}
	public String getUserAdd2() {return userAdd2;}
	public void setUserAdd2(String userAdd2) {this.userAdd2 = userAdd2;}
	public String getUserAdd3() {return userAdd3;}
	public void setUserAdd3(String userAdd3) {this.userAdd3 = userAdd3;}
	
}
