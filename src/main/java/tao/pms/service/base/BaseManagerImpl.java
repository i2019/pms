package tao.pms.service.base;

import java.util.Date;

import tao.pms.model.base.BaseObject;

public class BaseManagerImpl {
	public BaseObject setCreateDefault(BaseObject record){
		if(null==record){
			record=new BaseObject();
		}
		
		if(record.getCreateTime()==null){
			record.setCreateTime(new Date());
		}
		if(record.getModifyTime()==null){
			record.setModifyTime(new Date());
		}
		return record;
	}
	
	public BaseObject setModifyDefault(BaseObject record){
		if(null==record){
			record=new BaseObject();
		}
		
		if(record.getModifyTime()==null){
			record.setModifyTime(new Date());
		}
		
		return record;
	}
}
