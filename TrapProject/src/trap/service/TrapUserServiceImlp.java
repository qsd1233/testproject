package trap.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import trap.model.TrapUserDAO;
import trap.model.TrapUserDTO;

@Service
public class TrapUserServiceImlp implements TrapUserService{
	
	@Autowired
	private TrapUserDAO trapUserDao;
	
	@Override
	public void createUser(TrapUserDTO user) {
		trapUserDao.insertUser(user);
	}
	
}
