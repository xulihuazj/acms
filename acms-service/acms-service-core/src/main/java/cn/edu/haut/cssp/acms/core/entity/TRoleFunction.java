package cn.edu.haut.cssp.acms.core.entity;



/**
 * 角色菜单关系表实体类
 * Description:
 * @author: xulihua
 * @date: 2017年3月11日下午3:58:59
 * @note
 */
public class TRoleFunction implements java.io.Serializable {

	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 1L;
	
	/**
	 * 编号，主键，自增
	 */
	private Long id;
	
	/**
	 * 角色id
	 */
	private Long roleId;
	
	/**
	 * 功能id
	 */
	private Long functionId;
	
	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	public Long getRoleId() {
		return roleId;
	}

	public void setRoleId(Long roleId) {
		this.roleId = roleId;
	}

	public Long getFunctionId() {
		return functionId;
	}

	public void setFunctionId(Long functionId) {
		this.functionId = functionId;
	}
}