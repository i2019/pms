package tao.pms.user;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import tao.pms.base.BaseTest;
import tao.pms.dao.account.ConsumptionDao;
import tao.pms.dao.user.UserDao;
import tao.pms.model.account.Consumption;
import tao.pms.model.user.User;
import tao.pms.model.user.UserCriteria;
import tao.pms.service.account.ConsumptionService;
import tao.pms.service.user.UserService;


public class UserTest extends BaseTest<UserDao> {

	@Resource
	private UserDao userDao;

	@Resource
	private UserService userManager;
	
	@Before
	public void setUp() throws Exception {
		userDao = init("userDao");
		userManager=(UserService)initObj("userManager");
	}

	@Test
	public void test() {
		for(int i=1;i<30;i++){
			User record=new User();
			record.setId(i+"a");
			record.setName(i+"a");
			record.setPassword(i+"a");
			record.setRemark(i+"a");
			record.setDelFlag(false);
			record.setModifyTime(new Date());
			userManager.add(record);
		}
		
		//record.setId("tt"+record.getName());
		//userDao.add(record);
		//record.setId("ttaa");
		//userDao.update(record);
		//userDao.remove("ttaa");
		//System.out.println(userDao.getById("1"));
		//System.out.println(userDao.getAllCount());
		//List<User> us=userDao.getAll();
		//UserCriteria criteria=new UserCriteria();
		//criteria.setName("LJT");
		//criteria.setPassword("pass");
		//List<User> us=userDao.getByCriteria(criteria);
		//System.out.println(userDao.getByCriteriaCount(criteria)+"----------");
		/*
		for (User user : us) {
			System.out.println(user+"==");
		}
		*/
		//User u=userManager.getById("1");
		//System.out.println("user==="+u);
	}

}
