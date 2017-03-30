package cn.edu.haut.cssp.acms.log.entity;


import java.beans.Transient;
import java.io.Serializable;
import java.util.HashMap;
import com.xdja.platform.util.DateTimeUtil;

/**
 * 系统日志实体类
 * Description:
 * @author: xulihua
 * @date: 2017年1月18日下午4:06:23
 * @note
 */
public class SystemLog implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private Long id;
	
	private Long userId;
	
	private String userName;
	
	private String userIp;
	
	private String className;
	
	private String logContent;
	
	private Integer logLevel;
	
	private String methodInfo;
	
	private Long logTime;
	
	private Integer logType;
	
	private Integer modelType;
	
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
	
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	
	public String getUserIp() {
		return userIp;
	}

	public void setUserIp(String userIp) {
		this.userIp = userIp;
	}
	
	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}
	
	public String getLogContent() {
		return this.logContent;
	}

	public void setLogContent(String logContent) {
		this.logContent = logContent;
	}
	

	public Integer getLogLevel() {
		return this.logLevel;
	}

	public void setLogLevel(Integer logLevel) {
		this.logLevel = logLevel;
	}
	
	public String getMethodInfo() {
		return methodInfo;
	}

	public void setMethodInfo(String methodInfo) {
		this.methodInfo = methodInfo;
	}
	
	public Long getLogTime() {
		return this.logTime;
	}

	@Transient
	public String getLogTimeLable() {
		return DateTimeUtil.longToDateStr(logTime);
	}
	public void setLogTime(Long logTime) {
		this.logTime = logTime;
	}
	
	public Integer getLogType() {
		return this.logType;
	}

	public void setLogType(Integer logType) {
		this.logType = logType;
	}

	public Integer getModelType() {
		return modelType;
	}

	public void setModelType(Integer modelType) {
		this.modelType = modelType;
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
	 * 日志类型 枚举
	 * 
	 * Project Name：pms-service-oms-log-api
	 * ClassName：ENUM_LOG_TYPE
	 * Description：
	 * @author 马德成
	 * @date 2015-10-21
	 * note:
	 *
	 */
	public enum ENUM_LOG_TYPE {
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
		
		private ENUM_LOG_TYPE(Integer value) {
			this.value = value;
		}
	}
	
	/**
	 * 日志 功能模块 类型
	 * 
	 * Project Name：pms-service-oms-log-api
	 * ClassName：ENUM_LOG_MODEL_TYPE
	 * Description：
	 * @author 马德成
	 * @date 2015-10-21
	 * note:
	 *
	 */
	public enum ENUM_LOG_MODEL_TYPE {
		/**
		 * 客户管理类型
		 */
		customerManagerLog(1),
		/**
		 * 资产管理类型
		 */
		assetManagerLog(2),
		/**
		 * 芯片激活类型
		 */
		cardActivateMonitiorLog(3),
		/**
		 * 系统管理类型
		 */
		systemManagerLog(4);
		
		public int value;
		
		private ENUM_LOG_MODEL_TYPE(int value) {
			this.value = value;
		}

	}
	
	/**
	 * 日志级别
	 */
	public enum ENUM_LOG_LEVEL {
		
		//1-debug，2-info，3-warn，4-error',
		debug(1), info(2), warn(3), error(4), trace(5);
		
		public int value;
		
		private ENUM_LOG_LEVEL(int value) {
			this.value = value;
		}
	}
	
}