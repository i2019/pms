package tao.pms.model.user;

import java.util.List;

import tao.pms.model.base.BaseCriteria;

public class UserCriteria extends BaseCriteria{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -9040042818093430675L;
	private String name;//操作员名称
	private List<String> nameList;

	private String password;//密码
	private String password2;//确认密码
	
	public String getPassword2() {
		return password2;
	}

	public void setPassword2(String password2) {
		this.password2 = password2;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<String> getNameList() {
		return nameList;
	}

	public void setNameList(List<String> nameList) {
		this.nameList = nameList;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
