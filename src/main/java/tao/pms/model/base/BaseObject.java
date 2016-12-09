package tao.pms.model.base;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class BaseObject implements Serializable{
	
	  /**
	 * 
	 */
	private static final long serialVersionUID = 295190848291054257L;

	private String id;//默认id
	  
	private BigDecimal amount;//金额
	  
	private Date time;//发生时间
	private Date createTime;//创建时间
	private Date modifyTime;//修改时间
	  
	private String owner;//所有者
	private String createdBy;//创建者
	private String updatedBy;//修改者
	  
	private String cause;//原因
	private String remark;//备注
	private boolean delFlag;//删除标志

	public BigDecimal getAmount() {
		return amount;
	}
	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}
	public String getCause() {
		return cause;
	}
	public void setCause(String cause) {
		this.cause = cause;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Date getModifyTime() {
		return modifyTime;
	}
	public void setModifyTime(Date modifyTime) {
		this.modifyTime = modifyTime;
	}
	public String getOwner() {
		return owner;
	}
	public void setOwner(String owner) {
		this.owner = owner;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
	public String getUpdatedBy() {
		return updatedBy;
	}
	public void setUpdatedBy(String updatedBy) {
		this.updatedBy = updatedBy;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public boolean isDelFlag() {
		return delFlag;
	}
	public void setDelFlag(boolean delFlag) {
		this.delFlag = delFlag;
	}
	  
}
