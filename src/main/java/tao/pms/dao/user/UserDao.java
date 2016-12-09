package tao.pms.dao.user;

import tao.pms.dao.base.BaseDao;
import tao.pms.model.user.User;
import tao.pms.model.user.UserCriteria;

public interface UserDao extends BaseDao<User, UserCriteria>{
	User getByName(String name);
}
