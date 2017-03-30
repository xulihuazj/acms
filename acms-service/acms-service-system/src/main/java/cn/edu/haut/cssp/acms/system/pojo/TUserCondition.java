package cn.edu.haut.cssp.acms.system.pojo;

import java.util.List;

import cn.edu.haut.cssp.acms.core.entity.TUser;


/**
 * 包装类型,将来用于从页面传到Action、service、dao
 * Description:
 * @project:acms-service-system
 * @author: xulihua
 * @date: 2017年3月25日下午11:05:50
 * @note:
 */
public class TUserCondition {

	/**
	 * 用户信息
	 */
	private TUser user;
	
	/**
	 * 自定义的user扩展对象
	 */
	private TUserExtend userExtend;
	
	/**
	 * 用户id的集合
	 */
	private List<Long> ids;

	public TUser getUser() {
		return user;
	}

	public void setUser(TUser user) {
		this.user = user;
	}

	public TUserExtend getUserExtend() {
		return userExtend;
	}

	public void setUserExtend(TUserExtend userExtend) {
		this.userExtend = userExtend;
	}

	public List<Long> getIds() {
		return ids;
	}

	public void setIds(List<Long> ids) {
		this.ids = ids;
	}
	
}
