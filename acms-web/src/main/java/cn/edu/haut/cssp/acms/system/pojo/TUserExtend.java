package cn.edu.haut.cssp.acms.system.pojo;

import cn.edu.haut.cssp.acms.core.entity.TUser;

/**
 * TUser扩展类型
 * Description:
 * @project:acms-service-system
 * @author: xulihua
 * @date: 2017年3月25日下午11:09:46
 * @note:
 */
public class TUserExtend extends TUser{
	
	private static final long serialVersionUID = 1L;

	/**
	 * 扩展信息：note
	 */
	private String note;
	
	/**
	 * 扩展信息：微信
	 */
	private String wechat;

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public String getWechat() {
		return wechat;
	}

	public void setWechat(String wechat) {
		this.wechat = wechat;
	}
	
	
}
