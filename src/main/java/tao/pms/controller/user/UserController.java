package tao.pms.controller.user;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;

import tao.pms.model.user.User;
import tao.pms.model.user.UserCriteria;
import tao.pms.model.user.UserResult;
import tao.pms.service.user.UserService;
import tao.pms.util.DateUtils;

@Controller
@RequestMapping("/user")  
public class UserController {
    @Autowired
    private UserService userService;
    
    private UserCriteria userCriteria=new UserCriteria();
    private UserResult userResult=new UserResult();
    private List<User> userList=new ArrayList<User>();
    
	@RequestMapping(value={"/show"})
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
	
	@RequestMapping(value={"/edit"})
	public ModelAndView edit(Model model, @RequestParam(value="id",required=false)String id){
		User user=userService.getById(id);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user.edit.do");
		mav.addObject(user);
		return mav;
	}

	@RequestMapping(value={"/data"})
	public void data(HttpServletResponse response){
		
		userResult=userService.getAll();
		Map<String,Object> resultMap = new HashMap<String, Object>();
		if(null!=userResult){
			resultMap.put("data", userResult);
		}
		ajaxResponse(response,JSON.toJSONStringWithDateFormat(resultMap, DateUtils.YYYYMMDD,SerializerFeature.WriteMapNullValue));
		
	}
	
	public void ajaxResponse(HttpServletResponse response,String text) {
		try {
			response.getWriter().print(text);
			response.getWriter().flush();
		} catch (Exception e) {
			e.printStackTrace();
		}
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
