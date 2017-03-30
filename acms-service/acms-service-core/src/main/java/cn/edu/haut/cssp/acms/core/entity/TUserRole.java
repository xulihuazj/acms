package cn.edu.haut.cssp.acms.core.entity;

import java.io.Serializable;


/**
 * 用户-角色关联实体映射类
 * Description:
 * @author: xulihua
 * @date: 2017年1月18日下午3:41:05
 * @note
 */
public class TUserRole implements Serializable {

	private static final long serialVersionUID = 1L;
	
	/**
	 * 编号，主键，自增
	 */
	private Long id;
	
	/**
	 * 用户id
	 */
	private Long userId;
	
	/**
	 * 角色id
	 */
	private Long roleId;
	
	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}
	
	public Long getRoleId() {
		return roleId;
	}

	public void setRoleId(Long roleId) {
		this.roleId = roleId;
	}
}