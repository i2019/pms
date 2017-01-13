package tao.pms.account.consumption;

import javax.annotation.Resource;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import tao.pms.base.BaseTest;
import tao.pms.dao.account.ConsumptionDao;
import tao.pms.model.account.Consumption;
import tao.pms.service.account.ConsumptionService;


public class ConsumptionTest extends BaseTest<ConsumptionDao> {

	@Resource
	private ConsumptionDao consumptionDao;

	@Autowired
	private ConsumptionService consumptionService;
	
	@Before
	public void setUp() throws Exception {
		consumptionDao = init("consumptionDao");
		consumptionService=(ConsumptionService)initObj("consumptionService");
	}

	@Test
	public void test() {
		Consumption record=new Consumption();
		record.setId(System.currentTimeMillis()+"Test");
		System.out.println(consumptionService.add(record));
		record.setId(System.currentTimeMillis()+"Test");
		System.out.println(consumptionDao.add(record));
	}

}

