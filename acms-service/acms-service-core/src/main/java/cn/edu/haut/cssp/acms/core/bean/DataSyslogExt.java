package cn.edu.haut.cssp.acms.core.bean;

import java.io.Serializable;

/**
 * 日志条件查询封装类
 * Description:
 * @project:acms-service-core
 * @author: 徐礼华
 * @date: 2017年4月25日下午6:00:09
 * @note:
 */
public class DataSyslogExt implements Serializable{
	
	private static final long serialVersionUID = 1L;
	/**
	 * 关键字
	 */
	private String keyWord;
	/**
	 * 开始时间
	 */
	private String startTime;
	/**
	 * 结束时间
	 */
	private String endTime;
	/**
	 * 日志类型
	 */
	private Integer logType;
	
	public String getKeyWord() {
		return keyWord;
	}
	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public Integer getLogType() {
		return logType;
	}
	public void setLogType(Integer logType) {
		this.logType = logType;
	}
	
	
}
