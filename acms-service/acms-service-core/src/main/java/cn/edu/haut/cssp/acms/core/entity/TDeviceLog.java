package cn.edu.haut.cssp.acms.core.entity;

import java.io.Serializable;

/**
 * 设备日志数据库实体类
 * Description:
 * @author: xulihua
 * @date: 2017年3月24日下午10:26:22
 * @note
 */
public class TDeviceLog implements Serializable {

	private static final long serialVersionUID = 1L;

	private Long id;
	
	private String deviceSite;
	
	private String content;
	
	private String cardSN;
	
	private Long turnTime;

	/**
	 * 进出类型
	 */
	private Integer turnType;
	
	public Integer getTurnType() {
		return turnType;
	}

	public void setTurnType(Integer turnType) {
		this.turnType = turnType;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDeviceSite() {
		return deviceSite;
	}

	public void setDeviceSite(String deviceSite) {
		this.deviceSite = deviceSite;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getCardSN() {
		return cardSN;
	}

	public void setCardSN(String cardSN) {
		this.cardSN = cardSN;
	}

	public Long getTurnTime() {
		return turnTime;
	}

	public void setTurnTime(Long turnTime) {
		this.turnTime = turnTime;
	}
	
}
