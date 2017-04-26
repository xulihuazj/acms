package cn.edu.haut.cssp.acms.core.bean;

public class DeviceLogExt {

	
	private Long id;
	
	private String deviceSite;
	
	private String content;
	
	private String cardSN;
	
	public String getCardSN() {
		return cardSN;
	}

	public void setCardSN(String cardSN) {
		this.cardSN = cardSN;
	}

	private String turnTime;

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

	public String getTurnTime() {
		return turnTime;
	}

	public void setTurnTime(String turnTime) {
		this.turnTime = turnTime;
	}
	
	
}
