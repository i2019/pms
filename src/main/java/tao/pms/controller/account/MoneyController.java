package tao.pms.controller.account;

import static org.springframework.web.bind.annotation.RequestMethod.*;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;

import tao.pms.controller.BaseController;
import tao.pms.model.account.ConsumptionCriteria;
import tao.pms.model.account.ConsumptionResult;
import tao.pms.service.account.ConsumptionService;
import tao.pms.util.DateUtils;

@Controller
@RequestMapping("/money")
public class MoneyController extends BaseController{

	@Resource
	private ConsumptionService consumptionService;

	private ConsumptionCriteria consumptionCriteria=new ConsumptionCriteria();
	private ConsumptionResult consumptionResult=new ConsumptionResult();
	
	@RequestMapping(value = "/consumptions")
	public ModelAndView show(Model model, RedirectAttributes redirectAttributes) {

		ModelAndView mav = new ModelAndView();

		@SuppressWarnings("unchecked")
		Map<String, String> editedMap = (Map<String, String>) redirectAttributes
				.getFlashAttributes();
		if (editedMap != null && editedMap.containsKey("editedConsum")) {
			String editedConsum = editedMap.get("editedConsum");
			mav.addObject(editedConsum);
		}

		mav.setViewName("money.consumptions.do");
		mav.addObject(model);
	
		return mav;
	}

	@RequestMapping(value={"/consumptions/data"})
	public void data(HttpServletRequest request,HttpServletResponse response,
			@RequestParam(value="name",required=false)String owner,
			@RequestParam(value="name",required=false)String cause,
			@RequestParam(value="name",required=false)String amountStart,
			@RequestParam(value="name",required=false)String amountEnd,
			@RequestParam(value="name",required=false)String timeStart,
			@RequestParam(value="id",required=false)String timeEnd){
		
		//组装查询条件
		if(StringUtils.hasText(owner)){
			consumptionCriteria.setOwner(owner);
		}else{
			consumptionCriteria.setOwner(null);
		}
		if(StringUtils.hasText(cause)){
			consumptionCriteria.setCause(cause);
		}else{
			consumptionCriteria.setCause(null);
		}
		
		consumptionResult=consumptionService.getByCriteria(consumptionCriteria);
		
		Map<String,Object> resultMap = new HashMap<String, Object>();
		if(null!=consumptionResult){
			resultMap.put("data", consumptionResult);
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
	
	@RequestMapping(value = "/consume", method = POST)
	public String processRegistration(Errors errors)
			throws IllegalStateException, IOException {

		if (errors.hasErrors()) {
			return "consumptionForm";
		}

		return "redirect:/consume/";
	}

}
