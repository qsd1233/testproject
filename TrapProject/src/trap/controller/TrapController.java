package trap.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import trap.model.NoticeDTO;
import trap.model.StoryDTO;
import trap.model.TrapUserDTO;
import trap.service.TrapBoardService;
import trap.service.TrapUserService;

@Controller
public class TrapController {
	
	@Autowired
	private TrapUserService trapUserService;
	@Autowired
	private TrapBoardService trapBoardService;
	
	@RequestMapping("/init")
	public String trapUserJoin(String userName, String userId, String userPwd, String userAdd1,String userAdd2,String userAdd3, 
			String userPhone, String userEmail, String userNick, String userBirth, int userAge,int userAddnum, Model model) {
		TrapUserDTO user = new TrapUserDTO(userAge, userAddnum, userName, userId, userPwd, userAdd1, userAdd2, userAdd3, userPhone, userEmail, userNick, userBirth);		
		model.addAttribute("user", user);
		return "/WEB-INF/trap/join.jsp";
	}
	@RequestMapping("/dbt")
	public String trapUserDB(TrapUserDTO user) {
		trapUserService.createUser(user);
		return "/WEB-INF/trap/success.jsp";
	}
	
	@RequestMapping("/idck")
	@ResponseBody
	public Map<Object, Object> idCheck(@RequestBody String userId) {
		int count = 0;
		Map<Object, Object> map = new HashMap<Object, Object>();
		count = trapUserService.idCheck(userId);
		map.put("cnt", count);
		return map;
	}
	@RequestMapping("/pwdck")
	@ResponseBody
	public Map<Object, Object> pwdCheck(@RequestBody String userPwd){
		int count = 0;
		Map<Object, Object> map = new HashMap<Object, Object>();
		count = trapUserService.pwdCheck(userPwd);
		map.put("cnt", count);
		return map;
	}
	@RequestMapping("/emailck")
	@ResponseBody
	public Map<Object, Object> emailCheck(@RequestBody String userEmail) {
		int count = 0;
		Map<Object, Object> map = new HashMap<Object, Object>();
		
		count = trapUserService.emailCheck(userEmail);
		map.put("cnt", count);
		return map;
	}
	@RequestMapping("/nickck")
	@ResponseBody
	public Map<Object, Object> nickCheck(@RequestBody String userNick) {
		int count = 0;
		Map<Object, Object> map = new HashMap<Object, Object>();
		
		count = trapUserService.nickCheck(userNick);
		map.put("cnt", count);
		return map;
	}
	@RequestMapping("/login")
	public ModelAndView login(String userId, String userPwd, HttpSession session, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("/WEB-INF/trap/menu.jsp");
		TrapUserDTO user = trapUserService.loginSelect(userId, userPwd);
		session.setAttribute("user", user);
		return mav;
	}
	@RequestMapping("/userseid")
	public String searchId(String userEmail, Model model) {
		TrapUserDTO user = trapUserService.searchId(userEmail);
		model.addAttribute("user",user);
		return "/WEB-INF/trap/searchid.jsp";
	}
	@RequestMapping("/usersepwd")
	public String searchPwd(String userId, String userEmail, String userPwd, Model model, HttpSession session) {
		trapUserService.randomPwd(userPwd, userId);
		TrapUserDTO user = trapUserService.selectEmail(userId, userEmail);
		model.addAttribute("user", user);
		return "/WEB-INF/trap/searchpwd.jsp";
	}
	@RequestMapping("/sendemail")
	public String sendEmail(TrapUserDTO user, Model model) {
		trapUserService.sendEmail(user);
		model.addAttribute("userEmail", user);
		return "/WEB-INF/trap/sendgo.jsp";
	}
	@RequestMapping("/userupdate")
	public String userUpdate() {
		return "/WEB-INF/trap/userupdate.jsp";
	}
	@RequestMapping("/goupdate")
	public String goUpdate(String userPwd, String userAdd1,String userAdd2,String userAdd3,int userAddnum, String userPhone, String userEmail, String userNick, String userId, Model model) {
		trapUserService.userUpdate(userPwd, userAdd1, userAdd2, userAdd3, userAddnum, userPhone, userEmail, userNick, userId);
		return "/WEB-INF/trap/updategood.jsp";
	}
	@RequestMapping("/not")
	public String noticeList(String userId, String userPwd, Model model) {
		List<NoticeDTO> nott = trapBoardService.noticeAll();
		model.addAttribute("notice", nott);
		return "/WEB-INF/trap/notice.jsp";
	}
	@RequestMapping("/story")
	public String storyList(Model model) {
		List<StoryDTO> story = trapBoardService.storyAll();
		model.addAttribute("story", story);
		return "/WEB-INF/trap/story.jsp";
	}
		
	@RequestMapping("/nread")
	public String noticeRead(int nId, Model model) {
		NoticeDTO read = trapBoardService.noticeOne(nId);
		model.addAttribute("read", read);
		return "/WEB-INF/trap/noticeread.jsp";
	}
	@RequestMapping("/updateback")
	public String upDateback() {
		return "/WEB-INF/trap/login.jsp";
	}
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "/WEB-INF/trap/menu.jsp";
	}
	@RequestMapping("/main")
	public String mian() {
		return "/WEB-INF/trap/menu.jsp";
	}
	@RequestMapping("/join")
	public String join() {
		return "/WEB-INF/trap/trapjoin.jsp";
	}
	@RequestMapping("/back")
	public String back() {
		return "/WEB-INF/trap/menu.jsp";
	}
}
