package tao.pms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

	@RequestMapping(value={"/"})
	public ModelAndView index(Model model){
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("default.layout");
		return mav;
	}
	
	@RequestMapping(value={"/show_user"})
	public ModelAndView consumption(Model model){
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user.show.do");
		return mav;
	}
	
	@RequestMapping(value={"/edit_user"})
	public ModelAndView consumptionForm(Model model){
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user.edit.do");
		return mav;
	}
}
