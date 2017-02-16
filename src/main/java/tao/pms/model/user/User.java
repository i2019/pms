package tao.pms.model.user;

import tao.pms.model.base.BaseObject;

public class User extends BaseObject{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -8059899153310860188L;
	private String name;//操作员名称
	private String password;//密码
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	@Override
	public String toString() {
		return "User [name=" + name + ", password=" + password + "]";
	}
	
}