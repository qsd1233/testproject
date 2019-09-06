package trap.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("userDao")
public class TrapUserDAOImlp implements TrapUserDAO{
	
	@Autowired
	private TrapUserMapper trapuserMapper;
	
	@Override
	public void insertUser(TrapUserDTO user) {
		trapuserMapper.insertUser(user);
	}

}
