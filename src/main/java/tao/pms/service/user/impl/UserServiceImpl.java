package tao.pms.service.user.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import tao.pms.dao.user.UserDao;
import tao.pms.model.constant.ReturnConstant;
import tao.pms.model.user.User;
import tao.pms.model.user.UserCriteria;
import tao.pms.model.user.UserResult;
import tao.pms.service.base.BaseManagerImpl;
import tao.pms.service.user.UserService;
import tao.pms.util.CommonUtil;

@Service
public class UserServiceImpl extends BaseManagerImpl implements UserService {

	@Resource
	private UserDao userDao;

	@Override
	public Integer add(User record) {
		if(!StringUtils.isEmpty(record)){
			if(StringUtils.isEmpty(record.getId())){
				record.setId(CommonUtil.generateUUID());
			}
			record=(User) setCreateDefault(record);
			return userDao.add(record);
		}
		return ReturnConstant.EMPTY;
	}

	@Override
	public Integer update(User record) {
		if(!StringUtils.isEmpty(record)&&StringUtils.hasText(record.getId())){
			record=(User) setModifyDefault(record);
			return userDao.update(record);
		}
		return ReturnConstant.EMPTY;
	}
	/**
	 * 物理删除
	 */
	@Override
	public Integer remove(String id) {
		return userDao.remove(id);
		
	}

	@Override
	public User getById(String id) {
		return userDao.getById(id);
	}

	@Override
	public UserResult getAll() {
		UserResult result=new UserResult();
		result.setResultList(userDao.getAll());
		result.setTotalCount(userDao.getAllCount());
		return result;
	}

	@Override
	public UserResult getByCriteria(UserCriteria criteria) {
		UserResult result=new UserResult();
		result.setResultList(userDao.getByCriteria(criteria));
		result.setTotalCount(userDao.getByCriteriaCount(criteria));
		return result;
	}

	@Override
	public List<String> getStrList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> getObjList() {
		// TODO Auto-generated method stub
		return null;
	}

}
