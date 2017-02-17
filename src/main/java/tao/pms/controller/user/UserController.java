package tao.pms.controller.user;

import static org.springframework.web.bind.annotation.RequestMethod.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;

import tao.pms.controller.BaseController;
import tao.pms.model.user.User;
import tao.pms.model.user.UserCriteria;
import tao.pms.model.user.UserForm;
import tao.pms.model.user.UserResult;
import tao.pms.service.user.UserService;
import tao.pms.util.DateUtils;

@Controller
@RequestMapping("/user")  
public class UserController extends BaseController{
    @Autowired
    private UserService userService;
    
    private UserCriteria criteria=new UserCriteria();
    private UserResult userResult=new UserResult();
    private List<User> userList=new ArrayList<User>();
    
	@RequestMapping(value={"/show"})
	public ModelAndView show(Model model){
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user.show.do");
		mav.addObject(model);
		mav.addObject(criteria);
		return mav;
	}
	
	@RequestMapping(value={"/edit"})
	public ModelAndView edit(Model model, @RequestParam(value="id",required=false)String id){
		User user;
		if(StringUtils.hasText(id)){
			user=userService.getById(id);
		}else{
			user=new User();
		}
		UserForm userForm=new UserForm();
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user.edit.do");
		mav.addObject(user);
		return mav;
	}
	
	@RequestMapping(value={"/save"},method=POST)
	public String save(User user
			,@Valid UserForm userForm,Errors errors){
		if(errors.hasErrors()){
			return "edit";
		}
		if(null!=user&&StringUtils.isEmpty(user.getId())){
			/*
			if (StringUtils.hasText(user.getName())) {
				if(StringUtils.hasText(user.getPassword2())&&StringUtils.hasText(user.getPassword())
						&&user.getPassword().equals(user.getPassword2())){	
					userService.add(user);
				}else{
					
				}
			}else{
				
			}
			*/
			userService.add(user);
		}else if(null!=user&&StringUtils.hasText(user.getId())){
			userService.update(user);
		}
	
		return "redirect:/user/show";
	}
	
	@RequestMapping(value={"/data"})
	public void data(HttpServletRequest request,HttpServletResponse response,
			@RequestParam(value="name",required=false)String name,
			@RequestParam(value="id",required=false)String id){
		if(StringUtils.hasText(name)){
			criteria.setName(name);
		}
		if(StringUtils.hasText(id)){
			criteria.setId(id);
		}
		userResult=userService.getByCriteria(criteria);
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
	
	public UserCriteria getCriteria() {
		return criteria;
	}

	public void setCriteria(UserCriteria criteria) {
		this.criteria = criteria;
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
