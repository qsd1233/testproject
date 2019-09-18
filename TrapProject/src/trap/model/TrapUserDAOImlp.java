package trap.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("userDao")
public class TrapUserDAOImlp implements TrapUserDAO{
	
	@Autowired
	private TrapUserMapper trapuserMapper;
	
	@Override
	public void insertUser(TrapUserDTO user) {trapuserMapper.insertUser(user);}
	@Override
	public int idCheck(String userId) {return trapuserMapper.idCheck(userId);}
	@Override
	public int emailCheck(String userEmail) {return trapuserMapper.emailCheck(userEmail);}
	@Override
	public int nickCheck(String userNick) {return trapuserMapper.nickCheck(userNick);}
	@Override
	public TrapUserDTO loginSelect(String userId, String userPwd) {return trapuserMapper.loginSelect(userId, userPwd);}
	@Override
	public int pwdCheck(String userPwd) {return trapuserMapper.pwdCheck(userPwd);}
	@Override
	public TrapUserDTO searchId(String userEmail) {return trapuserMapper.searchId(userEmail);}
	@Override
	public TrapUserDTO selectEmail(String userId, String userEmail) {return trapuserMapper.selectEmail(userId, userEmail);}
	@Override
	public void randomPwd(String userPwd, String userId) {trapuserMapper.randomPwd(userPwd, userId);}
	@Override
	public void userUpdate(String userPwd, String userAdd, String userPhone, String userEmail, String userNick, String userId) {
		trapuserMapper.userUpdate(userPwd, userAdd, userPhone, userEmail, userNick, userId);
	}

}
