package tao.pms.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;
import tao.pms.model.user.User;
import tao.pms.model.user.UserCriteria;
import tao.pms.model.user.UserResult;
import tao.pms.service.user.UserService;

@Controller
public class MainController extends BaseController{

	@Autowired
	private UserService userService;
	  
	private UserCriteria userCriteria=new UserCriteria();
	private UserResult userResult=new UserResult();
	
	@RequestMapping(value={"/"})
	public ModelAndView index(Model model,HttpServletRequest request){
		
		List<String> menus=new ArrayList<String>();
		for(int i=1;i<20;i++){
			menus.add(i+"Menu");
		}
		model.addAttribute("menus", menus);
		
	    //国际化 默认语言为中文
	    if(null==request.getSession().getAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME)){
	    	Locale locale = new Locale("zh", "CN"); 
	    	request.getSession().setAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME,locale); 
	    }

        ModelAndView mav = new ModelAndView();
        mav.addObject(model);
        boolean logined=false;
		if(null==request.getSession().getAttribute("LoginUser")){
			//为了方便开发，去掉验证码验证
			String k = "1";//(String) request.getSession().getAttribute(com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY);
			String r = "1";//request.getParameter("r");
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
							logined=true;
							mav.addObject("captcha", "true");			
						}
					}
				}
			}
			
		}else{
			logined=true;
		}
		if(logined){
			mav.setViewName("default.layout");
		}else{
	        mav.setViewName("default.login"); 
		}
		return mav;
	}
	    
    @RequestMapping(value="/lang", method = {RequestMethod.GET})
    public ModelAndView lang(HttpServletRequest request,Model model
    		, @RequestParam(value="langType", defaultValue="zh") String langType
    		, @RequestParam(value="path",required=false) String path
    		){
         	
			if(langType.equals("zh")){
	            Locale locale = new Locale("zh", "CN"); 
	            request.getSession().setAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME,locale); 
	        }
	        else if(langType.equals("en")){
	            Locale locale = new Locale("en", "US"); 
	            request.getSession().setAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME,locale);
	        }
	        else 
	            request.getSession().setAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME,LocaleContextHolder.getLocale());

			ModelAndView mav = new ModelAndView();
			/*
			String[] arr=null;
			if(path!=null){
				arr=path.split("_");
			}
			//如果path为*_*格式，则映射到Tiles的*.*.do
			if(null!=arr&&arr.length==2)
				mav.setViewName(arr[1].replace(" ", "")+"."+arr[0].replace(" ", "")+".do");
			else*/
			mav.setViewName("default.layout");
			
			return mav;
    }
	    
}
