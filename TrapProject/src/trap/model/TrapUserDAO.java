package trap.model;

public interface TrapUserDAO {
	public void insertUser(TrapUserDTO user);
	public int idCheck(String userId);
	public int pwdCheck(String userPwd);
	public int emailCheck(String userEmail);
	public int nickCheck(String userNick);
	public TrapUserDTO loginSelect(String userId, String userPwd);
	public TrapUserDTO searchId(String userEmail);
	public TrapUserDTO selectEmail(String userId, String userEmail);
	public void randomPwd(String userPwd, String userId);
	public void userUpdate(String userPwd,String userAdd1,String userAdd2,String userAdd3,int userAddnum,String userPhone,String userEmail,String userNick,String userId);
}
