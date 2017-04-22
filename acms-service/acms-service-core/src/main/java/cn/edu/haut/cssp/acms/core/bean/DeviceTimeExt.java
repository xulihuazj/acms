package cn.edu.haut.cssp.acms.core.bean;

import java.io.Serializable;

/**
 * 设备时间扩展类
 * Description:
 * @project:acms-service-core
 * @author: 徐礼华
 * @date: 2017年4月22日上午8:40:55
 * @note:
 */
public class DeviceTimeExt implements Serializable{

	/**
	 * 主键id,唯一，自增
	 */
	private Long id;
	
	/**
	 * 激活时间
	 */
	private String activateTime;
	
	/**
	 * 失效时间
	 */
	private String abateTime;
	
	/**
	 * 门禁开始时间
	 */
	private String timeStart;
	
	/**
	 * 门禁结束时间
	 */
	private String timeEnd;
	public String getTimeEnd() {
		return timeEnd;
	}
	public void setTimeEnd(String timeEnd) {
		this.timeEnd = timeEnd;
	}
	/**
	 * 设备状态,1-正常，2-暂停
	 */
	private Integer status;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getActivateTime() {
		return activateTime;
	}
	public void setActivateTime(String activateTime) {
		this.activateTime = activateTime;
	}
	public String getAbateTime() {
		return abateTime;
	}
	public void setAbateTime(String abateTime) {
		this.abateTime = abateTime;
	}
	public String getTimeStart() {
		return timeStart;
	}
	public void setTimeStart(String timeStart) {
		this.timeStart = timeStart;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}

}
