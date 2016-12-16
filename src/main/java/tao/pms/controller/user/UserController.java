package tao.pms.controller.user;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import tao.pms.model.user.User;
import tao.pms.model.user.UserCriteria;
import tao.pms.model.user.UserResult;
import tao.pms.service.user.UserService;

@Controller
public class UserController {
    @Autowired
    private UserService userService;
    
    private UserCriteria userCriteria=new UserCriteria();
    private UserResult userResult=new UserResult();
    private List<User> userList=new ArrayList<User>();
    
	@RequestMapping(value={"/user_login"})
	public ModelAndView login(Model model,HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		
		//验证码
		String k = (String) request.getSession().getAttribute(com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY);
		String r = request.getParameter("r");
		if (k!=null&&k.equalsIgnoreCase(r)){
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			if(!StringUtils.isEmpty(username)&&!StringUtils.isEmpty(password)){
				userCriteria.setName(username);
				userCriteria.setPassword(password);
				userResult=userService.getByCriteria(userCriteria);
				if(null!=userResult){
					List<User> userList=userResult.getResultList();
					if(userList!=null&&userList.size()>0&&userList.get(0)!=null){
						request.getSession().setAttribute("LoginUser", userList.get(0));
						mav.setViewName("default.layout");
						mav.addObject("captcha", "true");
					}else
						mav.setViewName("default.login");
				}else
					mav.setViewName("default.login");
			}else{
				mav.setViewName("default.login");
			}
		}else{
			mav.setViewName("default.login");
		}
		
		return mav;
	}
	
	
	@RequestMapping(value={"/user_show"})
	public ModelAndView show(Model model){
		userResult=userService.getAll();
		if(null!=userResult){
			userList=userResult.getResultList();
			model.addAttribute("userList", userList);
			model.addAttribute("userResult", userResult);
		}

		ModelAndView mav = new ModelAndView();
		mav.setViewName("user.show.do");
		mav.addObject(model);
		
		return mav;
	}
	
	@RequestMapping(value={"/user_edit"})
	public ModelAndView edit(Model model){
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user.edit.do");
		return mav;
	}

	/**
	 * 测试练习 
	 * @param model
	 * @return
	 */
	@RequestMapping(value={"/user_a"})
	public ModelAndView a(Model model){
		
		//SearchGroup
		List<String> lists=new ArrayList<String>();
		for(int i=10;i<50;i++){
			lists.add(i+"group");
		}
		model.addAttribute("lists", lists);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user.a.do");
		mav.addObject(model);
		return mav;
	}

	public UserCriteria getUserCriteria() {
		return userCriteria;
	}

	public void setUserCriteria(UserCriteria userCriteria) {
		this.userCriteria = userCriteria;
	}


	public UserResult getUserResult() {
		return userResult;
	}


	public void setUserResult(UserResult userResult) {
		this.userResult = userResult;
	}


	public List<User> getUserList() {
		return userList;
	}


	public void setUserList(List<User> userList) {
		this.userList = userList;
	}
	
	
}
