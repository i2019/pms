package tao.pms.dao.base;

import java.util.List;

public interface BaseDao <T,C>{
	/**
	 * 
	 * @param record
	 * @return
	 */
	Integer add(T record);
	
	 /**
     * 
     * @param record
     * @return 更新的行数
     */
    Integer update(T record);
    
    
	/**
	 * @param id
	 * @return 删除的行数
	 */
    Integer remove(String id);

    /**
     * 
     * @param id
     * @return
     */
	T getById(String id);
    

	/**
	 * 
	 * @return
	 */
    List<T> getAll();
    Integer getAllCount();
	
    /**
     * 
     * @param criteria
     * @return
     */
    List<T> getByCriteria(C criteria); 
    Integer getByCriteriaCount(C criteria);
	
}

