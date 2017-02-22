package tao.pms.service.account.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import tao.pms.dao.account.ConsumptionDao;
import tao.pms.model.account.Consumption;
import tao.pms.model.account.ConsumptionCriteria;
import tao.pms.model.account.ConsumptionResult;
import tao.pms.model.constant.ReturnConstant;
import tao.pms.service.account.ConsumptionService;
import tao.pms.service.base.BaseManagerImpl;
import tao.pms.util.CommonUtil;

@Service("consumptionService")
public class ConsumptionServiceImpl extends BaseManagerImpl implements ConsumptionService {

	@Resource
	private ConsumptionDao consumptionDao;
	
	@Override
	public Integer add(Consumption record) {

		if(!StringUtils.isEmpty(record)){
			if(StringUtils.isEmpty(record.getId())){
				record.setId(CommonUtil.generateUUID());
			}
			return consumptionDao.add(record);
		}

		return ReturnConstant.EMPTY;
	}

	@Override
	public Integer update(Consumption record) {
		if(!StringUtils.isEmpty(record)&&StringUtils.hasText(record.getId())){
			record=(Consumption) setModifyDefault(record);
			return consumptionDao.update(record);
		}
		return ReturnConstant.EMPTY;
	}

	@Override
	public Integer remove(String id) {
		return consumptionDao.remove(id);
	}

	@Override
	public Consumption getById(String id) {
		return consumptionDao.getById(id);
	}

	@Override
	public ConsumptionResult getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ConsumptionResult getByCriteria(ConsumptionCriteria criteria) {
		ConsumptionResult result=new ConsumptionResult();
		result.setResultList(consumptionDao.getByCriteria(criteria));
		result.setTotalCount(consumptionDao.getByCriteriaCount(criteria));
		return result;
	}

	@Override
	public List<String> getStrList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Consumption> getObjList() {
		// TODO Auto-generated method stub
		return null;
	}

}
