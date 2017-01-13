package tao.pms.controller.account;

import static org.springframework.web.bind.annotation.RequestMethod.*;

import java.io.IOException;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import tao.pms.service.account.ConsumptionService;

@Controller
@RequestMapping("/money")
public class MoneyController {

	@Resource
	private ConsumptionService consumptionService;

	@RequestMapping(value = "/consumptions", method = GET)
	public String show(Model model) {

		return "registerForm";
	}

	@RequestMapping(value = "/{id}", method = GET)
	public String showSpitterProfile(@PathVariable String id, Model model) {

		return "consumption";
	}

	@RequestMapping(value = "/consume", method = POST)
	public String processRegistration(Errors errors)
			throws IllegalStateException, IOException {

		if (errors.hasErrors()) {
			return "consumptionForm";
		}

		return "redirect:/consume/";
	}

}
