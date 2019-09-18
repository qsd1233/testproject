package trap.service;

import org.apache.commons.mail.HtmlEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import trap.model.TrapUserDAO;
import trap.model.TrapUserDTO;

@Service
public class TrapUserServiceImlp implements TrapUserService{
	
	@Autowired
	private TrapUserDAO trapUserDao;
	
	@Override
	public void createUser(TrapUserDTO user) {trapUserDao.insertUser(user);}
	@Override
	public int idCheck(String userId) {return trapUserDao.idCheck(userId);}
	@Override
	public int emailCheck(String userEmail) {return trapUserDao.emailCheck(userEmail);}
	@Override
	public int nickCheck(String userNick) {return trapUserDao.nickCheck(userNick);}
	@Override
	public TrapUserDTO loginSelect(String userId, String userPwd) {return trapUserDao.loginSelect(userId, userPwd);}
	@Override
	public int pwdCheck(String userPwd) {return trapUserDao.pwdCheck(userPwd);}
	@Override
	public TrapUserDTO searchId(String userEmail) {return trapUserDao.searchId(userEmail);}
	@Override
	public TrapUserDTO selectEmail(String userId, String userEmail) {return trapUserDao.selectEmail(userId, userEmail);}
	@Override
	public void sendEmail(TrapUserDTO user) {
		String charSet = "utf-8";
		String hostSMTP = "smtp.naver.com";
		String hostSMTPid = "qsd1233@naver.com";
		String hostSMTPpwd = "gkatlsdnd12!@";
		
		String fromEmail = "qsd1233@naver.com";
		String fromName = "test-email";
		String subject = "";
		String msg = "";
		
		subject = "임시비밀번호 입니다";
		msg += user.getUserId()+"님의 임시 비밀번호 입니다";
		msg += user.getUserPwd();
		
		String mail = user.getUserEmail();
		try {
			HtmlEmail email = new HtmlEmail();
			email.setDebug(true);
			email.setCharset(charSet);
			email.setSSL(true);
			email.setHostName(hostSMTP);
			email.setSmtpPort(587);
			
			email.setAuthentication(hostSMTPid, hostSMTPpwd);
			email.setTLS(true);
			email.addTo(mail, charSet);
			email.setFrom(fromEmail, fromName, charSet);
			email.setSubject(subject);
			email.setMsg(msg);
			email.send();
			
			
		} catch(Exception e){
			System.out.println("메일발송 실패 : " + e);
		}
	}
	@Override
	public void randomPwd(String userPwd, String userId) {
		userPwd = "";
		for (int i = 0; i < 12; i++) {
			userPwd +=(char)((Math.random()*26)+97);
		}
		trapUserDao.randomPwd(userPwd, userId);
		
	}
	@Override
	public void userUpdate(String userPwd, String userAdd, String userPhone, String userEmail, String userNick, String userId) {
		trapUserDao.userUpdate(userPwd, userAdd, userPhone, userEmail, userNick, userId);
	}
	
}
