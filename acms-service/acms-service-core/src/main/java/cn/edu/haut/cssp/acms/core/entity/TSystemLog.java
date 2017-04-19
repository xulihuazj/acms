package cn.edu.haut.cssp.acms.core.entity;


import java.beans.Transient;
import java.io.Serializable;
import java.util.HashMap;

/**
 * 系统日志实体类
 * Description:
 * @author: xulihua
 * @date: 2017年1月5日下午2:43:16
 */
public class TSystemLog implements Serializable{
	
	private static final long serialVersionUID = 1L;
	/**
	 * 主键
	 */
	private Long id;
	/**
	 * 用户id
	 */
	private Long userId;
	/**
	 * 用户名
	 */
	private String userName;
	/**
	 * 日志内容
	 */
	private String logContent;
	/**
	 * 产生日志的时间
	 */
	private Long logUploadTime;
	/**
	 * 日志类型
	 */
	private Integer logType;
	
	public Long getLogUploadTime() {
		return logUploadTime;
	}
	public void setLogUploadTime(Long logUploadTime) {
		this.logUploadTime = logUploadTime;
	}
	public Long getId() {
		return id;
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
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getLogContent() {
		return logContent;
	}
	public void setLogContent(String logContent) {
		this.logContent = logContent;
	}
	public Integer getLogType() {
		return logType;
	}
	public void setLogType(Integer logType) {
		this.logType = logType;
	}
	
	/**
	 *  日志类型 枚举
	 * Description:
	 * @author: xulihua
	 * @date: 2017年3月24日下午11:44:32
	 * @note
	 */
	public enum ENUM_SYSLOG_TYPE {
		/**
		 * 登录日志类型
		 */
		loginLog(1),
		/**
		 * 操作日志类型
		 */
		operateLog(2),
		/**
		 * 运行日志类型
		 */
		runtimeLog(3),
		/**
		 * 安全日志类型
		 */
		securityLog(4);
		
		
		public Integer value;
		
		private ENUM_SYSLOG_TYPE(Integer value) {
			this.value = value;
		}
	}
	
	@Transient
	public String getLogTypeLable() {
		
		HashMap<Integer,String> map = new HashMap<Integer, String>();
		map.put(1, "登录退出");
		map.put(2, "操作日志");
		map.put(3, "运行日志");
		map.put(4, "安全日志");
		return map.get(logType);
	}
	
	/**
	 * 日志 功能模块 类型
	 * Description:
	 * @project:acms-service-core
	 * @author: xulihua
	 * @date: 2017年3月25日上午11:27:35
	 * @note:
	 */
	public enum ENUM_LOG_MODEL_TYPE {
		/**
		 * 设备管理类型
		 */
		deviceManagerLog(1),
		/**
		 * 系统管理类型
		 */
		systemManagerLog(2);
		
		public int value;
		
		private ENUM_LOG_MODEL_TYPE(int value) {
			this.value = value;
		}

	}
	
	
}
