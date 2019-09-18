package trap.model;

import org.apache.ibatis.annotations.Param;

@MyTrap
public interface TrapUserMapper {
	public void insertUser(TrapUserDTO user);
	public int idCheck(String userId);
	public int pwdCheck(String userPwd);
	public int emailCheck(String userEmail);
	public int nickCheck(String userNick);
	public TrapUserDTO loginSelect(@Param("userId") String userId, @Param("userPwd") String userPwd);
	public TrapUserDTO searchId(String userEmail);
	public TrapUserDTO selectEmail(@Param("userId") String userId, @Param("userEmail") String userEmail);
	public void randomPwd(@Param("userPwd") String userPwd, @Param("userId") String userId);
	public void userUpdate(@Param("userPwd")String userPwd, @Param("userAdd")String userAdd, @Param("userPhone")String userPhone, @Param("userEmail")String userEmail, @Param("userNick")String userNick, @Param("userId")String userId);
}
