package tao.pms.model.account;

import java.util.Date;

import tao.pms.model.base.BaseCriteria;

public class ConsumptionCriteria extends BaseCriteria{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 509624291914099745L;
	
	private String amountStart; //支出金额
	private String amountEnd; //支出金额
	private String amount; //支出金额
	
	private Date timeStart;//支出时间
	private Date timeEnd;//支出时间
	
	private String cause; //支出原因
	private String consumer; //支出人
	
	public String getAmountStart() {
		return amountStart;
	}
	public void setAmountStart(String amountStart) {
		this.amountStart = amountStart;
	}
	public String getAmountEnd() {
		return amountEnd;
	}
	public void setAmountEnd(String amountEnd) {
		this.amountEnd = amountEnd;
	}
	public Date getTimeStart() {
		return timeStart;
	}
	public void setTimeStart(Date timeStart) {
		this.timeStart = timeStart;
	}
	public Date getTimeEnd() {
		return timeEnd;
	}
	public void setTimeEnd(Date timeEnd) {
		this.timeEnd = timeEnd;
	}
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
