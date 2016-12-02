package tao.pms.account.consumption;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import tao.pms.base.BaseTest;
import tao.pms.model.account.Consumption;
import tao.pms.service.account.ConsumptionService;


public class ConsumptionServiceTest extends BaseTest<ConsumptionService> {

	@Autowired
	private ConsumptionService consumptionService;
	
	@Before
	public void setUp() throws Exception {
		consumptionService = init("consumptionService");
	}

	@Test
	public void test() {
		Consumption record=new Consumption();
		
		System.out.println(consumptionService.add(record));
	}

}
