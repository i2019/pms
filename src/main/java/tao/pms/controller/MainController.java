package tao.pms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping(value={"/"})
	public String index(Model model){
		
		return "WEB-INF/pages/index.jsp";
	}

}
