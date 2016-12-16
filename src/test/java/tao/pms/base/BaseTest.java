package tao.pms.base;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class BaseTest<T> {
	private ApplicationContext ctx;

	/**
	 * 通过spring获取实例
	 * @param beanname
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public T init(String beanname) throws Exception {
		ctx = new FileSystemXmlApplicationContext("src/main/resources/applicationContext.xml");  
		//ctx = new FileSystemXmlApplicationContext("src/main/resources/main-servlet.xml");  
		return (T)ctx.getBean(beanname);
	}
	
	public Object initObj(String beanname) throws Exception {
		ctx = new FileSystemXmlApplicationContext("src/main/resources/applicationContext.xml");  
		return ctx.getBean(beanname);
	}
}
