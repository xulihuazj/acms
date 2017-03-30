package cn.edu.haut.cssp.acms.core.entity;

import java.io.Serializable;

/**
 * 设备数据库实体类
 * Description:
 * @author: xulihua
 * @date: 2017年3月24日下午10:05:00
 * @note
 */
public class TDeviceInfo implements Serializable{

	private static final long serialVersionUID = 1L;
	
	/**
	 * 主键id,唯一，自增
	 */
	private Long id;
	
	/**
	 * IMEI
	 */
	private String IMEI;
	
	/**
	 * 设备类型
	 */
	private String deviceModel;
	
	/**
	 * 设备品牌
	 */
	private String deviceBrand;
	
	/**
	 * 设备状态,1-正常，2-暂停
	 */
	private Integer status;
	
	/**
	 * 激活时间
	 */
	private Long activateTime;
	
	/**
	 * 设备sn
	 */
	private String SN;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getIMEI() {
		return IMEI;
	}

	public void setIMEI(String iMEI) {
		IMEI = iMEI;
	}

	public String getDeviceModel() {
		return deviceModel;
	}

	public void setDeviceModel(String deviceModel) {
		this.deviceModel = deviceModel;
	}

	public String getDeviceBrand() {
		return deviceBrand;
	}

	public void setDeviceBrand(String deviceBrand) {
		this.deviceBrand = deviceBrand;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Long getActivateTime() {
		return activateTime;
	}

	public void setActivateTime(Long activateTime) {
		this.activateTime = activateTime;
	}

	public String getSN() {
		return SN;
	}

	public void setSN(String sN) {
		SN = sN;
	}
	
	/**
	 * 设备状态
	 * Description:
	 * @author: xulihua
	 * @date: 2017年3月24日下午10:17:37
	 * @note
	 */
	public enum enum_device_status {
		/**
		 * 正常
		 */
		normal(1),
		/**
		 * 停用
		 */
		suspend(2);
		
		public Integer value;
		
		private enum_device_status(Integer value) {
			this.value = value;
		}
	}

}
