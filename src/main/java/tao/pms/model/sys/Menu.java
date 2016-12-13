package tao.pms.model.sys;

import tao.pms.model.base.BaseObject;
/**
 * 系统菜单
 *
 */
public class Menu extends BaseObject{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 7112484190190832153L;
	
	  private String type;//菜单类型：1菜单树    2普通功能
	  private String logo;//菜单logo
	  private String url;//菜单路径
	  private String enname;//菜单英文名称
	  private String cnname;//菜单中文名称
	  
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getLogo() {
		return logo;
	}
	public void setLogo(String logo) {
		this.logo = logo;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getEnname() {
		return enname;
	}
	public void setEnname(String enname) {
		this.enname = enname;
	}
	public String getCnname() {
		return cnname;
	}
	public void setCnname(String cnname) {
		this.cnname = cnname;
	}
	@Override
	public String toString() {
		return "Menu [type=" + type + ", logo=" + logo + ", url=" + url + ", enname=" + enname + ", cnname=" + cnname
				+ "]";
	}
	  
}
