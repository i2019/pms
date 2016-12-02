package tao.pms.service.base;

import java.util.List;

public interface BaseService <T,R,C>{
	
	Integer add(T record);
	
	Integer update(T record);
	
	Integer remove(String id);
		
	T getById(String id);
	
	R getAll();
	
	R getByCriteria(C criteria);
	
	List<String> getStrList();
	List<T> getObjList();
}
