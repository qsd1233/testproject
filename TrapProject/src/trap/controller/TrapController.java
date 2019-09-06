package trap.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import trap.model.TrapUserDTO;
import trap.service.TrapUserService;

@Controller
public class TrapController {
	
	@Autowired
	private TrapUserService trapUserService;
	
	@RequestMapping("/init")
	public String trapUserJoin(String userName, String userId, String userPwd, String userAdd, 
			String userPhone, String userEmail, String userNick, String userBirth, int userAge, Model model) {
		TrapUserDTO user = new TrapUserDTO(userAge, userName, userId, userPwd, userAdd, userPhone, userEmail, userNick, userBirth);
		model.addAttribute("user", user);
		return "/WEB-INF/trap/join.jsp";
	}
	@RequestMapping("/dbt")
	public String trapUserDB(TrapUserDTO user) {
		trapUserService.createUser(user);
		return "/WEB-INF/trap/success.jsp";
	}
	
}
