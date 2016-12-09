package tao.pms.controller;

import java.util.Locale;

import javax.annotation.Resource;
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

import tao.pms.service.account.ConsumptionService;

@Controller
public class MainController {

	@Autowired
	private ConsumptionService consumptionManager;
	
	@RequestMapping(value={"/"})
	public ModelAndView index(Model model,HttpServletRequest request){
		
	    //国际化 默认语言为中文
	    if(null==request.getSession().getAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME)){
	    	Locale locale = new Locale("zh", "CN"); 
	    	request.getSession().setAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME,locale); 
	    }
 
	   
        ModelAndView mav = new ModelAndView();

		if(null==request.getSession().getAttribute("LoginUser")){
			mav.setViewName("default.login");
		}else{
			mav.setViewName("default.layout");
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
			String[] arr=null;
			if(path!=null){
				arr=path.split("_");
			}
			//如果path为*_*格式，则映射到Tiles的*.*.do
			if(null!=arr&&arr.length==2)
				mav.setViewName(arr[1]+"."+arr[0]+".do");
			else
				mav.setViewName("default.layout");
			
			return mav;
    }
	    
}
