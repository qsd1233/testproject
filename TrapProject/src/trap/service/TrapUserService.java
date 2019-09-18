package trap.service;

import trap.model.TrapUserDTO;

public interface TrapUserService {
	public void createUser(TrapUserDTO user);
	public int idCheck(String userId);
	public int pwdCheck(String userPwd);
	public int emailCheck(String userEmail);
	public int nickCheck(String userNick);
	public TrapUserDTO loginSelect(String userId, String userPwd);
	public TrapUserDTO searchId(String userEmail);
	public TrapUserDTO selectEmail(String userId, String userEmail);
	public void sendEmail(TrapUserDTO user);
	public void randomPwd(String userPwd, String userId);
	public void userUpdate(String userPwd, String userAdd, String userPhone, String userEmail, String userNick, String userId);
}
