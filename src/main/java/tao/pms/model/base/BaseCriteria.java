package tao.pms.model.base;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class BaseCriteria implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 3015907371873514443L;

	/**
	 * 共有字段
	 */
	 private String remark;//备注

     private boolean delFlag;//删除标志
  
	 private String owner;//所有者
	 private List<String> ownerList;
	
     private String createdBy;//创建者
	 private List<String> createdByList;
		 
     private String updatedBy;//修改者
	 private List<String> updatedByList;
     
	 private Date createTimeBegin;//创建时间
	 private Date createTimeEnd;
	 private Date createTime;
	 
	 private Date modifyTimeBegin;//修改时间
	 private Date modifyTimeEnd;
	 private Date modifyTime;
	 
	 private Date occurrencedTimeBegin;//发生时间
	 private Date occurrencedTimeEnd; 
	 private Date occurrencedTime;
	 
	 private Date endTimeBegin;//结束时间
	 private Date endTimeEnd; 
	 private Date endTime;
	 
     public Date getCreateTimeBegin() {
		return createTimeBegin;
	 }

	public void setCreateTimeBegin(Date createTimeBegin) {
		this.createTimeBegin = createTimeBegin;
	}

	public Date getCreateTimeEnd() {
		return createTimeEnd;
	}

	public void setCreateTimeEnd(Date createTimeEnd) {
		this.createTimeEnd = createTimeEnd;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getModifyTimeBegin() {
		return modifyTimeBegin;
	}

	public void setModifyTimeBegin(Date modifyTimeBegin) {
		this.modifyTimeBegin = modifyTimeBegin;
	}

	public Date getModifyTimeEnd() {
		return modifyTimeEnd;
	}

	public void setModifyTimeEnd(Date modifyTimeEnd) {
		this.modifyTimeEnd = modifyTimeEnd;
	}

	public Date getModifyTime() {
		return modifyTime;
	}

	public void setModifyTime(Date modifyTime) {
		this.modifyTime = modifyTime;
	}

	public List<String> getOwnerList() {
		return ownerList;
	}

	public void setOwnerList(List<String> ownerList) {
		this.ownerList = ownerList;
	}

	public List<String> getCreatedByList() {
		return createdByList;
	}

	public void setCreatedByList(List<String> createdByList) {
		this.createdByList = createdByList;
	}

	public List<String> getUpdatedByList() {
		return updatedByList;
	}

	public void setUpdatedByList(List<String> updatedByList) {
		this.updatedByList = updatedByList;
	}
	public Date getOccurrencedTimeBegin() {
		return occurrencedTimeBegin;
	}

	public void setOccurrencedTimeBegin(Date occurrencedTimeBegin) {
		this.occurrencedTimeBegin = occurrencedTimeBegin;
	}

	public Date getOccurrencedTimeEnd() {
		return occurrencedTimeEnd;
	}

	public void setOccurrencedTimeEnd(Date occurrencedTimeEnd) {
		this.occurrencedTimeEnd = occurrencedTimeEnd;
	}

	public Date getEndTimeBegin() {
		return endTimeBegin;
	}

	public void setEndTimeBegin(Date endTimeBegin) {
		this.endTimeBegin = endTimeBegin;
	}

	public Date getEndTimeEnd() {
		return endTimeEnd;
	}

	public void setEndTimeEnd(Date endTimeEnd) {
		this.endTimeEnd = endTimeEnd;
	}

	public static String getAsc() {
		return ASC;
	}

	public void setMaxResults(Integer maxResults) {
		this.maxResults = maxResults;
	}

	public Date getEndTime() {
		return endTime;
	}
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	public String getOwner() {
		return owner;
	}
	public void setOwner(String owner) {
		this.owner = owner;
	}
	public Date getOccurrencedTime() {
		return occurrencedTime;
	}
	public void setOccurrencedTime(Date occurrencedTime) {
		this.occurrencedTime = occurrencedTime;
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
   
	/**
	 * 分页字段
	 */
	public static final String DESC = "desc";
	public static final String ASC = "asc";

	private Integer pageSize = 20;// 每页大小,default 20
	private Integer pageNum = 1;// 当前页,从0开始
	private Integer total = 0; // 记录总数
	@SuppressWarnings("unused")
	private Integer start = 0; // 开始
	private String sortBy=DESC;// 排序方式
	private boolean isNeedPage = true;// 是否需要分页标志,默认是需要分页
	@SuppressWarnings("unused")
	private Integer maxResults;
	private Integer skipResults;
	
	public static String getDesc() {
		return DESC;
	}

	public Integer getSkipResults() {
		if (isNeedPage) {
			return (getPageNum() - 1) * getPageSize();
		} else {
			return skipResults;
		}
	}
	
	public void setSkipResults(Integer skipResults) {
		this.skipResults = skipResults;
	}

	public Integer getMaxResults() {
		return this.getPageSize();
	}
	/**
	 * @return the pageSize
	 */
	public Integer getPageSize() {
		return pageSize;
	}

	/**
	 * @param pageSize
	 *            the pageSize to set
	 */
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	/**
	 * @return the pageNum
	 */
	public Integer getPageNum() {
		return pageNum;
	}

	/**
	 * @param pageNum
	 *            the pageNum to set
	 */
	public void setPageNum(Integer pageNum) {
		this.pageNum = pageNum;
	}

	/**
	 * @return the sortBy
	 */
	public String getSortBy() {
		return sortBy;
	}

	/**
	 * @param sortBy
	 *            the sortBy to set
	 */
	public void setSortBy(String sortBy) {
		this.sortBy = sortBy;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public Integer getTotal() {
		return total;
	}

	public boolean isNeedPage() {
		return isNeedPage;
	}

	public void setNeedPage(boolean isNeedPage) {
		this.isNeedPage = isNeedPage;
	}

	public void setStart(Integer start) {
		this.start = start;
	}

	// need pageNum, total, pageSize to calc start
	public Integer getStart() {

		if (pageNum <= 1) {
			return 0;
		}
		if (total > 0) {
			int totalPage = total % pageSize == 0 ? total / pageSize : total / pageSize + 1;

			if (pageNum >= totalPage) {
				pageNum = totalPage;
			}
		}

		return (pageNum - 1) * pageSize;
	}
}
