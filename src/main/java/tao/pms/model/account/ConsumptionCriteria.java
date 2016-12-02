package tao.pms.model.account;

import tao.pms.model.base.BaseCriteria;

public class ConsumptionCriteria extends BaseCriteria{
	
	private String amount; //支出金额
	private String cause; //支出原因
	private String consumer; //支出人
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getCause() {
		return cause;
	}
	public void setCause(String cause) {
		this.cause = cause;
	}
	public String getConsumer() {
		return consumer;
	}
	public void setConsumer(String consumer) {
		this.consumer = consumer;
	}
	
	
}
