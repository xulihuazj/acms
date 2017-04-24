package cn.edu.haut.cssp.acms.core.bean;

public class DataQueryESP {

	/**
	 * 人员姓名
	 */
	private String perName;
	
	/**
	 * 人员学号id
	 */
	private Long perId;
	
	/**
	 * 是否出入判断
	 */
	private Integer decide;

	public String getPerName() {
		return perName;
	}

	public void setPerName(String perName) {
		this.perName = perName;
	}

	public Long getPerId() {
		return perId;
	}

	public void setPerId(Long perId) {
		this.perId = perId;
	}

	public Integer getDecide() {
		return decide;
	}

	public void setDecide(Integer decide) {
		this.decide = decide;
	}
	
	
}
