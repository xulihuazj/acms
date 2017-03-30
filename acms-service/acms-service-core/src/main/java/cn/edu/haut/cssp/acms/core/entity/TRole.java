package cn.edu.haut.cssp.acms.core.entity;

import java.beans.Transient;
import java.io.Serializable;

/**
 * 系统角色实体映射类
 * Description:
 * @author: xulihua
 * @date: 2017年1月18日下午3:43:25
 * @note
 */
public class TRole implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	/**
	 * 编号，主键，自增
	 */
	private Long id;
	
	/**
	 * 用户名
	 */
	private String name;
	
	/**
	 * 角色类型  1-系统角色；2-普通用户
	 */
	private Integer type;
	
	/**
	 * 备注
	 */
	private String note;
	
	/**
	 * 用户是否拥有该角色
	 */
	private boolean checkFlag = false;
	
	
	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}
	
	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	@Transient
	public boolean isCheckFlag() {
		return checkFlag;
	}

	public void setCheckFlag(boolean checkFlag) {
		this.checkFlag = checkFlag;
	}

	/**
	 * 角色类型定义
	 * Description:
	 * @author: xulihua
	 * @date: 2017年3月24日下午9:59:41
	 * @note
	 */
	public enum ENUM_ROLE_TYPE {
		/**
		 * 1-系统角色
		 */
		systemRole(1),
		/**
		 * 2-普通角色
		 */
		consumerRole(2);

		public Integer value;
		
		private ENUM_ROLE_TYPE(Integer value) {
			this.value = value;
		}
	}
}