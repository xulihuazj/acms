package cn.edu.haut.cssp.acms.core.entity;

public class User {


	/**
	 * 资源id，主键，自增
	 */
	private Long id;

	/**
	 * 用户名，不可为空
	 */
	private String userName;

	/**
	 * 密码值SHA1后的小写16进制字符串
	 */
	private String password;

	/**
	 * 1-超级管理员；2-普通管理员
	 */
	private Integer type;
	

	/**
	 * 手机号
	 */
	private String mobile;
	
	/**
	 * 1-正常；2-停用 ；-1 - 删除； 默认 ：1
	 */
	private Integer status;
	/**
	 * 操作时间
	 */
	private Long time;
	
	/**
	 * 备注
	 */
	private String note;
	
	/**
	 * 关联t_emm_ec_info中的c_code
	 */
	private String ecCode;
	
	/**
	 * 删除的标志 1-正常  2-已删除
	 */
	private Integer deleteFlag;
	
	/**
	 * 创建时间
	 */
	private Long createTime;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Long getTime() {
		return time;
	}

	public void setTime(Long time) {
		this.time = time;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public String getEcCode() {
		return ecCode;
	}

	public void setEcCode(String ecCode) {
		this.ecCode = ecCode;
	}

	public Integer getDeleteFlag() {
		return deleteFlag;
	}

	public void setDeleteFlag(Integer deleteFlag) {
		this.deleteFlag = deleteFlag;
	}

	public Long getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Long createTime) {
		this.createTime = createTime;
	}
	
}
